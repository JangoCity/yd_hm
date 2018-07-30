package models

import (
	"fmt"
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
)

type Product struct {
	Id        int
	Category  string //分类
	Model     string //型号
	Name      string //名称
	Specal    string //规格
	Introduce string //产品介绍
	Fileinfo         //图片文件信息
	Link1     string //
	Link2     string //链接2
}

type Fileinfo struct {
	File_Id      string
	File_address string
}

//根据id获取产品
func GetProductById(id int) []Product {
	o := orm.NewOrm()
	var product []Product
	o.Raw("select *from `product` where id=?", id).QueryRows(&product)

	var maps []orm.Params
	for i := 0; i < len(product); i++ {
		//查询用户对应的角色
		o.Raw("SELECT file_id,file_address FROM `product` a inner join `file` b on a.file_id = b.id WHERE a.id = ?", product[i].Id).Values(&maps)
		product[i].Fileinfo.File_Id = maps[0]["file_id"].(string)
		product[i].Fileinfo.File_address = beego.AppConfig.String("domain") + maps[0]["file_address"].(string)
	}
	return product

}

//获得产品总记录数
func getProductNum() string {
	var num = "0"
	o := orm.NewOrm()
	o.Using("default")
	var maps []orm.Params
	num2, err := o.Raw("SELECT count(id) as num FROM `product`").Values(&maps)
	if err == nil && num2 > 0 {
		num = maps[0]["num"].(string)
	}
	return num
}
//获得产品分类总记录数
func getProducCategorytNum(category string) string {
	var num = "0"
	o := orm.NewOrm()
	o.Using("default")
	var maps []orm.Params
	num2, err := o.Raw("SELECT count(id) as num FROM `product` where category=?",category).Values(&maps)
	if err == nil && num2 > 0 {
		num = maps[0]["num"].(string)
	}
	return num
}

//产品,分页,分类
func GetProductByPage(pageNum, num int, category string) interface{} {
	o := orm.NewOrm()
	o.Using("default")
	var getinfo GetInfo
	var product []Product
	switch category {
	case "":
		getinfo.Pager.SumPage = getProductNum()
		o.Raw("select *from `product` ORDER BY id desc limit ?,?", (pageNum-1)*num, num).QueryRows(&product)
		break
	default:
		o.Raw("select *from `product` where category=? ORDER BY id desc limit ?,?", category, (pageNum-1)*num, num).QueryRows(&product)
		getinfo.Pager.SumPage = getProducCategorytNum(category)
	}
	var maps []orm.Params
	for i := 0; i < len(product); i++ {
		//查询用户对应的角色
		num, _ := o.Raw("SELECT file_id,file_address FROM `product` a inner join `file` b on a.file_id = b.id WHERE a.id = ?", product[i].Id).Values(&maps)
		if num > 0 {
			product[i].Fileinfo.File_Id = maps[0]["file_id"].(string)
			product[i].Fileinfo.File_address = beego.AppConfig.String("domain") + maps[0]["file_address"].(string)
		}
	}
	//data
	getinfo.Data = product
	//页码,页记录数,总记录数
	getinfo.Pager.ClientPage = pageNum
	getinfo.Pager.EveryPage = num

	return getinfo
}

//插入产品
func InsertProduct(category, model, name, specal, introduce, file_id, link1, link2 string) int {
	//初始化日期
	//publish_date = time.Now().Format("2006-01-02")//时间戳"2006-01-02 15:04:05"是参考格式,具体数字可变
	//判空前端做
	o := orm.NewOrm()
	o.Using("default")
	_, err := o.Raw("insert `product`(category,model,name,specal,introduce,file_id,link1,link2) value(?,?,?,?,?,?,?,?)", category, model, name, specal, introduce, file_id, link1, link2).Exec()
	if err == nil {
		return 1
	}
	fmt.Println("产品插入失败")
	return 0
}

//删除产品
func DeleteProductById(id string) int64 {
	var num int64 //返回影响的行数

	o := orm.NewOrm()
	o.Using("default")
	res, err := o.Raw("delete from `product` where id=?", id).Exec()
	//res,err := o.Raw("delete from `product` where id=?",id).Exec()
	if err == nil {
		num, _ = res.RowsAffected()
	}
	fmt.Println("产品信息删除失败")
	return num
}

//更新产品,注：提交相同数据返回行数为0
func UpdateProduct(id, category, model, name, specal, introduce, file_id, link1, link2 string) int64 {
	var num int64 //返回影响的行数
	//判空前端做
	o := orm.NewOrm()
	o.Using("default")
	res, err := o.Raw("update `product` set category=?,model=?,name=?,specal=?,introduce=?,file_id=?,link1=?,link2=? where id=?", category, model, name, specal, introduce, file_id, link1, link2, id).Exec()
	if err == nil {
		num, _ = res.RowsAffected()
	}
	fmt.Println("产品更新失败")
	return num
}

//产品搜索
func SearchProduct(pageNum, num int, key string) interface{} {
	o := orm.NewOrm()
	o.Using("default")
	var getinfo GetInfo
	var product []Product
	switch key {
	case "":
		o.Raw("select *from `product` limit ?,?", (pageNum-1)*num, num).QueryRows(&product)
		break
	default:
		o.Raw("select *from `product` where `name` like '%"+key+"%' ORDER BY id desc limit ?,?", (pageNum-1)*num, num).QueryRows(&product)
	}
	//data
	getinfo.Data = product
	//页码,页记录数,总记录数
	getinfo.Pager.ClientPage = pageNum
	getinfo.Pager.EveryPage = num
	getinfo.Pager.SumPage = getProductNum()
	return getinfo
}

func init() {
	// 需要在init中注册定义的model
	orm.RegisterModel(new(Product))
}

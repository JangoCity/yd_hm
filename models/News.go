package models

import (
	"github.com/astaxie/beego/orm"
	"fmt"
)

type NewsInfo struct {
	Newsnum			string
	News 			[]News
}

type News struct {
	Id    			int
	Title			string
	Category		string		//类别
	Author			string
	Content			string		//`type(text)`
	Publish_date	string
	Perview_picture	string		//标题预览图
}

//获得新闻总记录数
func getNewsNum() string{
	var num = "0"
	o := orm.NewOrm()
	o.Using("default")
	var maps []orm.Params
	num2, err := o.Raw("SELECT count(id) as num FROM `news`").Values(&maps)
	if err == nil && num2 > 0 {
		num = maps[0]["num"].(string)
	}
	return num
}

//获得所有新闻信息展示
func GetNews() []News {
	o := orm.NewOrm()
	o.Using("default")
	var news []News
	o.Raw("select *from `news` where isdelete=0").QueryRows(&news)
	return news
}

//新闻,分页
func GetNewsByPage(pageNum,num int, category string) interface{}{
	var getinfo GetInfo

	o := orm.NewOrm()
	o.Using("default")
	var news []News
	switch category {
	case "":
		o.Raw("select *from `news` where isdelete=0 limit ?,?",(pageNum-1)*num,num).QueryRows(&news)
		break
	default:
		o.Raw("select *from `news` where category=? and isdelete=0 limit ?,?",category,(pageNum-1)*num,num).QueryRows(&news)
	}
	//data
	getinfo.Data = news
	//页码,页记录数,总记录数
	getinfo.Pager.ClientPage = pageNum
	getinfo.Pager.EveryPage = num
	getinfo.Pager.SumPage = getProductNum()
	return getinfo
}
//插入新闻
func InsertNews(title,category,author,content,publish_date,perview_picture string) int{
	//初始化日期
	//publish_date = time.Now().Format("2006-01-02")//时间戳"2006-01-02 15:04:05"是参考格式,具体数字可变
	//判空前端做
	o := orm.NewOrm()
	o.Using("default")
	_,err := o.Raw("insert `news`(title,category,author,content,publish_date,perview_picture) value(?,?,?,?,?,?)",title,category,author,content,publish_date,perview_picture).Exec()
	if err == nil {
		return 1
	}
	fmt.Println("新闻插入失败")
	return 0
}

//删除新闻
func DeleteNewsById(id string) int64{
	var num int64;//返回影响的行数

	o := orm.NewOrm()
	o.Using("default")
	res,err := o.Raw("update `news` set isdelete=1 where id=?",id).Exec()
	//res,err := o.Raw("delete from `news` where id=?",id).Exec()
	if err == nil {
		num, _ = res.RowsAffected()
	}
	fmt.Println("新闻信息删除失败")
	return num
}

//更新新闻,注：提交相同数据返回行数为0
func UpdateNews(id,title,category,author,content,publish_date,perview_picture string) int64{
	var num int64;//返回影响的行数
	//判空前端做
	o := orm.NewOrm()
	o.Using("default")
	res,err := o.Raw("update `news` set title=?,category=?,author=?,content=?,publish_date=?,perview_picture=? where id=?",title,category,author,content,publish_date,perview_picture,id).Exec()
	if err == nil {
		num, _ = res.RowsAffected()
	}
	fmt.Println("新闻更新失败")
	return num
}

func init() {
	// 需要在init中注册定义的model
	orm.RegisterModel(new(News))
}

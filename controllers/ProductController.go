package controllers

import (
	"github.com/astaxie/beego"
	"yd_hm/models"
)

type ProductController struct {
	beego.Controller
}

//根据id获取产品
func (u *ProductController) GetProductById(){
	id,_ := u.GetInt("id")	//每页数量
	ss := models.GetProductById(id)
	u.Data["json"] = ss
	u.ServeJSON()
}
//产品分页,分类
func (u *ProductController) GetProductByPage(){
	pageNum := 1
	num := 10
	category := ""
	category = u.GetString("category")
	pageNum,_ = u.GetInt("pagenum")	//页码
	num,_ = u.GetInt("num")	//每页数量
	ss := models.GetProductByPage(pageNum,num,category)
	u.Data["json"] = ss
	u.ServeJSON()
}

// 产品数据录入,返回状态1/0
func (u *ProductController) CreateProduct(){
	category := u.GetString("category")
	model := u.GetString("model")
	name := u.GetString("name")
	specal := u.GetString("specal")
	introduce := u.GetString("introduce")
	file_id := u.GetString("file_id")
	link1 := u.GetString("link1")
	link2 := u.GetString("link2")

	n := models.InsertProduct(category,model,name,specal,introduce,file_id,link1,link2)
	u.Data["json"]=map[string]int{"status":n}
	u.ServeJSON()
}

//产品用户删除,返回状态1/0
func (u *ProductController) DeleteProductById(){
	id := u.GetString("id")
	n := models.DeleteProductById(id)
	u.Data["json"]=map[string]int64{"status":n}
	u.ServeJSON()
}

// 产品数据更新,返回状态1/0
func (u *ProductController) UpdateProduct(){
	id := u.GetString("id")
	category := u.GetString("category")
	model := u.GetString("model")
	name := u.GetString("name")
	specal := u.GetString("specal")
	introduce := u.GetString("introduce")
	file_id := u.GetString("file_id")
	link1 := u.GetString("link1")
	link2 := u.GetString("link2")

	n := models.UpdateProduct(id,category,model,name,specal,introduce,file_id,link1,link2)
	u.Data["json"]=map[string]int64{"status":n}
	u.ServeJSON()
}

//产品搜索
func (u *ProductController) SearchProduct()  {
	pageNum := 1
	num := 10
	key := ""
	key = u.GetString("key")
	pageNum,_ = u.GetInt("pagenum")	//页码
	num,_ = u.GetInt("num")	//每页数量
	ss := models.SearchProduct(pageNum,num,key)
	u.Data["json"] = ss
	u.ServeJSON()
}


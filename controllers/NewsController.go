package controllers

import (
	"github.com/astaxie/beego"
	"yd_hm/models"
)

type NewsController struct {
	beego.Controller
}

// 新闻数据展示
func (u *NewsController) GetNews(){
	ss := models.GetNews()
	u.Data["json"] = ss
	u.ServeJSON()
}

//新闻分页
func (u *NewsController) GetNewsByPage(){
	num := 10
	pageNum := 1
	category := ""
	category = u.GetString("category")
	pageNum,_ = u.GetInt("pagenum")	//页码
	num,_ = u.GetInt("num")	//每页数量
	ss := models.GetNewsByPage(pageNum,num,category)
	u.Data["json"] = ss
	u.ServeJSON()
}

// 新闻数据录入,返回状态1/0
func (u *NewsController) CreateNews(){

	title := u.GetString("title")
	category := u.GetString("category")
	author := u.GetString("author")
	content := u.GetString("content")
	publish_date := u.GetString("publish_date")
	perview_picture := u.GetString("perview_picture")

	n := models.InsertNews(title,category,author,content,publish_date,perview_picture)
	u.Data["json"]=map[string]int{"status":n}
	u.ServeJSON()
}

//新闻用户删除,返回状态1/0
func (u *NewsController) DeleteNewsById(){
	news_id := u.GetString("news_id")
	n := models.DeleteNewsById(news_id)
	u.Data["json"]=map[string]int64{"status":n}
	u.ServeJSON()
}

// 新闻数据更新,返回状态1/0
func (u *NewsController) UpdateNews(){
	id := u.GetString("news_id")
	title := u.GetString("title")
	category := u.GetString("category")
	author := u.GetString("author")
	content := u.GetString("content")
	publish_date := u.GetString("publish_date")
	perview_picture := u.GetString("perview_picture")

	n := models.UpdateNews(id,title,category,author,content,publish_date,perview_picture)
	u.Data["json"]=map[string]int64{"status":n}
	u.ServeJSON()
}


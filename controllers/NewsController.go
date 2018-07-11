package controllers

import (
	"github.com/astaxie/beego"
	"yd_hm/models"
)

type NewsController struct {
	beego.Controller
}

// 新闻用户数据展示
func (u *NewsController) GetNews(){
	ss := models.GetNews()
	u.Data["json"] = ss
	u.ServeJSON()
}

// 新闻数据录入,返回状态1/0
func (u *NewsController) CreateNews(){
	title := u.GetString("title")
	author := u.GetString("author")
	content := u.GetString("content")
	n := models.InsertNews(title,author,content)
	u.Data["json"]=map[string]int{"status":n}
	u.ServeJSON()
}

//新闻用户删除,返回状态1/0
func (u *NewsController) DeleteNewsById(){
	jmuser_id := u.GetString("news_id")
	n := models.DeleteNewsById(jmuser_id)
	u.Data["json"]=map[string]int64{"status":n}
	u.ServeJSON()
}

// 新闻数据更新,返回状态1/0
func (u *NewsController) UpdateNews(){
	id := u.GetString("news_id")
	title := u.GetString("title")
	author := u.GetString("author")
	content := u.GetString("content")
	n := models.UpdateNews(id,title,author,content)
	u.Data["json"]=map[string]int64{"status":n}
	u.ServeJSON()
}


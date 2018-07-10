package controllers

import (
	"github.com/astaxie/beego"
	"yd_hm/models"
)

type ApiController struct {
	beego.Controller
}

// 角色数据展示
func (u *ApiController) GetApi(){
	ss := models.GetApi()
	u.Data["json"] = ss
	u.ServeJSON()
}

// 角色数据录入,返回状态1/0
func (u *ApiController) CreateApi(){
	api_url := u.GetString("api_url")
	comment := u.GetString("api_comment")
	n := models.InsertApi(api_url,comment)
	u.Data["json"]=map[string]int{"status":n}
	u.ServeJSON()
}

//角色用户删除,返回状态1/0
func (u *ApiController) DeleteApiById(){
	jmuser_id := u.GetString("api_id")
	n := models.DeleteApiById(jmuser_id)
	u.Data["json"]=map[string]int64{"status":n}
	u.ServeJSON()
}


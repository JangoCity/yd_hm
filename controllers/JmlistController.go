package controllers

import (
	"github.com/astaxie/beego"
	"yd_hm/models"
)

type JmlistController struct {
	beego.Controller
}

// 加盟数据展示
func (u *JmlistController) GetJmlist(){
	ss := models.GetJmlist()
	u.Data["json"] = ss
	u.ServeJSON()
}

// 加盟数据录入,返回状态1/0
func (u *JmlistController) CreateJmlist(){
	jm_name := u.GetString("jm_name")
	jm_email := u.GetString("jm_email")
	jm_phone := u.GetString("jm_phone")
	jm_place := u.GetString("jm_place")
	jm_content := u.GetString("jm_content")
	n := models.InsertJM(jm_name,jm_email,jm_phone,jm_place,jm_content)
	u.Data["json"]=map[string]int{"status":n}
	u.ServeJSON()
}

// 加盟数据删除,返回状态1/0
func (u *JmlistController) DeleteJmlist(){
	id := u.GetString("id")
	n := models.DeleteJM(id)
	u.Data["json"]=map[string]int{"status":n}
	u.ServeJSON()
}

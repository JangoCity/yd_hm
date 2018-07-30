package controllers

import (
	"github.com/astaxie/beego"
	"yd_hm/models"
)

type JmuserController struct {
	beego.Controller
}

// 根据id获得加盟用户数据展示
func (u *JmuserController) GetJmuserById(){
	id,_ := u.GetInt("id")
	ss := models.GetJmuserById(id)
	u.Data["json"] = ss
	u.ServeJSON()
}
// 加盟用户数据展示
func (u *JmuserController) GetJmuser(){
	ss := models.GetJmuser()
	u.Data["json"] = ss
	u.ServeJSON()
}

// 加盟用户数据录入,返回状态1/0
func (u *JmuserController) CreateJmuser(){
	jm_name := u.GetString("jm_name")
	jm_email := u.GetString("jm_email")
	jm_phone := u.GetString("jm_phone")
	Jm_password := u.GetString("jm_password")
	role_id := u.GetString("role_id")
	n := models.InsertJMuser(jm_name,Jm_password,jm_email,jm_phone,role_id)
	u.Data["json"]=map[string]int{"status":n}
	u.ServeJSON()
}

//加盟用户删除,返回状态1/0
func (u *JmuserController) DeleteJMuserById(){
	jmuser_id := u.GetString("jmuser_id")
	n := models.DeleteJMuserById(jmuser_id)
	u.Data["json"]=map[string]int64{"status":n}
	u.ServeJSON()
}

//加盟用户更新,返回状态1/0
func (u *JmuserController) UpdateJMuserById(){
	jmuser_id := u.GetString("jmuser_id")
	jm_name := u.GetString("jm_name")
	jm_password := u.GetString("jm_password")
	jm_email := u.GetString("jm_email")
	jm_phone := u.GetString("jm_phone")
	role_id := u.GetString("role_id")
	n := models.UpdateJMuserById(jmuser_id,jm_name,jm_password,jm_email,jm_phone,role_id)
	u.Data["json"]=map[string]int64{"status":n}
	u.ServeJSON()
}
package controllers

import (
	"github.com/astaxie/beego"
	"yd_hm/models"
)

type RoleController struct {
	beego.Controller
}

// 角色数据展示
func (u *RoleController) GetRole(){
	ss := models.GetRole()
	u.Data["json"] = ss
	u.ServeJSON()
}

// 角色数据录入,返回状态1/0
func (u *RoleController) CreateRole(){
	role_name := u.GetString("role_name")
	n := models.InsertRole(role_name)
	u.Data["json"]=map[string]int{"status":n}
	u.ServeJSON()
}

//角色用户删除,返回状态1/0
func (u *RoleController) DeleteRoleById(){
	jmuser_id := u.GetString("role_id")
	n := models.DeleteRoleById(jmuser_id)
	u.Data["json"]=map[string]int64{"status":n}
	u.ServeJSON()
}


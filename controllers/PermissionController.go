package controllers

import (
	"github.com/astaxie/beego"
	"yd_hm/models"
	"encoding/json"
)

type PermissionController struct {
	beego.Controller
}

// 返回用户可操作的一组权限接口
func (u *PermissionController) GetPermissionById(){
	uid,_ := u.GetSecureCookie(beego.AppConfig.String("secertkey"),"uid")
	ss := models.GetPermissionById(uid)			//更深的结构体数据调试看不到,调用的时候可以看到(软件bug??)
	u.Data["json"] = ss
	b, _ := json.Marshal(u.Data["json"])

	//session会话级别存储用户权限接口
	//这里用cookie加密存储,仍有一定的风险
	u.SetSecureCookie(beego.AppConfig.String("secertkey"),"apipermissionbyid",string(b))

	u.ServeJSON()
}

//返回所有用户和角色
func (u *PermissionController) GetAllUserToRole(){
	ss := models.GetAllUserToRole()
	u.Data["json"] = ss
	u.ServeJSON()
}

//增加用户角色
func (u *PermissionController) CreateUserToRole(){
	jmuser_id := u.GetString("jmuser_id")
	role_id := u.GetString("role_id")
	ss := models.CreateUserToRole(jmuser_id,role_id)
	u.Data["json"] = map[string]int{"status":ss}
	u.ServeJSON()
}

//删除用户角色
func (u *PermissionController) DeleteUserToRole(){
	userrole_id := u.GetString("userrole_id")
	ss := models.DeleteUserToRole(userrole_id)
	u.Data["json"] = map[string]int64{"status":ss}
	u.ServeJSON()
}

//修改用户角色
func (u *PermissionController) UpdateUserToRole(){
	userrole_id := u.GetString("userrole_id")
	jmuser_id := u.GetString("jmuser_id")
	role_id := u.GetString("role_id")
	ss := models.UpdateUserToRole(userrole_id,jmuser_id,role_id)
	u.Data["json"] = map[string]int64{"status":ss}
	u.ServeJSON()
}


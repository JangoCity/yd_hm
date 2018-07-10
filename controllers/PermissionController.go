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



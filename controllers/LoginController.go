package controllers

import (
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
	"yd_hm/util"
	"yd_hm/models"
	"encoding/json"
)

type LoginController struct {
	beego.Controller
}
//登录
func (this *LoginController) Login() {
	var n = 0;

	jmusername := this.GetString("jmusername")
	jmuserpassword := this.GetString("jmuserpassword")
	o := orm.NewOrm()
	o.Using("default")
	var maps []orm.Params
	num, err := o.Raw("SELECT id,jm_password FROM jmuser WHERE jm_name = ?", jmusername).Values(&maps)
	if err == nil && num > 0 {
		jmuserpassword = util.AesEn(jmuserpassword)
		if(maps[0]["jm_password"] == jmuserpassword){
			uid := maps[0]["id"].(string)
			//获取用户相应的可操作权限接口
			ss := models.GetPermissionById(uid)			//更深的结构体数据调试看不到,调用的时候可以看到(软件bug??)
			this.Data["json"] = ss
			b, _ := json.Marshal(this.Data["json"])

			//session会话级别存储用户权限接口
			//这里用cookie加密存储,仍有一定的风险
			this.SetSecureCookie(beego.AppConfig.String("secertkey"),"apipermissionbyid",string(b))

			this.SetSecureCookie(beego.AppConfig.String("secertkey"),"uid",uid)
			n = 1
		} // slene
	}
	this.Data["json"] = map[string]int{"status":n}
	this.ServeJSON()
}


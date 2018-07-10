package controllers

import (
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
	"yd_hm/util"
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
			this.SetSecureCookie(beego.AppConfig.String("secertkey"),"uid",maps[0]["id"].(string))
			n = 1
		} // slene
	}
	this.Data["json"] = map[string]int{"status":n}
	this.ServeJSON()
}

//获取

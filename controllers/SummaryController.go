package controllers

import (
	"github.com/astaxie/beego"
	"yd_hm/models"
)

type SummaryController struct {
	beego.Controller
}

//根据id获得账单
func (u *SummaryController) GetSummaryById() {
	id,_ := u.GetInt("id")
	ss := models.GetSummaryById(id)
	u.Data["json"] = ss
	u.ServeJSON()
}

//账单信息分页
func (u *SummaryController) GetSummaryByPage() {
	clientPage := 1                        //默认第1页
	everyPage := 10                        //默认10页
	clientPage, _ = u.GetInt("clientPage") //页码
	everyPage, _ = u.GetInt("everyPage")   //每页数量

	uid, _ := u.Ctx.GetSecureCookie(beego.AppConfig.String("secertkey"), "uid")
	ss := models.GetSummaryByPage(uid,clientPage, everyPage)
	u.Data["json"] = ss
	u.ServeJSON()
}

//账单信息删除
func (u *SummaryController) DeleteSummaryById() {
	id, _ := u.GetInt("id")
	ss := models.DeleteSummaryByid(id)
	u.Data["json"] = ss
	u.ServeJSON()
}

//账单信息修改
func (u *SummaryController) UpdateSummary() {
	values := u.Ctx.Request.Form	//源码values 为map[string][]string类型
	ss := models.UpdateSummary(values)
	u.Data["json"] = ss
	u.ServeJSON()
}

//新增账单信息
func (u *SummaryController) CreateSummary() {
	values := u.Ctx.Request.Form
	uid, _ := u.Ctx.GetSecureCookie(beego.AppConfig.String("secertkey"), "uid")
	ss := models.CreateSummary(uid,values)
	u.Data["json"] = ss
	u.ServeJSON()
}

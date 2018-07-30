package models

import (
	"github.com/astaxie/beego/orm"
	"fmt"
)

type Jmlist struct {
	Id    			int
	Jm_name  		string//OpenId不行,只能首字母大写,beego...
	Jm_email		string
	Jm_phone		string
	Jm_content		string
}
//获得所有加盟信息展示
func GetJmlist() []Jmlist {
	o := orm.NewOrm()
	o.Using("default")
	var jmlist []Jmlist
	o.Raw("select *from `jmlist`").QueryRows(&jmlist)
	return jmlist
}
//插入加盟信息
func InsertJM(jm_name,jm_email,jm_phone,jm_place,jm_content string) int{
	//判空前端做
	o := orm.NewOrm()
	o.Using("default")
	_,err := o.Raw("insert `jmlist`(jm_name,jm_email,jm_phone,jm_place,jm_content) value(?,?,?,?,?)",jm_name,jm_email,jm_phone,jm_place,jm_content).Exec()
	if err == nil {
		return 1
	}
	fmt.Println("加盟信息插入失败")
	return 0
}

func init() {
	// 需要在init中注册定义的model
	orm.RegisterModel(new(Jmlist))
}

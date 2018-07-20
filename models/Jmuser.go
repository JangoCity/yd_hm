package models

import (
	"github.com/astaxie/beego/orm"
	"fmt"
	"yd_hm/util"
)

type Jmuser struct {
	Id    			int
	Jm_name  		string//OpenId不行,只能首字母大写,beego...
	Jm_password		string
	Jm_email		string
	Jm_phone		string
}
//获得所有加盟用户信息展示
func GetJmuser() []Jmuser {
	o := orm.NewOrm()
	o.Using("default")
	var jmuser []Jmuser
	o.Raw("select *from `jmuser`").QueryRows(&jmuser)
	return jmuser
}
//插入加盟用户信息,md5加密+salt
func InsertJMuser(jm_name,jm_password,jm_email,jm_phone string) int{
	//md5加密+salt
	//salt := util.Salt()
	//jm_password = salt + util.Md5(jm_password+salt)
	jm_password = util.AesEn(jm_password)

	o := orm.NewOrm()
	o.Using("default")
	_,err := o.Raw("insert `jmuser`(jm_name,jm_password,jm_email,jm_phone) value(?,?,?,?)",jm_name,jm_password,jm_email,jm_phone).Exec()
	if err == nil {
		return 1
	}
	fmt.Println("加盟信息插入失败")
	return 0
}
//删除加盟用户信息
func DeleteJMuserById(id string) int64{
	var num int64;//返回影响的行数

	o := orm.NewOrm()
	o.Using("default")
	res,err := o.Raw("delete from `jmuser` where id=?",id).Exec()
	if err == nil {
		num, _ = res.RowsAffected()
	}
	fmt.Println("加盟信息删除失败")
	return num
}

//更新加盟用户信息
func UpdateJMuserById(id,jm_name,jm_password string) int64{
	var num int64;//返回影响的行数

	o := orm.NewOrm()
	o.Using("default")
	jm_password = util.AesEn(jm_password)
	res,err := o.Raw("update `jmuser` set jm_name=?,jm_password=? where id=?",jm_name,jm_password,id).Exec()
	if err == nil {
		num, _ = res.RowsAffected()
	}
	fmt.Println("加盟信息更新失败")
	return num
}

func init() {
	// 需要在init中注册定义的model
	orm.RegisterModel(new(Jmuser))
}

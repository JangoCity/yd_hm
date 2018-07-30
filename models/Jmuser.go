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
	Role			[]*Role	//用户拥有的角色
}
//根据id获得加盟用户信息展示
func GetJmuserById(id int) []Jmuser {
	o := orm.NewOrm()
	o.Using("default")
	var jmuser []Jmuser
	num,_ := o.Raw("select *from `jmuser` where id=?",id).QueryRows(&jmuser)
	if num > 0 {
		for i := 0 ; i < len(jmuser) ; i++{
			var maps []orm.Params
			var role_id string
			_,err := o.Raw("select role_id from `permission` where jmuser_id=?",jmuser[i].Id).Values(&maps)
			if err == nil{
				for j := 0; j< len(maps); j++{
					role_id = maps[j]["role_id"].(string)
					o.Raw("select * from `role` where id=?",role_id).QueryRows(&jmuser[i].Role)
				}
			}

		}
	}
	return jmuser
}
//获得所有加盟用户信息展示
func GetJmuser() []Jmuser {
	o := orm.NewOrm()
	o.Using("default")
	var jmuser []Jmuser
	num,_ := o.Raw("select *from `jmuser`").QueryRows(&jmuser)
	if num > 0 {
		for i := 0 ; i < len(jmuser) ; i++{
			var maps []orm.Params
			var role_id string
			_,err := o.Raw("select role_id from `permission` where jmuser_id=?",jmuser[i].Id).Values(&maps)
			if err == nil{
				for j := 0; j< len(maps); j++{
					role_id = maps[j]["role_id"].(string)
					o.Raw("select * from `role` where id=?",role_id).QueryRows(&jmuser[i].Role)
				}
			}

		}
	}
	return jmuser
}
//插入加盟用户信息,md5加密+salt
func InsertJMuser(jm_name,jm_password,jm_email,jm_phone,role_id string) int{
	jm_password = util.AesEn(jm_password)

	o := orm.NewOrm()
	o.Using("default")

	_,err := o.Raw("insert `jmuser`(jm_name,jm_password,jm_email,jm_phone) value(?,?,?,?)",jm_name,jm_password,jm_email,jm_phone).Exec()
	if err == nil {
		//插入对应的角色
		var maps []orm.Params
		var id string
		o.Raw("select MAX(id) as id from jmuser").Values(&maps)
		id = maps[0]["id"].(string)
		o.Raw("insert `permission`(jmuser_id,role_id) value(?,?)",id,role_id).Exec()
		return 1
	}
	fmt.Println("加盟信息插入失败")
	return 0
}
//删除加盟用户信息,应该同时删除对应角色权限中数据,懒得处理呵～
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
func UpdateJMuserById(id,jm_name,jm_password,jm_email,jm_phone,role_id string) int64{
	var num int64;//返回影响的行数

	o := orm.NewOrm()
	o.Using("default")
	jm_password = util.AesEn(jm_password)
	res,err := o.Raw("update `jmuser` set jm_name=?,jm_password=?," +
		"jm_email=?,jm_phone=? where id=?",jm_name,jm_password,jm_email,jm_phone,id).Exec()
	if err == nil {
		num, _ = res.RowsAffected()
		//更新对应的角色
		o.Raw("update `permission` set role_id=? where jmuser_id=?",role_id,id).Exec()

	}
	fmt.Println("加盟信息更新失败")
	return num
}
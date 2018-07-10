package models

import (
	"github.com/astaxie/beego/orm"
	"fmt"
)

//api路由列表
type Api struct {
	Id			int
	Apiurl		string
	Comment		string
}

//获得所有api路由
func GetApi() []Api {
	o := orm.NewOrm()
	o.Using("default")
	var api []Api
	o.Raw("select *from `api`").QueryRows(&api)
	return api
}
//插入api路由
func InsertApi(api_name,comment string) int{

	o := orm.NewOrm()
	o.Using("default")
	_,err := o.Raw("insert `api`(apiurl,comment) value(?,?)",api_name,comment).Exec()
	if err == nil {
		return 1
	}
	fmt.Println("api路由信息插入失败")
	return 0
}
//删除api路由
func DeleteApiById(id string) int64{
	var num int64;//返回影响的行数

	o := orm.NewOrm()
	o.Using("default")
	res,err := o.Raw("delete from `api` where id=?",id).Exec()
	if err == nil {
		num, _ = res.RowsAffected()
		//删除api路由相关联的信息
		o.Raw("delete from `permissionlist` where api_id=?",id).Exec()
	}
	fmt.Println("api路由信息删除失败")
	return num
}

func init() {
	// 需要在init中注册定义的model
	orm.RegisterModel(new(Api))
}

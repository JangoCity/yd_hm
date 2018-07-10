package models

import (
	"github.com/astaxie/beego/orm"
	"fmt"
)

//角色
type Role struct {
	Id 			int
	Role_name	string
}

//获得所有角色
func GetRole() []Role {
	o := orm.NewOrm()
	o.Using("default")
	var role []Role
	o.Raw("select *from `role`").QueryRows(&role)
	return role
}
//插入角色
func InsertRole(role_name string) int{

	o := orm.NewOrm()
	o.Using("default")
	_,err := o.Raw("insert `role`(role_name) value(?)",role_name).Exec()
	if err == nil {
		return 1
	}
	fmt.Println("角色信息插入失败")
	return 0
}
//删除角色
func DeleteRoleById(id string) int64{
	var num int64;//返回影响的行数
	o := orm.NewOrm()
	o.Using("default")
	res,err := o.Raw("delete from `role` where id=?",id).Exec()
	if err == nil {
		num, _ = res.RowsAffected()
		//删除角色相关联的信息
		o.Raw("delete from `permission` where role_id=?",id).Exec()
		o.Raw("delete from `permissionlist` where role_id=?",id).Exec()
	}
	fmt.Println("角色信息删除失败")
	return num
}

func init() {
	// 需要在init中注册定义的model
	orm.RegisterModel(new(Role))
}
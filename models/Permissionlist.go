package models

import (
	"github.com/astaxie/beego/orm"
	"fmt"
)

/*角色对应的路由权限列表*/
type Permissionlist struct {
	Id				int			//角色id
	Role_name		string		//角色名
	//一个角色对应多个路由权限
	Api				[]*Api
}

//根据角色id获得对应的api路由
func GetApiByRoleId(role_id string) []*Permissionlist{
	o := orm.NewOrm()
	o.Using("default")

	var u []*Permissionlist

	_,err := o.Raw("select id,role_name from `role` where id=?",role_id).QueryRows(&u)
	if err == nil {
		fmt.Println("根据角色id获得对应的api路由查询成功(连续显示几次便表示该用户有几个角色)")
	}
	//查询角色包含的api路由,理论上不用循环的,为以后预留
	for i := 0; i < len(u);  i++{
		o.Raw("select * from `permissionlist` a inner join `api` b on a.api_id=b.id where role_id=?",u[i].Id).QueryRows(&(u[i].Api))
	}
	return u
}

//增加角色对应的路由
func CreateApiToRole(role_id,api_id string) int{
	o := orm.NewOrm()
	o.Using("default")
	_,err := o.Raw("insert `permissionlist`(role_id,api_id) value(?,?)",role_id,api_id).Exec()
	if err == nil {
		return 1
	}
	fmt.Println("角色对应的路由权限插入失败")
	return 0
}

//删除角色对应的路由
func DeleteApiToRole(roleapi_id string) int64{
	var num int64;//返回影响的行数
	o := orm.NewOrm()
	o.Using("default")
	res,err := o.Raw("delete from `permissionlist` where id=?",roleapi_id).Exec()
	if err == nil {
		num, _ = res.RowsAffected()
	}
	fmt.Println("角色对应的路由权限删除失败")
	return num
}

//修改角色对应的路由
func UpdateApiToRole(roleapi_id,role_id,api_id string) int64{
	var num int64;//返回影响的行数
	o := orm.NewOrm()
	o.Using("default")
	res,err := o.Raw("update `permissionlist` set role_id=?,api_id=? where id=?",role_id,api_id,roleapi_id).Exec()
	if err == nil {
		num, _ = res.RowsAffected()
	}
	fmt.Println("角色对应的路由权限修改失败")
	return num
}


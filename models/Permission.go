package models

import (
	"github.com/astaxie/beego/orm"
	"fmt"
)

type Permission struct {
	Id				int					//用户id
	Jm_name			string				//加盟用户,包含管理员
	//一个用户对应多个角色
	Permissionlist	[]*Permissionlist	//返回json数据,属性名Permissionlist首字母要大写！！！
}

//根据用户id返回一组对应的可访问操作的权限列表(包含用户的角色)
func GetPermissionById(uid string) []*Permission{
	o := orm.NewOrm()
	o.Using("default")

	var u []*Permission

	_,err := o.Raw("select * from `jmuser` where id=?",uid).QueryRows(&u)
	if err == nil {
		fmt.Println("用户的一组权限查询成功")
	}

	var maps []orm.Params
	for i := 0; i < len(u); i++{
		//查询用户对应的角色
		num, err := o.Raw("SELECT role_id FROM `permission` WHERE jmuser_id = ?",u[i].Id).Values(&maps)
		if err == nil && num > 0 {
			for j := 0; j < int(num); j++{
				role_id := maps[j]["role_id"]
				roleapi:= GetApiByRoleId(role_id.(string))
				//u[i].permissionlist[j] = roleapi[0] //直接赋值错误,显示下标越界
				//数组/切片赋值方式,append(),必须要有返回值！！！
				u[i].Permissionlist = append(u[i].Permissionlist,roleapi[0])
			}
		}
	}
	return u
}

//返回所有用户以及角色
func GetAllUserToRole() []*Permission{
	o := orm.NewOrm()
	o.Using("default")

	var u []*Permission

	_,err := o.Raw("select * from `jmuser`").QueryRows(&u)
	if err == nil {
		fmt.Println("用户的一组权限查询成功")
	}

	var maps []orm.Params
	for i := 0; i < len(u); i++{
		//查询用户对应的角色
		num, err := o.Raw("SELECT role_id FROM `permission` WHERE jmuser_id = ?",u[i].Id).Values(&maps)
		if err == nil && num > 0 {
			for j := 0; j < int(num); j++{
				role_id := maps[j]["role_id"]
				roleapi:= GetApiByRoleId(role_id.(string))
				//u[i].permissionlist[j] = roleapi[0] //直接赋值错误,显示下标越界
				//数组/切片赋值方式,append(),必须要有返回值！！！
				u[i].Permissionlist = append(u[i].Permissionlist,roleapi[0])
			}
		}
	}
	return u
}

//用户角色的添加
func CreateUserToRole(jmuser_id,role_id string) int{
	o := orm.NewOrm()
	o.Using("default")
	_,err := o.Raw("insert `permission`(jmuser_id,role_id) value(?,?)",jmuser_id,role_id).Exec()
	if err == nil {
		return 1
	}
	fmt.Println("用户角色插入失败")
	return 0
}

//用户角色的删除
func DeleteUserToRole(id string) int64{
	var num int64;//返回影响的行数
	o := orm.NewOrm()
	o.Using("default")
	res,err := o.Raw("delete from `permission` where id=?",id).Exec()
	if err == nil {
		num, _ = res.RowsAffected()
	}
	fmt.Println("用户角色删除失败")
	return num
}

//修改角色对应的路由
func UpdateUserToRole(id,jmuser_id,role_id string) int64{
	var num int64;//返回影响的行数
	o := orm.NewOrm()
	o.Using("default")
	res,err := o.Raw("update `permission` set jmuser_id=?,role_id=? where id=?",jmuser_id,role_id,id).Exec()
	if err == nil {
		num, _ = res.RowsAffected()
	}
	fmt.Println("用户角色修改失败")
	return num
}
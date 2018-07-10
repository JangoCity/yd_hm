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


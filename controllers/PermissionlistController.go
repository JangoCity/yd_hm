package controllers

import (
	"github.com/astaxie/beego"
	"yd_hm/models"
)

type PermissionlistController struct {
	beego.Controller
}

// 返回角色可操作(已拥有)的一组权限
func (u *PermissionlistController) GetApiByRoleId(){
	role_id := u.GetString("role_id")
	ss := models.GetApiByRoleId(role_id)
	u.Data["json"] = ss
	u.ServeJSON()
}

//增加角色权限
func (u *PermissionlistController) CreateApiToRole(){
	role_id := u.GetString("role_id")
	api_id := u.GetString("api_id")
	ss := models.CreateApiToRole(role_id,api_id)
	u.Data["json"] = map[string]int{"status":ss}
	u.ServeJSON()
}

//删除角色权限
func (u *PermissionlistController) DeleteApiToRole(){
	roleapi_id := u.GetString("roleapi_id")
	ss := models.DeleteApiToRole(roleapi_id)
	u.Data["json"] = map[string]int64{"status":ss}
	u.ServeJSON()
}

//修改角色权限
func (u *PermissionlistController) UpdateApiToRole(){
	roleapi_id := u.GetString("roleapi_id")
	role_id := u.GetString("role_id")
	api_id := u.GetString("api_id")
	ss := models.UpdateApiToRole(roleapi_id,role_id,api_id)
	u.Data["json"] = map[string]int64{"status":ss}
	u.ServeJSON()
}
package routers

import (
	"fmt"
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/context"
	"github.com/astaxie/beego/plugins/cors"
	"strings"
	"yd_hm/controllers"
)

//登录验证/api路由权限验证
var FilterUser = func(ctx *context.Context) {
	//请求路由
	url := ctx.Input.URL()
	if !strings.Contains(url,"/file/") && !strings.Contains(url,"/get") && !strings.Contains(url,"/jmlist/createjmlist"){
		//用户在线id
		uid, ok := ctx.GetSecureCookie(beego.AppConfig.String("secertkey"), "uid")
		fmt.Println("用户id---->" + uid)

		if url == "/"{
			ctx.Redirect(200,"static/dist")
		} else if !ok && url != "/login/login" {
			ctx.Redirect(302, "/login/login")
		} else if url != "/permission/getpermissionbyid" && url != "/login/login" {
			//用户路由权限判断,除去静态文件判断
			if !strings.Contains(url, beego.AppConfig.String("staticpath")) {
				apilist, _ := ctx.GetSecureCookie(beego.AppConfig.String("secertkey"), "apipermissionbyid")
				//fmt.Println(apilist)
				b := strings.Contains(apilist, url) //路由权限判断
				if b {
					fmt.Println("uid---->" + uid + "====>" + url + "路由权限通过")
				} else {
					fmt.Println("uid---->" + uid + "====>" + url + "路由权限未通过")
					ctx.Redirect(302, "/login/login")
				}
			}
		}
	}
}

func init() {
	beego.InsertFilter("*", beego.BeforeRouter, cors.Allow(&cors.Options{
		AllowOrigins:     []string{"http://192.168.31.173:3000","http://api.hmeistyle.com","http://127.0.0.1:8009","*"},
		AllowMethods:     []string{"get", "post", "options"},
		AllowHeaders:     []string{"Origin", "Authorization", "Access-Control-Allow-Origin", "X-Requested-With","Access-Control-Allow-Credentials"},
		ExposeHeaders:    []string{"Content-Length", "Access-Control-Allow-Origin"},
		AllowCredentials: true,
	}))
	beego.InsertFilter("/*", beego.BeforeRouter, FilterUser)
	beego.AutoRouter(&controllers.LoginController{})
	beego.AutoRouter(&controllers.JmlistController{})
	beego.AutoRouter(&controllers.JmuserController{})
	beego.AutoRouter(&controllers.RoleController{})
	beego.AutoRouter(&controllers.ApiController{})
	beego.AutoRouter(&controllers.PermissionController{})
	beego.AutoRouter(&controllers.PermissionlistController{})
	beego.AutoRouter(&controllers.NewsController{})
	beego.AutoRouter(&controllers.FileController{})
	beego.AutoRouter(&controllers.ProductController{})
	beego.AutoRouter(&controllers.SummaryController{})
}

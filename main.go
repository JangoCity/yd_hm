package main

import (
	_ "yd_hm/routers"
	_ "yd_hm/models"
	_ "github.com/go-sql-driver/mysql"
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
)

func main() {
	orm.Debug = true
	//fmt.Println("ip:"+util.GetIntranetIp())
	beego.BConfig.WebConfig.Session.SessionOn = true
	orm.RegisterDriver("mysql",orm.DRMySQL)
	orm.RegisterDataBase("default","mysql","root:"+beego.AppConfig.String("db.password")+"@tcp(127.0.0.1:3306)/hmgj?charset=utf8")
	//beego.SetStaticPath("/upload","upload")

	beego.Run()

}

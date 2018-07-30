package lib

import (
	"github.com/astaxie/beego"
	"strconv"
)

/*分页数据信息*/
type GetInfo struct {
	Status int
	Msg    string
	Data   interface{} //数据,通用接口
	Pager  Pager
}

type Pager struct {
	ClientPage int    //当前页码
	SumPage    string //总页数
	EveryPage  int    //每一页显示的数量
}

/*全局变量*/
var MapError = map[string]string{"status": "500", "msg": "系统繁忙"}
var MapUpdate = map[string]string{"status": "206", "msg": "修改成功"}
var MapDelete = map[string]string{"status": "209", "msg": "删除成功"}
var MapCreate = map[string]string{"status": "201", "msg": "创建成功"}

/*
传入数据库表名
更新语句拼接
*/
func GetUpdateSqlById(tablename string,args map[string][]string)  (sql,id string){

	sql = "update `"+tablename+"` set "
	for k,v := range args{
		if k == "id" {
			id = v[0]
			continue
		}
		sql += k + "='" + v[0] + "',"
	}
	c := []byte(sql)
	sql = string(c[:len(c)-1])	//去掉点
	sql += " where id="+id
	return sql,id
}

/*
传入数据库表名
更新语句拼接
*/
func GetInsertSqlById(tablename string,args map[string][]string)  (sql string){

	var values []string
	sql = "insert `"+tablename+"`("
	for k,v := range args{
		sql += k + ","
		values = append(values,v[0])
	}
	c := []byte(sql)
	sql = string(c[:len(c)-1]) + ") value("	//去掉点

	for _,v := range values{
		sql += "'" + v + "',"
	}
	c = []byte(sql)
	sql = string(c[:len(c)-1]) + ")"	//去掉点

	return sql
}

/*传入表名,查询语句拼接*/
func SearchTableSql(tablename string,args map[string][]string) (sql string, clientPage,everyPage int){

	//页码,每页数量
	clientPageStr := beego.AppConfig.String ("clientPage")  //默认第1页
	everyPageStr := beego.AppConfig.String("everyPage")    //默认10页

	sql = "select * from `"+tablename+"` where 1=1 and "
	for k,v := range args{
		if k == "clientPage" {
			clientPageStr = v[0]
			continue
		}
		if k == "everyPage" {
			everyPageStr = v[0]
			continue
		}
		if v[0] == ""{	//条件为空,舍弃
			continue
		}
		sql += k + " like '%" + v[0] + "%' and "
	}

	clientPage,_ = strconv.Atoi(clientPageStr)
	everyPage,_ = strconv.Atoi(everyPageStr)

	c := []byte(sql)
	sql = string(c[:len(c)-4])	//去and
	sql += " limit "+strconv.Itoa((clientPage-1)*everyPage)+","+everyPageStr

	return sql,clientPage,everyPage

}
package models

import (
	"github.com/astaxie/beego/orm"
	"yd_hm/lib"
)

//账单汇总(派出所)信息维护
type Summary struct {
	Id                  int
	Name				string
	Jmuser_id			string	//
	Jm_name				string	//用户名
	Income				string	//要测试是否能超过255个字符
	Outcome				string
	Flow				string
}
//
//根据id获得相应的账单汇总
func GetSummaryById(id int) interface{} {
	var info interface{}
	o := orm.NewOrm()
	o.Using("default")

	var summary []Summary
	var getinfo lib.GetInfo
	var maps []orm.Params
	num2 ,err := o.Raw("select *from `summary` where id=?", id).QueryRows(&summary)
	//有数据是返回相应信息
	if err == nil && num2 > 0 {
		num,_:= o.Raw("select jm_name from `jmuser` where id=?",summary[0].Jmuser_id).Values(&maps)
		if num > 0 {
			summary[0].Jm_name = maps[0]["jm_name"].(string)
		}
		getinfo.Status = 200
		getinfo.Msg = "请求成功"
		getinfo.Data = summary //数据
		info = getinfo
	} else {
		info = lib.MapError
	}
	return info
}

//获得账单汇总,分页
func GetSummaryByPage(uid string, clientPage, everyPage int) interface{} {
	var info interface{}
	o := orm.NewOrm()
	o.Using("default")

	var maps []orm.Params
	var role_id	string
	num2, err := o.Raw("SELECT role_id from `permission` where jmuser_id=?",uid).Values(&maps)
	if num2 > 0{
		role_id = maps[0]["role_id"].(string)
	}
	/*超级管理员或是财务*/
	if role_id == "1" || role_id == "4"{
		num2, err = o.Raw("SELECT count(id) as num FROM `summary`").Values(&maps)
		//有数据是返回相应信息
		if err == nil && num2 > 0 {
			//统计页码等状态
			var SumPage = "0"
			SumPage = maps[0]["num"].(string)

			var summary []Summary
			var getinfo lib.GetInfo
			num,_:=o.Raw("select *from `summary` order by id desc limit ?,?", (clientPage-1)*everyPage, everyPage).QueryRows(&summary)
			if num > 0{
				for k,v := range summary{
					num,_:= o.Raw("select jm_name from `jmuser` where id=?",v.Jmuser_id).Values(&maps)
					if num > 0 {
						summary[k].Jm_name = maps[0]["jm_name"].(string)
					}
				}
			}

			getinfo.Status = 200
			getinfo.Msg = "请求成功"
			getinfo.Data = summary //数据
			getinfo.Pager.SumPage = SumPage
			getinfo.Pager.ClientPage = clientPage
			getinfo.Pager.EveryPage = everyPage

			info = getinfo
		} else {
			info = lib.MapError
		}
	}else {
		num2, err = o.Raw("SELECT count(id) as num FROM `summary` where jmuser_id=?",uid).Values(&maps)
		//有数据是返回相应信息
		if err == nil && num2 > 0 {
			var summary []Summary
			var getinfo lib.GetInfo
			num,_:= o.Raw("select *from `summary` where jmuser_id=? order by id desc limit ?,?",uid, (clientPage-1)*everyPage, everyPage).QueryRows(&summary)
			//统计页码等状态
			var SumPage = "0"
			SumPage = maps[0]["num"].(string)

			if num > 0{
				for k,v := range summary{
					num,_:= o.Raw("select jm_name from `jmuser` where id=?",v.Jmuser_id).Values(&maps)
					if num > 0 {
						summary[k].Jm_name = maps[0]["jm_name"].(string)
					}
				}
			}

			getinfo.Status = 200
			getinfo.Msg = "请求成功"
			getinfo.Data = summary //数据
			getinfo.Pager.SumPage = SumPage
			getinfo.Pager.ClientPage = clientPage
			getinfo.Pager.EveryPage = everyPage

			info = getinfo
		} else {
			info = lib.MapError
		}
	}

	return info
}

//删除账单汇总,根据id
func DeleteSummaryByid(id int) interface{} {
	var info interface{}
	var num int64 //返回影响的行数

	o := orm.NewOrm()
	o.Using("default")
	res, err := o.Raw("delete from `summary` where id=?", id).Exec()
	if err == nil {
		num, _ = res.RowsAffected()
	}
	if num == 0 {
		info = lib.MapError
	} else {
		info = lib.MapDelete
	}
	return info
}

//修改账单汇总
func UpdateSummary(args map[string][]string) interface{} {
	var info interface{}
	var num int64 //返回影响的行数

	sql,_ := lib.GetUpdateSqlById("summary",args)

	o := orm.NewOrm()
	o.Using("default")

	res, err := o.Raw(sql).Exec()
	if err == nil {
		num, _ = res.RowsAffected()
	}
	if num == 0 {
		info = lib.MapError
	} else {
		info = lib.MapUpdate
	}
	return info
}

//创建账单汇总
func CreateSummary(uid string,args map[string][]string) interface{} {
	var info interface{}
	var num int64 //返回影响的行数

	sql := lib.GetInsertSqlById("summary",args)
	o := orm.NewOrm()
	o.Using("default")
	res, err := o.Raw(sql).Exec()
	if err == nil {
		num, _ = res.RowsAffected()
	}
	if num == 0 {
		info = lib.MapError
	} else {
		var maps []orm.Params
		o.Raw("select max(id) as id from `summary`").Values(&maps)
		id := maps[0]["id"].(string)
		o.Raw("update `summary` set jmuser_id=? where id=?",uid,id).Exec()
		info = lib.MapCreate
	}
	return info
}


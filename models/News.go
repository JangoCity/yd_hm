package models

import (
	"github.com/astaxie/beego/orm"
	"fmt"
)

type News struct {
	Id    			int
	Title			string
	Author			string
	Content			string		//`type(text)`
}
//获得所有新闻信息展示
func GetNews() []News {
	o := orm.NewOrm()
	o.Using("default")
	var news []News
	o.Raw("select *from `news`").QueryRows(&news)
	return news
}
//插入新闻
func InsertNews(title,author,content string) int{
	//判空前端做
	o := orm.NewOrm()
	o.Using("default")
	_,err := o.Raw("insert `news`(title,author,content) value(?,?,?)",title,author,content).Exec()
	if err == nil {
		return 1
	}
	fmt.Println("新闻插入失败")
	return 0
}

//删除新闻
func DeleteNewsById(id string) int64{
	var num int64;//返回影响的行数

	o := orm.NewOrm()
	o.Using("default")
	res,err := o.Raw("delete from `news` where id=?",id).Exec()
	if err == nil {
		num, _ = res.RowsAffected()
	}
	fmt.Println("新闻信息删除失败")
	return num
}

//更新新闻,注：提交相同数据返回行数为0
func UpdateNews(id,title,author,content string) int64{
	var num int64;//返回影响的行数
	//判空前端做
	o := orm.NewOrm()
	o.Using("default")
	res,err := o.Raw("update `news`	set title=?,author=?,content=? where id=?",title,author,content,id).Exec()
	if err == nil {
		num, _ = res.RowsAffected()
	}
	fmt.Println("新闻更新失败")
	return num
}

func init() {
	// 需要在init中注册定义的model
	orm.RegisterModel(new(News))
}

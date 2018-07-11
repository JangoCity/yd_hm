package models

import (
	"fmt"
	"github.com/astaxie/beego/orm"
	"os"
)

type File struct {
	Id					int
	File_address		string
	Describe			string
}

//获得文件信息
func GetFile() []File {
	o := orm.NewOrm()
	o.Using("default")
	var file []File
	o.Raw("select *from `file`").QueryRows(&file)
	return file
}
//上传文件
func UploadFile(file_address,describe string) int{
	//判空前端做
	o := orm.NewOrm()
	o.Using("default")
	_,err := o.Raw("insert `file`(file_address,`describe`) value(?,?)",file_address,describe).Exec()
	if err == nil {
		return 1
	}
	fmt.Println("文件上传失败")
	return 0
}

//删除文件信息
func DeleteFileById(id string) int64{
	var num int64;//返回影响的行数

	o := orm.NewOrm()
	o.Using("default")
	res,err := o.Raw("delete from `file` where id=?",id).Exec()
	if err == nil {
		//同时删除上传的文件
		//先删除文件
		var maps []orm.Params
		num, err := o.Raw("SELECT file_address FROM `file` WHERE id = ?", id).Values(&maps)
		if err == nil && num > 0 {
			os.Remove("."+maps[0]["file_address"].(string)) // slene
		}
		//影响的行数
		num, _ = res.RowsAffected()
	}
	fmt.Println("文件信息删除失败")
	return num
}

//更新文件,注：提交相同数据返回行数为0
func UpdateFile(id,file_address,describe string) int64{
	var num int64;//返回影响的行数
	o := orm.NewOrm()
	o.Using("default")

	//先删除文件
	var maps []orm.Params
	num, err := o.Raw("SELECT file_address FROM `file` WHERE id = ?", id).Values(&maps)
	if err == nil && num > 0 {
		os.Remove("."+maps[0]["file_address"].(string)) // slene
	}
	//更新录入新的文件路径
	res,err := o.Raw("update `file` set file_address=?,`describe`=? where id=?",file_address,describe,id).Exec()
	if err == nil {
		//同时理论上应该删除之前上传的图片
		//......
		num, _ = res.RowsAffected()
	}
	fmt.Println("文件更新失败")
	return num
}

func init() {
	// 需要在init中注册定义的model
	orm.RegisterModel(new(File))
}

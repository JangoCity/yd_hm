package controllers

import (
	"github.com/astaxie/beego"
	"yd_hm/models"
	"strings"
	"time"
)
/*文件处理处理*/
type FileController struct {
	beego.Controller
}

//返回上传的文件/图片路径
func (u *FileController) GetFileById() {
	id,_ := u.GetInt("id")
	ss := models.GetFileById(id)
	u.Data["json"] = ss
	u.ServeJSON()
}

//获得上传的文件路径,不对外暴露(小写)
func (u *FileController) filePath() string{
	//获得文件及保存到文件夹
	f, h, _ := u.GetFile("file")                //获取上传的文件
	//上传文件重命名
	filenameSplit := strings.Split(h.Filename,".")
	//防止文件名中多个“.”,获得文件后缀
	filename := "." + filenameSplit[len(filenameSplit)-1]
	filename = time.Now().Format("20060102150405")+filename//时间戳"2006-01-02 15:04:05"是参考格式,具体数字可变(经测试)
	path := beego.AppConfig.String("filepath") + filename //文件目录
	defer f.Close()                             //关闭上传的文件，不然的话会出现临时文件不能清除的情况
	u.SaveToFile("file", path)
	return "/"+path
}

//返回上传的文件/图片路径
func (u *FileController) GetFilePath() {
	path := u.filePath()
	id := models.GetFilePath(path)
	u.Data["json"] = map[string]string{"default":path,"id":id}
	u.ServeJSON()
}

//获得所有财务账单数据
func (u *FileController) GetFinanceByPage(){
	//isfinance := u.GetString("isfinance")
	pageNum,_ := u.GetInt("pagenum")	//页码
	num,_ := u.GetInt("num")	//每页数量
	uid, _ := u.Ctx.GetSecureCookie(beego.AppConfig.String("secertkey"), "uid")
	ss := models.GetFile(uid,pageNum,num)
	u.Data["json"] = ss
	u.ServeJSON()
}

// 文件上传,返回状态1/0,默认的缓存内存是 64M
func (u *FileController) CreateFile(){
	//文件路径
	path := u.filePath()
	//获得文件描述
	describe := u.GetString("describe")//预留
	file_date := u.GetString("file_date")//预留
	isfinance,_ := u.GetInt("isfinance")
	//用户id
	uid, _ := u.Ctx.GetSecureCookie(beego.AppConfig.String("secertkey"), "uid")
	//路径存储到数据库
	n := models.UploadFile(uid,path,file_date,describe,isfinance)
	u.Data["json"]=map[string]int{"status":n}
	u.ServeJSON()
}

//文件删除,返回状态1/0
func (u *FileController) DeleteFileById(){
	file_id := u.GetString("file_id")
	n := models.DeleteFileById(file_id)
	u.Data["json"]=map[string]int64{"status":n}
	u.ServeJSON()
}

//文件更新,返回状态1/0
func (u *FileController) UpdateFile(){
	file_id := u.GetString("file_id")
	file_address := u.filePath()
	file_date := u.GetString("file_date")
	//获得文件描述
	describe := u.GetString("describe")//预留
	n := models.UpdateFile(file_id,file_address,file_date,describe)
	u.Data["json"]=map[string]int64{"status":n}
	u.ServeJSON()
}


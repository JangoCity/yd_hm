package models

/*分页数据信息*/
type GetInfo struct {
	Status		int
	Msg			string
	Data		interface{}		//数据,通用接口
	Pager		Pager
}

type Pager struct {
	ClientPage	int	//当前页码
	SumPage		string	//总页数
	EveryPage	int	//每一页显示的数量
}

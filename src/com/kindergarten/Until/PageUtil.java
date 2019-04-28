package com.kindergarten.Until;

import java.util.List;

/**
 * 分页工具类
 */
public class PageUtil {

	/**数据集合*/
	private List data;
	
	/**总行数*/
	private int rowCount;
	
	/**每页显示条数，默认3条*/
	private int pageSize = 3;
	
	/**总页数*/
	private int pageCount;
	
	/**当前页码*/
	private int pageNum;
	
	
	/**开始索引*/
	private int beginIndex;
	
	/**结束索引*/
	private int endIndex;
	
	public PageUtil(List data)
	{
		this.data = data;
		
		//如果数据存在，则获取分页信息
		if(data != null && data.size() > 0)
		{
			//1.根据data->总行数
			this.rowCount = data.size();//30
			
			//2.总行数、每页显示条数->总页数
			if(this.rowCount % this.pageSize == 0)
			{
				this.pageCount = this.rowCount / this.pageSize;      //30/5 = 6   
			}
			else
			{
				this.pageCount = (this.rowCount / this.pageSize) + 1;//31/5=6(+1)
			}
			
			//3.当前页码，第一次进来，默认第一页
			this.pageNum = 1;
			
			//4.当前页码、每页显示条数  ->  开始索引、结束索引
			this.setPageNum(pageNum);
			
 		}
	}

	public List getData() {
		return data;
	}

	public void setData(List data) {
		this.data = data;
	}

	public int getRowCount() {
		return rowCount;
	}

	public void setRowCount(int rowCount) {
		this.rowCount = rowCount;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getPageNum() {
		return pageNum;
		
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
		
		      //开始索引：（每页显示条数*当前页码）- 每页显示条数+1 = 每页显示条数*（当前页码-1）+1
				this.beginIndex = this.pageSize*(this.pageNum-1) + 1;
				
				
				//结束索引：每页显示条数*当前页码
				this.endIndex = this.pageSize * this.pageNum;
				if(this.rowCount<this.endIndex) 
				{
					this.endIndex=this.rowCount;
				}
		
	}

	public int getBeginIndex() {
		return beginIndex;
	}

	public void setBeginIndex(int beginIndex) {
		this.beginIndex = beginIndex;
	}

	public int getEndIndex() {
		return endIndex;
	}

	public void setEndIndex(int endIndex) {
		this.endIndex = endIndex;
	}

	@Override
	public String toString() {
		return "PageUtil [data=" + data + ", rowCount=" + rowCount + ", pageSize=" + pageSize + ", pageCount="
				+ pageCount + ", pageNum=" + pageNum + ", beginIndex=" + beginIndex + ", endIndex=" + endIndex + "]";
	}
	

	
	
}

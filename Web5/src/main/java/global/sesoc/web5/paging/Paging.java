package global.sesoc.web5.paging;

public class Paging {
	private int currentPage;
	private int pageSize;
	private int start;
	private int end;
	
	public Paging() {
		
	}
	
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}

	public void setParams() {
		this.start = ((currentPage-1)*pageSize)+1;
		this.end = start + (pageSize-1);
		
	}
	
	
	

}

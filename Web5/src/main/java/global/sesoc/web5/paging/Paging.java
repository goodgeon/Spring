package global.sesoc.web5.paging;

public class Paging {
	private int currentPage;
	private int pageSize;
	private final int rangeSize = 5;
	private int rangeStart;
	private int rangeEnd;
	private int start;
	private int end;
	private int currentRange;
	
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
	
	public int getRangeSize() {
		return rangeSize;
	}
	
	public int getRangeStart() {
		return rangeStart;
	}

	public void setRangeStart(int rangeStart) {
		this.rangeStart = rangeStart;
	}

	public int getRangeEnd() {
		return rangeEnd;
	}

	public void setRangeEnd(int rangeEnd) {
		this.rangeEnd = rangeEnd;
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
	
	public int getCurrentRange() {
		return currentRange;
	}

	public void setCurrentRange(int currentRange) {
		this.currentRange = currentRange;
	}

	public void setParams() {
		this.start = ((currentPage-1)*pageSize)+1;
		this.end = start + (pageSize-1);
		this.currentRange = ((currentPage-1)/5)+1; 
		this.rangeStart = rangeSize * currentRange - 4;
		this.rangeEnd = rangeSize * currentRange;
		
	}
	
	
	

}

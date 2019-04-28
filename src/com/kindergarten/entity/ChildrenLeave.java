package com.kindergarten.entity;

import java.util.Date;

public class ChildrenLeave {
	private Integer leaveId;

	private String leaveType;

	private Date leaveStart;
	
	private Date leaveEnd;

	private String leaveReason;

	private String leaveState;

	// leave-children many-one
	private Children children;
	

	public ChildrenLeave() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ChildrenLeave(Integer leaveId, String leaveType, Date leaveStart, Date leaveEnd, String leaveReason,
			String leaveState, Children children) {
		super();
		this.leaveId = leaveId;
		this.leaveType = leaveType;
		this.leaveStart = leaveStart;
		this.leaveEnd = leaveEnd;
		this.leaveReason = leaveReason;
		this.leaveState = leaveState;
		this.children = children;
	}

	public Integer getLeaveId() {
		return leaveId;
	}

	public void setLeaveId(Integer leaveId) {
		this.leaveId = leaveId;
	}

	public String getLeaveType() {
		return leaveType;
	}

	public void setLeaveType(String leaveType) {
		this.leaveType = leaveType;
	}

	public Date getLeaveStart() {
		return leaveStart;
	}

	public void setLeaveStart(Date leaveStart) {
		this.leaveStart = leaveStart;
	}

	public Date getLeaveEnd() {
		return leaveEnd;
	}

	public void setLeaveEnd(Date leaveEnd) {
		this.leaveEnd = leaveEnd;
	}

	public String getLeaveReason() {
		return leaveReason;
	}

	public void setLeaveReason(String leaveReason) {
		this.leaveReason = leaveReason;
	}

	public String getLeaveState() {
		return leaveState;
	}

	public void setLeaveState(String leaveState) {
		this.leaveState = leaveState;
	}

	public Children getChildren() {
		return children;
	}

	public void setChildren(Children children) {
		this.children = children;
	}

	@Override
	public String toString() {
		return "ChildrenLeave [leaveId=" + leaveId + ", leaveType=" + leaveType + ", leaveStart=" + leaveStart
				+ ", leaveEnd=" + leaveEnd + ", leaveReason=" + leaveReason + ", leaveState=" + leaveState
				+ ", children=" + children + "]";
	}
	
	
	


}
package com.webaid.domain;

public class AdviceVO {
	private String cname;
	private String pname;
	private String phone;
	private String email;
	private String nsite;
	private String rsite1;
	private String rsite2;
	private String upload;
	private String content;

	public AdviceVO() {
		super();
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNsite() {
		return nsite;
	}

	public void setNsite(String nsite) {
		this.nsite = nsite;
	}

	public String getRsite1() {
		return rsite1;
	}

	public void setRsite1(String rsite1) {
		this.rsite1 = rsite1;
	}

	public String getRsite2() {
		return rsite2;
	}

	public void setRsite2(String rsite2) {
		this.rsite2 = rsite2;
	}

	public String getUpload() {
		return upload;
	}

	public void setUpload(String upload) {
		this.upload = upload;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "AdviceVO [cname=" + cname + ", pname=" + pname + ", phone=" + phone + ", email=" + email + ", nsite="
				+ nsite + ", rsite1=" + rsite1 + ", rsite2=" + rsite2 + ", upload=" + upload + ", content=" + content
				+ "]";
	}

	

}

package com.model;

public class Trainee {

	private int tId;
	private String tName;
	private String tEmail;
	private double tMobNo;
	private double tAadharNo;
	private String tEduDetails;
	private int bussunitId;
	
	public Trainee() {
		
	}
		
	public Trainee(String tName, String tEmail, double tMobNo, double tAadharNo, String tEduDetails, int bussunitId) {
		super();
		this.tName = tName;
		this.tEmail = tEmail;
		this.tMobNo = tMobNo;
		this.tAadharNo = tAadharNo;
		this.tEduDetails = tEduDetails;
		this.bussunitId = bussunitId;
	}

	public Trainee(int tId, String tName, String tEmail, double tMobNo, double tAadharNo, String tEduDetails,
			int bussunitId) {
		super();
		this.tId = tId;
		this.tName = tName;
		this.tEmail = tEmail;
		this.tMobNo = tMobNo;
		this.tAadharNo = tAadharNo;
		this.tEduDetails = tEduDetails;
		this.bussunitId = bussunitId;
	}


	public int gettId() {
		return tId;
	}


	public void settId(int tId) {
		this.tId = tId;
	}


	public String gettName() {
		return tName;
	}


	public void settName(String tName) {
		this.tName = tName;
	}


	public String gettEmail() {
		return tEmail;
	}


	public void settEmail(String tEmail) {
		this.tEmail = tEmail;
	}


	public double gettMobNo() {
		return tMobNo;
	}


	public void settMobNo(double tMobNo) {
		this.tMobNo = tMobNo;
	}


	public double gettAadharNo() {
		return tAadharNo;
	}


	public void settAadharNo(double tAadharNo) {
		this.tAadharNo = tAadharNo;
	}


	public String gettEduDetails() {
		return tEduDetails;
	}


	public void settEduDetails(String tEduDetails) {
		this.tEduDetails = tEduDetails;
	}


	public int getBussunitId() {
		return bussunitId;
	}


	public void setBussunitId(int bussunitId) {
		this.bussunitId = bussunitId;
	}
	
	
}

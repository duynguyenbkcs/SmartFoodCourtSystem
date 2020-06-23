package com.foodcourt.common.model;

import com.foodcourt.common.UserType;

public class User {
	private long userID;
	private String username;
	private UserType userType;
	private long balance;
	
	public long getBalance() {
		return balance;
	}

	public void setBalance(long balance) {
		this.balance = balance;
	}

	public User() {
		
	}
	
	public User(User user) {
		this.userID = user.userID;
		this.username = user.username;
		this.userType = user.userType;
		this.balance=user.balance;
	}
	
	public long getUserID() {
		return userID;
	}
	public void setUserID(long userID) {
		this.userID = userID;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public UserType getUserType() {
		return userType;
	}
	public void setUserType(UserType userType) {
		this.userType = userType;
	}
}

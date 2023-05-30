package user;

import java.net.Inet4Address;
import java.net.UnknownHostException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class UserDTO {
	private int num;
	private String uname;
	private String ubirth;
	private String uid;
	private String upass;
	private String utel;
	private String uemail;
	private int upostcode; 
	private String uaddr;
	private String udetailaddr;
	private String ugender;
	private String agree;
	private String wdate;
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}

	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUbirth() {
		return ubirth;
	}
	public void setUbirth(String ubirth) {
		this.ubirth = ubirth;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getUpass() {
		return upass;
	}
	public void setUpass(String upass) {
		this.upass = upass;
	}
	public String getUtel() {
		return utel;
	}
	public void setUtel(String utel) {
		this.utel = utel;
	}
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	public int getUpostcode() {
		return upostcode;
	}
	public void setUpostcode(int upostcode) {
		this.upostcode = upostcode;
	}
	public String getUaddr() {
		return uaddr;
	}
	public void setUaddr(String uaddr) {
		this.uaddr = uaddr;
	}
	public String getUdetailaddr() {
		return udetailaddr;
	}
	public void setUdetailaddr(String udetailaddr) {
		this.udetailaddr = udetailaddr;
	}
	public String getUgender() {
		return ugender;
	}
	public void setUgender(String ugender) {
		this.ugender = ugender;
	}
	public String getAgree() {
		return agree;
	}
	public void setAgree(String agree) {
		this.agree = agree;
	}
	public String getWdate() {
		return wdate;
	}
	public void setWdate(String wdate) {
		   this.wdate = wdate;
	}
		
}

package project1.dto;

public class Member {

	private int id;
	private String email;
	private String ipassword;
	private String iname;
	private String contact;
	private String address;
	
	
	
	public Member(){
		
	}
	
	
	public Member(int id, String email, String ipassword, String iname, String contact, String address) {
		
		this.id = id;
		this.email = email;
		this.ipassword = ipassword;
		this.iname = iname;
		this.contact = contact;
		this.address = address;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getIpassword() {
		return ipassword;
	}
	public void setIpassword(String ipassword) {
		this.ipassword = ipassword;
	}
	public String getIname() {
		return iname;
	}
	public void setIname(String iname) {
		this.iname = iname;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	
}

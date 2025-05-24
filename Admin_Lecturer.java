package project1.dto;

public class Admin_Lecturer {

	private int A_id;
	private String A_email;
	private String A_password;
	private String A_name;
	private String A_contact;
	private String A_address;
	
	public Admin_Lecturer(){
		
	}

	public Admin_Lecturer(int a_id, String a_email, String a_password, String a_name, String a_contact,
			String a_address) {
		super();
		A_id = a_id;
		A_email = a_email;
		A_password = a_password;
		A_name = a_name;
		A_contact = a_contact;
		A_address = a_address;
	}

	public int getA_id() {
		return A_id;
	}

	public void setA_id(int a_id) {
		A_id = a_id;
	}

	public String getA_email() {
		return A_email;
	}

	public void setA_email(String a_email) {
		A_email = a_email;
	}

	public String getA_password() {
		return A_password;
	}

	public void setA_password(String a_password) {
		A_password = a_password;
	}

	public String getA_name() {
		return A_name;
	}

	public void setA_name(String a_name) {
		A_name = a_name;
	}

	public String getA_contact() {
		return A_contact;
	}

	public void setA_contact(String a_contact) {
		A_contact = a_contact;
	}

	public String getA_address() {
		return A_address;
	}

	public void setA_address(String a_address) {
		A_address = a_address;
	}
	
	
}

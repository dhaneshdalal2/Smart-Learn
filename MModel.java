
package project1.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import project1.Stac.ConnectToMysql;
import project1.dto.Admin_Lecturer;
import project1.dto.Member;

public class MModel {

	Connection cc = ConnectToMysql.startsConnection();

	public int checkingLogin(String nm, String pw) {
		int i = 0;
		try {
			System.out.println(nm + "  " + pw);
			PreparedStatement ps = cc
					.prepareStatement("select * from login_and_register where email=? and ipassword =?");
			ps.setString(1, nm);
			ps.setString(2, pw);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				i = 1;
			}
		} catch (SQLException e) {
			e.printStackTrace();

		}

		return i;
	}

	public int register_login(Member mem) {
		int i = 0;
		try {
			PreparedStatement ps = cc.prepareStatement("insert into login_and_register values(?,?,?,?,?,?)");

			ps.setString(2, mem.getEmail());
			ps.setInt(1, mem.getId());
			ps.setString(3, mem.getIpassword());
			ps.setString(4, mem.getIname());
			ps.setString(5, mem.getContact());
			ps.setString(6, mem.getAddress());

			i = ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return i;
	}

	public int checkAdminLogin(String email, String pass) {
		int i = 0;
		try {
			PreparedStatement ps = cc.prepareStatement("select * from Admin_login_and_register where A_email=? and A_password=?");
			ps.setString(1, email);
			ps.setString(2, pass);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				i = 1;
			}
		} catch (SQLException e) {
			e.printStackTrace();

		}
		return i;
	}

	public ArrayList<Member> getallStudent() {
		ArrayList<Member> al = new ArrayList<Member>();
		try {
			PreparedStatement ps = cc.prepareStatement("select * from login_and_register");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {

				Member me = new Member(rs.getInt("id"), rs.getString("email"), rs.getString("ipassword"),
						rs.getString("iname"), rs.getString("contact"), rs.getString("address"));
				al.add(me);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return al;
	}

	public int deleteData(int id) {
		int i = 0;
		try {
			PreparedStatement ps = cc.prepareStatement("delete from login_and_register where id=?");
			ps.setInt(1, id);
			i = ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return i;
	}

	public Member getaStudent(int id) {
		 Member mem = null;
		 try {
			 PreparedStatement ps = cc.prepareStatement("select * from login_and_register where id=?");
			 ps.setInt(1, id);
			 ResultSet rs = ps.executeQuery();
				while(rs.next()) {
					mem = new Member(rs.getInt("id"), rs.getString("email"), rs.getString("ipassword"), rs.getString("iname"),rs.getString("contact"), rs.getString("address"));
				}
		 }catch(SQLException e) {
			 e.printStackTrace();
	
		 }
	
	return mem;
}

	public int UpdateDetails(Member mem) {
	    int i=0;
	    try {
	        PreparedStatement ps = cc.prepareStatement("update login_and_register set email=?, ipassword=?, iname=?,contact=?,address=? where id=? ");
	        ps.setString(1,mem.getEmail());
	        ps.setString(2, mem.getIpassword());
	        ps.setString(3, mem.getIname());
	        ps.setString(4,mem.getContact());
	        ps.setString(5, mem.getAddress());
	        ps.setInt(6, mem.getId());
	        i = ps.executeUpdate();

	    } catch (SQLException e) {
	        e.printStackTrace(); 
	    }
	    
	    return i;
	}

	public int Admin_register(Admin_Lecturer al) {
		int i=0;
		try {
			PreparedStatement ps = cc.prepareStatement("insert into Admin_login_and_register value(?,?,?,?,?,?)");
			
		
			ps.setString(2, al.getA_email());
			ps.setInt(1, al.getA_id());
			ps.setString(3, al.getA_password());
			ps.setString(4, al.getA_name());
			ps.setString(5, al.getA_contact());
			ps.setString(6, al.getA_address());
			
			i = ps.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return i;
	}

}

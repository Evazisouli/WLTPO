package ismgroup46;
import java.util.ArrayList;
import java.util.List;
import java.sql.*;

public class ShelterService {

    public Shelter findShelter(String idShelter) throws Exception {

		DB db = new DB();
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String sqlQuery = "SELECT * FROM shelter WHERE idshelter=?;";

		try {
			con = db.getConnection();
			stmt = con.prepareStatement(sqlQuery);
			stmt.setString(1, idShelter);
			rs = stmt.executeQuery();

			if (!rs.next()) {
				return null;
			}

            Shelter shelter = new Shelter(rs.getString("idshelter"), rs.getString("name"), rs.getString("password"), rs.getString("city"), 
            rs.getString("area"), rs.getString ("address"), rs.getInt("postal_code"),
            rs.getString("contact"), rs.getString("mail"), rs.getString("phone"), rs.getString("description"), 
            rs.getString("needs"));
			rs.close();
			stmt.close();
			return shelter;
			
		} catch (Exception e) {
			throw new Exception(e.getMessage());
		} finally {
			try {
				db.close();
			} catch (Exception e) {

			}
		}	
	}
	
	public List<Shelter> showShelters() throws Exception {

		List<Shelter> shelters =  new ArrayList<Shelter>();

		DB db = new DB();
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String sqlQuery = "SELECT * FROM shelter;";

		try {
			con = db.getConnection();
			stmt = con.prepareStatement(sqlQuery);
			rs = stmt.executeQuery();

			while(rs.next()) {

				shelters.add(new Shelter(rs.getString("idshelter"), rs.getString("name"), rs.getString("password"), rs.getString("city"), rs.getString("area"), rs.getString("address"), 
                rs.getInt("postal_code"), rs.getString("contact"), rs.getString("mail"), rs.getString("phone"), 
                rs.getString("description"), rs.getString("needs")));
			}


			rs.close();
			stmt.close();
			return shelters;
			
		} catch (Exception e) {
			throw new Exception(e.getMessage());
		} finally {
			try {
				db.close();
			} catch (Exception e) {

			}
		}	
	}
	
	public Shelter authenticate(String username, String password) throws Exception {

		DB db = new DB();
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String sqlQuery = "SELECT * FROM shelter WHERE idshelter=? and password=?;";

		try {
			con = db.getConnection();
			stmt = con.prepareStatement(sqlQuery);

			stmt.setString(1, username); 
			stmt.setString(2, password);

			rs = stmt.executeQuery();

			if (!rs.next()) {
				return null;
			}

			Shelter shelter = new Shelter(rs.getString("idshelter"), 
			rs.getString("name"),  rs.getString("password"), rs.getString("city"), rs.getString("area"), rs.getString("address"), 
			rs.getInt("postal_code"), rs.getString("contact"), rs.getString("mail"), 
			rs.getString("phone"), rs.getString("description"), rs.getString("needs"));
			rs.close();
			stmt.close();

			return shelter;

		} catch (Exception e) {
			throw new Exception(e.getMessage());
		} finally {
			try {
				db.close();
			} catch (Exception e) {

			}

		}
	 } //End of authenticate
	
	public void register(Shelter shelter) throws Exception {

		DB db = new DB();
        Connection con = null;
        PreparedStatement stmt = null;
		String checkSql = "SELECT * FROM shelter WHERE idshelter = ?";
        String sql = "INSERT INTO shelter(idshelter, name, password, city, area, address, postal_code, contact, mail, phone, description, needs) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";

        try {
            
            con = db.getConnection();

            stmt = con.prepareStatement(checkSql);
            stmt.setString(1, shelter.getUsername());
            ResultSet rs = stmt.executeQuery();
 
            if (rs.next()) {
                rs.close();
                stmt.close();
                throw new Exception("Username already registered");
            }

            rs.close();
            
            stmt = con.prepareStatement(sql);

            stmt.setString(1, shelter.getUsername());
			stmt.setString(2, shelter.getName());
			 stmt.setString(3, shelter.getPassword());
			  stmt.setString(4, shelter.getCity());
			   stmt.setString(5, shelter.getArea());
			    stmt.setString(6, shelter.getAddress());
				 stmt.setInt(7, shelter.getPostal_code());
				  stmt.setString(8, shelter.getContact());
				   stmt.setString(9, shelter.getMail());
				   stmt.setString(10, shelter.getPhone());
				   stmt.setString(11, shelter.getDescription());
				   stmt.setString(12, shelter.getNeeds());

            stmt.executeUpdate();
            
            stmt.close();

        } catch (Exception e) {
            throw new Exception(e.getMessage());
        } finally {

            try {
                db.close();
            } catch (Exception e) {
                
            }
        }
	}//end of register

}//End of class
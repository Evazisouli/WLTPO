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
				throw new Exception("No Shelter item in database with that id");
			}

            Shelter shelter = new Shelter(rs.getString("idshelter"), rs.getString("name"), rs.getString("city"), 
            rs.getString("area"), rs.getString ("address"), rs.getInt("postal_code"),
            rs.getString("contact"), rs.getString("mail"), rs.getString("phone"), rs.getString("description"), 
            rs.getString("needs"), rs.getString("image"), rs.getString("fb"),
			rs.getString("twitter"), rs.getString("insta"));
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

				shelters.add(new Shelter(rs.getString("idshelter"), rs.getString("name"), rs.getString("city"), rs.getString("area"), rs.getString("address"), 
                rs.getInt("postal_code"), rs.getString("contact"), rs.getString("mail"), rs.getString("phone"), 
                rs.getString("description"), rs.getString("needs"), rs.getString("image"), 
                rs.getString("fb"), rs.getString("twitter"), rs.getString("insta")));
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
}
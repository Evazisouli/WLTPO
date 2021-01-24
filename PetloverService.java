package ismgroup46;
import java.sql.*;
public class PetloverService {

    public Petlover authenticate(String username, String password) throws Exception {

		DB db = new DB();
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String sqlQuery = "SELECT * FROM petlover WHERE idpetlover=? and password=?;";

		try {
			con = db.getConnection();
			stmt = con.prepareStatement(sqlQuery);

			stmt.setString(1, username); 
			stmt.setString(2, password);

			rs = stmt.executeQuery();

			if (!rs.next()) {
				return null;
			}

			Petlover petlover = new Petlover(rs.getString("idpetlover"), rs.getString("password"), 
			rs.getString("name"), rs.getString("surname"), rs.getString("city"), rs.getString("area"), 
			rs.getString("mail"), rs.getString("phone"), rs.getString("description"), 
			rs.getString("fb"), rs.getString("twitter"), rs.getString("insta"), rs.getString("image"));
			rs.close();
			stmt.close();

			return petlover;

		} catch (Exception e) {
			throw new Exception(e.getMessage());
		} finally {
			try {
				db.close();
			} catch (Exception e) {

			}

		}
	 } //End of authenticate

	 public Petlover findPetlover(String idPetlover) throws Exception {

		DB db = new DB();
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String sqlQuery = "SELECT * FROM petlover WHERE idpetlover=?;";

		try {
			con = db.getConnection();
			stmt = con.prepareStatement(sqlQuery);
			stmt.setString(1, idPetlover);
			rs = stmt.executeQuery();

			if (!rs.next()) {
				throw new Exception("No Petlover item in database with that id");
			}

            Petlover petlover = new Petlover(rs.getString("idpetlover"), rs.getString("password"), 
			rs.getString("name"), rs.getString("surname"), rs.getString("city"), rs.getString("area"), 
			rs.getString("mail"), rs.getString("phone"), rs.getString("description"), 
			rs.getString("fb"), rs.getString("twitter"), rs.getString("insta"), rs.getString("image"));
			rs.close();
			stmt.close();
			return petlover;
			
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

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
			rs.getString("mail"), rs.getString("phone"), rs.getString("description"), rs.getString("image"));
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
			rs.getString("mail"), rs.getString("phone"), rs.getString("description"),  rs.getString("image"));
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

	public void register(Petlover petlover) throws Exception {

		DB db = new DB();
        Connection con = null;
        PreparedStatement stmt = null;
		String checkSql = "SELECT * FROM petlover WHERE idpetlover = ?";
        String sql = "INSERT INTO petlover(idpetlover, password, name, surname, city, area, mail, phone, description) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);";

        try {
            
            con = db.getConnection();

            stmt = con.prepareStatement(checkSql);
            stmt.setString(1, petlover.getUsername());
            ResultSet rs = stmt.executeQuery();
 
            if (rs.next()) {
                rs.close();
                stmt.close();
                throw new Exception("Username already registered");
            }

            rs.close();
            
            stmt = con.prepareStatement(sql);

            stmt.setString(1, petlover.getUsername());
			stmt.setString(2, petlover.getPassword());
			 stmt.setString(3, petlover.getName());
			  stmt.setString(4, petlover.getSurname());
			   stmt.setString(5, petlover.getCity());
			    stmt.setString(6, petlover.getArea());
				 stmt.setString(7, petlover.getMail());
				  stmt.setString(8, petlover.getPhone());
				   stmt.setString(9, petlover.getDescription());

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




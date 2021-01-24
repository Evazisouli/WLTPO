package ismgroup46;

import java.sql.*;

public class AdoptionService {

    public Adoption findAdoption(String idAdoption) throws Exception {

		DB db = new DB();
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String sqlQuery = "SELECT * FROM adoption WHERE idadoption=?;";

		try {
			con = db.getConnection();
			stmt = con.prepareStatement(sqlQuery);
			stmt.setString(1, idAdoption);
			rs = stmt.executeQuery();

			if (!rs.next()) {
				throw new Exception("No adoption item in database with that id");
			}

            Adoption adoption = new Adoption(rs.getString("idadoption"), 
            rs.getDate("date"), rs.getString("shelter_idshelter"), rs.getString("petlover_idpetlover"));
			rs.close();
			stmt.close();
			return adoption;
			
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
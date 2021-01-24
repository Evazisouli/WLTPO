package ismgroup46;
import java.util.ArrayList;
import java.util.List;

import java.sql.*;

public class LostpetService {
    public Lostpet findLostpet (String idLostpet) throws Exception {
        DB db = new DB();
		Connection con = null;
		PreparedStatement stmt = null;
        ResultSet rs = null;
        String sqlQuery = "SELECT * FROM lostpet WHERE idlostpet = ?;";
        try {
			con = db.getConnection();
			stmt = con.prepareStatement(sqlQuery);
			stmt.setString(1, idLostpet);
			rs = stmt.executeQuery();

			if (!rs.next()) {
				throw new Exception("No lostpet item in database with that id");
			}
        Lostpet lostpet = new Lostpet(rs.getString("idlostpet"), 
        rs.getDate("date"), rs.getString("city"), rs.getString("area"), rs.getString("street"), rs.getString("kind"), rs.getString("name"),
        rs.getString("phone"), rs.getString("description"), rs.getString("image"), rs.getString("petlover_idpetlover"), rs.getString("shelter_idshelter"));
        rs.close();
        stmt.close();
        return lostpet;
        
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        } finally {
            try {
                db.close();
            } catch (Exception e) {

            }
        }
    }

    public List<Lostpet> showLostpets() throws Exception {
        List<Lostpet> lostpets = new ArrayList<Lostpet>();
        DB db = new DB();
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
        String sqlQuery = "SELECT * FROM lostpet;";
        try {
			con = db.getConnection();
			stmt = con.prepareStatement(sqlQuery);
			rs = stmt.executeQuery();

			while(rs.next()) {
                lostpets.add(new Lostpet(rs.getString("idlostpet"), 
                 rs.getDate("date"), rs.getString("city"), rs.getString("area"), rs.getString("street"), rs.getString("kind"), rs.getString("name"),
                rs.getString("phone"), rs.getString("description"), rs.getString("image"), rs.getString("petlover_idpetlover"), rs.getString("shelter_idshelter")));
            }
            rs.close();
			stmt.close();
			return lostpets;
			
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
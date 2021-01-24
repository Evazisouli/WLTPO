package ismgroup46;
import java.util.ArrayList;
import java.util.List;


import java.sql.*;

public class PetService {

    public Pet findPet(String idpet) throws Exception {

		DB db = new DB();
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String sqlQuery = "SELECT * FROM pet WHERE idpet=?;";

		try {
			con = db.getConnection();
			stmt = con.prepareStatement(sqlQuery);
			stmt.setString(1, idpet);
			rs = stmt.executeQuery();

			if (!rs.next()) {
				throw new Exception("No animal in database with that id");
			}

            Pet pet = new Pet(rs.getString("idpet"), rs.getString("name"), rs.getString("kind"), rs.getInt("age"), rs.getString("size"), 
                rs.getString("sex"), rs.getString("discript"), rs.getString("health_card"), rs.getString("health_probs"), 
                rs.getString("sterilisation"), rs.getString("microchipid"), rs.getString("contract"), 
                rs.getString("kids"), rs.getString("other_pets"), rs.getString("image"), rs.getString("adoption_idadoption"));
			rs.close();
			stmt.close();
			return pet;
			
		} catch (Exception e) {
			throw new Exception(e.getMessage());
		} finally {
			try {
				db.close();
			} catch (Exception e) {

			}
		}	
    }

	public List<Pet> showPets() throws Exception {

		List<Pet> pets =  new ArrayList<Pet>();

		DB db = new DB();
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String sqlQuery = "SELECT * FROM pet;";

		try {
			con = db.getConnection();
			stmt = con.prepareStatement(sqlQuery);
			rs = stmt.executeQuery();

			while(rs.next()) {

				pets.add(new Pet(rs.getString("idpet"), rs.getString("name"), rs.getString("kind"), rs.getInt("age"), rs.getString("size"), 
                rs.getString("sex"), rs.getString("discript"), rs.getString("health_card"), rs.getString("health_probs"), 
                rs.getString("sterilisation"), rs.getString("microchipid"), rs.getString("contract"), 
                rs.getString("kids"), rs.getString("other_pets"), rs.getString("image"), rs.getString("adoption_idadoption")));
			}


			rs.close();
			stmt.close();
			return pets;
			
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
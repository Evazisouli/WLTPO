package ismgroup46;
import java.sql.*;
public class UploadService { 

public void register(Upload upload) throws Exception {

		DB db = new DB();
        Connection con = null;
        PreparedStatement stmt = null;
        String sql = "INSERT INTO Upload(UploadID, sex, kind, size, name, age, city, area, phone, email, description, microchipid, health_card, health_probs, sterilisation, contract, kids, other_pets) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";

        try {
            
            con = db.getConnection();
            stmt = con.prepareStatement(sql);
 
            stmt.setString(1, upload.getUploadid());
			stmt.setString(2, upload.getSex());
			stmt.setString(3, upload.getKind());
		    stmt.setString(4, upload.getSize());
			   stmt.setString(5, upload.getName());
			    stmt.setString(6, upload.getAge());
				 stmt.setString(7, upload.getCity());
				  stmt.setString(8, upload.getArea());
				   stmt.setString(9, upload.getPhone());
                    stmt.setString(10, upload.getMail());
                     stmt.setString(11, upload.getDescription());
                      stmt.setString(12, upload.getMicrochipid());
                       stmt.setString(13, upload.getHealth_card());
                        stmt.setString(14, upload.getHealth_probs());
                         stmt.setString(15, upload.getSterilisation());
                          stmt.setString(16, upload.getContract());
                           stmt.setString(17, upload.getKids());
                            stmt.setString(18, upload.getOther_pets());

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

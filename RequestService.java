package ismgroup46;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Date;


public class RequestService {
       public void createRequest(Request request) throws Exception {

	  DB db = new DB();
      Connection con = null;
      PreparedStatement stmt = null;
      String sqlQuery = "INSERT INTO request(idrequest,date,petlover_idpetlover,adoption_idadoption) VALUES (?,?,?,?);";

      try {
        con=db.getConnection();
        stmt= con.prepareStatement(sqlQuery);
		stmt.setString(1,request.getidrequest());
		stmt.setDate(2,request.getDate());
        stmt.setString(3,request.getiduser());
        stmt.setString(4,request.getidadoption());
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

    }

    public void deleteRequest(String request) throws Exception {

      DB db = new DB();
        Connection con = null;
        PreparedStatement stmt = null;
        String sqlQuery = "DELETE FROM request WHERE idrequest= ? ;";
  
        try {
          con=db.getConnection();
          stmt= con.prepareStatement(sqlQuery);
          stmt.setString(1,request);
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
  
      }
}
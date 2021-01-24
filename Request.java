package ismgroup46;
import java.sql.Date;
import java.util.UUID;




public class Request {
	
	private String idrequest;
	private String iduser;
    private Date date;
	private String idadoption;
		
	public Request(String idrequest, Date date, String iduser, String idadoption) {
				
		this.idrequest = idrequest;
		this.date = date;
		this.iduser = iduser;	
		this.idadoption = idadoption;	
	
	}
	
	/* Getters & Setters */
	

	public String getidrequest() {
		return idrequest;
	}
	
	public String getiduser() {
		return iduser;
	}

	public String getidadoption() {
		return idadoption;
	}

	public void setiduser(String iduser) {
		this.iduser = iduser;
	}

	public Date getDate() {
		return date;
	}
	
	/**
	 * @param date the date to set
	 */
	public void setDate(Date date) {
		this.date = date;
	}
	
} //End of class

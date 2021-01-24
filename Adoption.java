package ismgroup46;

import java.util.Date;

public class Adoption {
	
	private String idadoption;
	private Date date;
	private String idshelter;
	private String idpetlover;
	
	public Adoption(String idadoption, Date date, String idshelter, String idpetlover) {
		this.idadoption = idadoption;
		this.date = date;
		this.idshelter = idshelter;
		this.idpetlover = idpetlover;
	}

	public String getIdadoption() {
		return idadoption;
	}

	public void setIdadoption(String idadoption) {
		this.idadoption = idadoption;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getIdshelter() {
		return idshelter;
	}

	public void setIdshelter(String idshelter) {
		this.idshelter = idshelter;
	}

	public String getIdpetlover() {
		return idpetlover;
	}

	public void setIdpetlover(String idpetlover) {
		this.idpetlover = idpetlover;
	}
	
	@Override
	public String toString() {
		return "Adoption [idadoption=" + idadoption + ", date=" + date + ", idshelter=" + idshelter + ", idpetlover="
				+ idpetlover + "]";
	}
	
}
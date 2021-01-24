package ismgroup46;

import java.util.Date;

public class Lostpet {
    private String idlostpet;
    private Date date;
    private String city;
    private String area;
    private String street;
	private String kind;
	private String name;
	private String phone;
	private String description;
	private String image;
    private String petlover_idpetlover;
    private String shelter_idshelter;

	public Lostpet(String idlostpet, Date date, String city, String area, String street, String kind, String name,
			String phone, String description, String image, String petlover_idpetlover, String shelter_idshelter) {
		this.idlostpet = idlostpet;
		this.date = date;
		this.city = city;
		this.area = area;
		this.street = street;
		this.kind = kind;
		this.name = name;
		this.phone = phone;
		this.description = description;
		this.image = image;
		this.petlover_idpetlover = petlover_idpetlover;
		this.shelter_idshelter = shelter_idshelter;
	}

	public String getIdlostpet() {
		return idlostpet;
	}

	public void setIdlostpet(String idlostpet) {
		this.idlostpet = idlostpet;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getPetlover_idpetlover() {
		return petlover_idpetlover;
	}

	public void setPetlover_idpetlover(String petlover_idpetlover) {
		this.petlover_idpetlover = petlover_idpetlover;
	}

	public String getShelter_idshelter() {
		return shelter_idshelter;
	}

	public void setShelter_idshelter(String shelter_idshelter) {
		this.shelter_idshelter = shelter_idshelter;
	}
}
	
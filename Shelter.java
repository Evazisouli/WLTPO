package ismgroup46;

public class Shelter {
    private String username;
	private String name;
	private String password;
	private String city;
	private String area;
	private String address;
	private int postal_code;
	private String contact;
	private String mail;
	private String phone;
	private String description;
	private String needs;
	private String image;


    
	public Shelter(String username, String name, String password, String city, String area, String address, int postal_code,
			String contact, String mail, String phone, String description, String needs, String image) {
		
		this.username = username;
		this.name = name;
		this.password = password;
		this.city = city;
		this.area = area;
		this.address = address;
		this.postal_code = postal_code;
		this.contact = contact;
		this.mail = mail;
		this.phone = phone;
		this.description = description;
		this.needs = needs;
		this.image = image;

	}
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getPostal_code() {
		return postal_code;
	}
	public void setPostal_code(int postal_code) {
		this.postal_code = postal_code;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
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
	public String getNeeds() {
		return needs;
	}
	public void setNeeds(String needs) {
		this.needs = needs;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	
	
}
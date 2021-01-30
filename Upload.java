package ismgroup46;

public class Upload {

	private String uploadid;
	private String sex;
	private String kind;
	private String size;
	private String name;
    private String age;
    private String city;
    private String area;
    private String phone;
    private String email;
    private String description;
    private String microchipid;
    private String health_card;
	private String health_probs;
	private String sterilisation;
    private String contract;
    private String kids;
	private String other_pets;
	
	public Upload(String uploadid, String sex, String kind, String size, String name, String age, String city, String area, String phone, String email, String description, String health_card, String health_probs, String sterilisation, String microchipid, String contract, String kids, String other_pets) {
		
        this.uploadid =  uploadid;
        this.sex = sex;
        this.kind = kind;
        this.size = size;
        this.name = name;
        this.age = age;
        this.city = city;
        this.area = area;
        this.phone = phone;
        this.email = email;
        this.description = description;
        this.health_card = health_card;
        this.health_probs = health_probs;
        this.sterilisation = sterilisation;
        this.contract = contract;
        this.kids = kids;
        this.other_pets = other_pets;
	}

    
	public String getUploadid() {
		return uploadid;
	}

	public void setUploadid(String idpet) {
		this.uploadid = uploadid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
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

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }


    public String getMail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getHealth_card() {
		return health_card;
	}

	public void setHealth_card(String health_card) {
		this.health_card = health_card;
	}

	public String getHealth_probs() {
		return health_probs;
	}

	public void setHealth_probs(String health_probs) {
		this.health_probs = health_probs;
	}

	public String getSterilisation() {
		return sterilisation;
	}

	public void setSterilisation(String sterilisation) {
		this.sterilisation = sterilisation;
	}

	public String getMicrochipid() {
		return microchipid;
	}

	public void setMicrochipid(String microchipid) {
		this.microchipid = microchipid;
	}

	public String getContract() {
		return contract;
	}

	public void setContract(String contract) {
		this.contract = contract;
	}

	public String getKids() {
		return kids;
	}

	public void setKids(String kids) {
		this.kids = kids;
	}

	public String getOther_pets() {
		return other_pets;
	}

	public void setOther_pets(String other_pets) {
		this.other_pets = other_pets;
	}
}
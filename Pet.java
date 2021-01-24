package ismgroup46;

public class Pet {

	private String idpet;
	private String name;
	private String kind;
	private int age;
	private String size;
    private String sex;
    private String health_card;
	private String health_probs;
	private String sterilisation;
	private String microchipid;
    private String contract;
    private String kids;
	private String other_pets;
	private String idadoption;
	private String image;
	
	public Pet( String idpet, String name, String kind, int age, String size, String sex, String health_card, String health_probs, String sterilisation, String microchipid, String contract, String kids, String other_pets, String image, String idadoption) {
		
		this.idpet = idpet;
		this.name = name;
		this.kind = kind;
		this.age = age;
		this.size = size;
        this.sex = sex;
        this.health_card = health_card;
		this.health_probs = health_probs;
		this.sterilisation = sterilisation;
		this.microchipid = microchipid;
        this.contract = contract;
        this.kids = kids;
		this.other_pets = other_pets;
		this.idadoption = idadoption;
		this.image = image;
	}

	public String getIdpet() {
		return idpet;
	}

	public void setIdpet(String idpet) {
		this.idpet = idpet;
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

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
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
	
	public String getIdadoption() {
		return idadoption;
	}

	public void setIdadoption(String idadoption) {
		this.idadoption = idadoption;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	@Override
	public String toString() {
		return "Pet [name=" + name + ", kind=" + kind + ", age=" + age + ", size=" + size + ", sex=" + sex
				+ ", health_card=" + health_card + ", health_probs=" + health_probs + ", sterilisation=" + sterilisation
				+ ", microchipid=" + microchipid + ", contract=" + contract + ", kids=" + kids + ", other_pets="
				+ other_pets + ", idadoption=" + idadoption + "]";
	}
	
	
}

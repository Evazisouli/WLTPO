package ismgroup46;
public class Petlover {
    private String username;
    private String password;
    private String name;
    private String surname;
    private String city;
    private String area;
    private String mail;
    private String phone;
    private String description;
    private String image;

    public Petlover(String username, String password, String name, String surname, 
    String city, String area, String mail, String phone, String description,  String image) {
        this.username = username;
        this.password = password;
        this.name = name;
        this.surname = surname;
        this.city = city;
        this.area = area;
        this.mail = mail;
        this.phone = phone;
        this.description = description;
        this.image = image;
        }


    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
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

    public String getMail() {
        return mail;
    }

    public void setEmail(String mail) {
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

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

}
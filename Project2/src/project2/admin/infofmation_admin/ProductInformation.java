/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project2.admin.infofmation_admin;

/**
 *
 * @author son
 */
public class ProductInformation {
    private String id;
    private String name;
    private String category;
    private byte[] MyImage;
    private String decritble;
    private Float price;

    public ProductInformation(String id, String name, String category, byte[] MyImage, String decritble, Float price) {
        this.id = id;
        this.name = name;
        this.category = category;
        this.MyImage = MyImage;
        this.decritble = decritble;
        this.price = price;
    }
    
    

   

    public ProductInformation() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public String getDecritble() {
        return decritble;
    }

    public void setDecritble(String decritble) {
        this.decritble = decritble;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public byte[] getMyImage() {
        return MyImage;
    }

    public void setMyImage(byte[] image) {
        this.MyImage = image;
    }
    
    
}

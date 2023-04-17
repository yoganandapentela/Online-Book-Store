package in.ineuron.dto;

import java.io.Serializable;

public class Book implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private String id;
	private String name;
	private String author ;
	private String type;
	private Integer edition;
	private Integer price;
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
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Integer getEdition() {
		return edition;
	}
	public void setEdition(Integer edition) {
		this.edition = edition;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "Book [id=" + id + ", name=" + name + ", author=" + author + ", type=" + type + ", edition=" + edition
				+ ", price=" + price + "]";
	}
	
	
}

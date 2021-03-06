package org.beesden.shop.model;

import java.sql.Date;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "bees_product")
public class Product extends ModelContent {
	private static final long serialVersionUID = 1L;

	@Column(name = "availability")
	private Integer availability;

	@ManyToMany(fetch = FetchType.EAGER)
	@JoinTable(name = "bees_category_product", joinColumns = @JoinColumn(name = "productId"), inverseJoinColumns = @JoinColumn(name = "categoryId"))
	private Set<Category> categories;

	@Transient
	private String categorySave;

	@Transient
	private Double maxPrice;

	@Transient
	private Double minPrice;

	@Column(name = "preOrderDate")
	private Date preOrderDate;

	@Column(name = "productCode", unique = true)
	private String productCode;

	@Transient
	private Integer stock;

	@OneToMany(mappedBy = "product", fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	private List<Variant> variants;

	// Getters and Setters

	public Integer getAvailability() {
		return availability;
	}

	public Set<Category> getCategories() {
		return categories;
	}

	public String getCategorySave() {
		return categorySave;
	}

	public Double getMaxPrice() {
		Double price = new Double(0);
		for (Variant variant : this.getVariants()) {
			price = variant.getPrice() > price ? variant.getPrice() : price;
		}
		return price;
	}

	public Double getMinPrice() {
		Double price = new Double(0);
		for (Variant variant : this.getVariants()) {
			price = variant.getPrice() < price || price == 0 ? variant.getPrice() : price;
		}
		return price;
	}

	public Date getPreOrderDate() {
		return preOrderDate;
	}

	public String getProductCode() {
		return productCode;
	}

	public Integer getStock() {
		Integer stock = 0;
		for (Variant variant : this.getVariants()) {
			stock = stock + (variant.getStock() > 0 ? variant.getStock() : variant.getStock());
		}
		return stock;
	}

	public List<Variant> getVariants() {
		return variants;
	}

	public void setAvailability(Integer availability) {
		this.availability = availability;
	}

	public void setCategories(Set<Category> categories) {
		this.categories = categories;
	}

	public void setCategorySave(String categorySave) {
		this.categorySave = categorySave;
	}

	public void setMaxPrice(Double maxPrice) {
		this.maxPrice = maxPrice;
	}

	public void setMinPrice(Double minPrice) {
		this.minPrice = minPrice;
	}

	public void setPreOrderDate(Date preOrderDate) {
		this.preOrderDate = preOrderDate;
	}

	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}

	public void setStock(Integer stock) {
		this.stock = stock;
	}

	public void setVariants(List<Variant> variants) {
		this.variants = variants;
	}

}
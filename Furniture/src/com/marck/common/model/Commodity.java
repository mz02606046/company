package com.marck.common.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name="commodity")
public class Commodity {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column
	private Integer id;
	@Column
	private String title;
	@Column
	private Integer typeId;
	@Column
	private Integer subTypeId;
	@Column
	private String addTime;
	@Column
	private String endTime;
	@Column
	private Integer price;
	@Column
	private Integer num;
	@Column
	private String content;
	@Column
	private String logo;
	@Column
	private Integer supplyDemand;
	@Column
	private String digest;
	@Column
	private String preference;
	@Column
	private Integer menuId;
	@Column
	private Integer isTop;
	@Column
	private Integer category;
	@Column
	private Double lng;
	@Column
	private Double lat;
	@Column
	private Integer cityId;
	@Column
	private Integer areaId;
	@Column
	private String company;
	@Column
	private String tel;
	@Column
	private String address;
	@Column
	private String contact;
	@Column
	private Integer status;
	@Column
	private Integer sellerId;
	@Transient
	private Integer userId;
	@Transient
	private Integer type;
	
	public Integer getType() {
		return null == type ? 0 : type;
	
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public Integer getUserId() {
		return null == userId ? 0 : userId;
	
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public Integer getSellerId() {
		return null == sellerId ? 0 : sellerId;
	
	}
	public void setSellerId(Integer sellerId) {
		this.sellerId = sellerId;
	}
	public Integer getStatus() {
		return null == status ? 0 : status;
	
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public Double getLng() {
		return null == lng ? 0 : lng;
	
	}
	public void setLng(Double lng) {
		this.lng = lng;
	}
	public Double getLat() {
		return null == lat ? 0 : lat;
	
	}
	public void setLat(Double lat) {
		this.lat = lat;
	}
	public Integer getCityId() {
		return null == cityId ? 0 : cityId;
	
	}
	public void setCityId(Integer cityId) {
		this.cityId = cityId;
	}
	public Integer getAreaId() {
		return null == areaId ? 0 : areaId;
	
	}
	public void setAreaId(Integer areaId) {
		this.areaId = areaId;
	}
	public String getCompany() {
		return null == company ? "" : company;
	
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getTel() {
		return null == tel ? "" : tel;
	
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAddress() {
		return null == address ? "" : address;
	
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getContact() {
		return null == contact ? "" : contact;
	
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getAddTime() {
		return null == addTime?"":addTime;
	
	}
	public void setAddTime(String addTime) {
		this.addTime = addTime;
	}
	public String getEndTime() {
		return null == endTime?"":endTime;
	
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public Integer getCategory() {
		return null == category?0:category;
	
	}
	public void setCategory(Integer category) {
		this.category = category;
	}
	public Integer getId() {
		return null == id ? 0 : id;
	
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitle() {
		return null == title ? "" : title;
	
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Integer getTypeId() {
		return null == typeId ? 0 : typeId;
	
	}
	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
	}
	public Integer getSubTypeId() {
		return null == subTypeId ? 0 : subTypeId;
	
	}
	public void setSubTypeId(Integer subTypeId) {
		this.subTypeId = subTypeId;
	}
	public Integer getPrice() {
		return null == price ? 0 : price;
	
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public Integer getNum() {
		return null == num ? 0 : num;
	
	}
	public void setNum(Integer num) {
		this.num = num;
	}
	public String getContent() {
		return null == content ? "" : content;
	
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getLogo() {
		return null == logo ? "" : logo;
	
	}
	public void setLogo(String logo) {
		this.logo = logo;
	}
	public Integer getSupplyDemand() {
		return null == supplyDemand ? 0 : supplyDemand;
	
	}
	public void setSupplyDemand(Integer supplyDemand) {
		this.supplyDemand = supplyDemand;
	}
	public String getDigest() {
		return null == digest ? "" : digest;
	
	}
	public void setDigest(String digest) {
		this.digest = digest;
	}
	public String getPreference() {
		return null == preference ? "" : preference;
	
	}
	public void setPreference(String preference) {
		this.preference = preference;
	}
	public Integer getMenuId() {
		return null == menuId ? 0 : menuId;
	
	}
	public void setMenuId(Integer menuId) {
		this.menuId = menuId;
	}
	public Integer getIsTop() {
		return null == isTop ? 0 : isTop;
	
	}
	public void setIsTop(Integer isTop) {
		this.isTop = isTop;
	}

}

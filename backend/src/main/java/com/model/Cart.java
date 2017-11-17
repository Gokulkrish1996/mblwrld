package com.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;


@Entity
@Table
public class Cart
{
	@Id
	@GeneratedValue
	int cartId;
	String cartProdName;
	int cartproductId;
	
	@OneToOne(fetch= FetchType.LAZY)
	@JoinColumn(name="userEmail")
	User CartUserDetails;
	

	int cartPrice;
	int cartQnty;
	String cartImg;
	public int getCartId() {
		return cartId;
	}
	public void setCartId(int cartId) {
		this.cartId = cartId;
	}
	public String getCartProdName() {
		return cartProdName;
	}
	public void setCartProdName(String cartProdName) {
		this.cartProdName = cartProdName;
	}
	public int getCartproductId() {
		return cartproductId;
	}
	public void setCartproductId(int cartproductId) {
		this.cartproductId = cartproductId;
	}
	public User getCartUserDetails() {
		return CartUserDetails;
	}
	public void setCartUserDetails(User cartUserDetails) {
		CartUserDetails = cartUserDetails;
	}
	public int getCartPrice() {
		return cartPrice;
	}
	public void setCartPrice(int cartPrice) {
		this.cartPrice = cartPrice;
	}
	public int getCartQnty() {
		return cartQnty;
	}
	public void setCartQnty(int cartQnty) {
		this.cartQnty = cartQnty;
	}
	public String getCartImg() {
		return cartImg;
	}
	public void setCartImg(String cartImg) {
		this.cartImg = cartImg;
	}
	
	
}

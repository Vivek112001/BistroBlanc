package com.bistroblanc.BistroBlanc;

public class CartNotFoundException extends RuntimeException{
	
	public CartNotFoundException() {
		super("Could Not Get CartId & Respective email So Please Login First  ");
	}
}

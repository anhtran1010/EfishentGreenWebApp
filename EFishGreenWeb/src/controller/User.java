package controller;
import java.util.LinkedHashMap;

public class User {
	private LinkedHashMap<String, String[]> data;
	private DbController2<?> db;
	public User() {
		db = new DbController2<Object>();
		data = new LinkedHashMap<String, String[]>();
	}
	public DbController2<?> getdb() {
		return db;
	}
	public LinkedHashMap<String, String[]> getImport(){
		return data;
	}
	
	public void setImport(LinkedHashMap<String, String[]> input) {
		this.data = input;
	}
}

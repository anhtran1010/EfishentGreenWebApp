import java.util.LinkedHashMap;

public class user {
	private LinkedHashMap<String, String[]> data;
	private DbController2 db;
	public user() {
		db = new DbController2();
		data = new LinkedHashMap<String, String[]>();
	}
	public DbController2 getdb() {
		return db;
	}
	public LinkedHashMap<String, String[]> getImport(){
		return data;
	}
	
	public void setImport(LinkedHashMap<String, String[]> input) {
		this.data = input;
	}
}

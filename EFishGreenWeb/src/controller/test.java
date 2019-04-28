package controller;

import java.util.LinkedHashMap;

public class test {

	public static void main(String[] args) {
		DbController2<?> newDb = new DbController2<Object>();
		newDb.get();
		parse imp = new parse();
		imp.run();
		LinkedHashMap<String, String[]> data = imp.get();
	}

}

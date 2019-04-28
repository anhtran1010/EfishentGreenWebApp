package controller;
import java.io.File;
import java.util.LinkedHashMap;
import java.util.Set;

import javax.swing.JFileChooser;
import javax.swing.JFrame;

public class parse {
	private LinkedHashMap<String, String[]> data;
	private DbController2 db;
	File file;
	public parse() {
		data = new LinkedHashMap<String, String[]>();
	}
	public void run() {
        System.out.println("here2");
		db = new DbController2();
		JFileChooser c = new JFileChooser();
		final JFrame frame = new JFrame();
        // Demonstrate "Open" dialog:
        int rVal = c.showOpenDialog(frame);
        System.out.println("here3");
        if (rVal == JFileChooser.APPROVE_OPTION) {
          file = c.getSelectedFile();
          //file.toString();
          System.out.print(file.toString());
          parseFile parser = new parseFile(data, file);
          //Set<String> keys = data.keySet();
         // for(String key : keys) {
        	//  db.insert(key, data.get(key));
         // }
        }
	}
	
	public LinkedHashMap<String, String[]> get() {
		return data;
	}
}

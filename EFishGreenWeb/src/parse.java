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
		db = new DbController2();
		data = new LinkedHashMap<String, String[]>();
	}
	public void run() {
		JFileChooser c = new JFileChooser();
		final JFrame frame = new JFrame();
        // Demonstrate "Open" dialog:
        int rVal = c.showOpenDialog(frame);
        if (rVal == JFileChooser.APPROVE_OPTION) {
          file = c.getSelectedFile();
          parseFile parser = new parseFile(data, file);
          Set<String> keys = data.keySet();
          for(String key : keys) {
        	  db.insert(key, data.get(key));
          }
        }
	}
	
	public LinkedHashMap<String, String[]> get() {
		return data;
	}
}

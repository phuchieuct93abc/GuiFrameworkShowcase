package ch.axonivy.fintech.showcase;

import java.io.IOException;
import java.nio.file.Files;

public class CodeDemo {
	
	
	private String fileName;
	private String content;
	private String filePath;

	public CodeDemo(String fileName, String filePath) {
		this.fileName = fileName;
		this.filePath = filePath;
	}

	public String getFileName() {
		return fileName;
	}

	public String getContent() throws IOException {
		if (content == null) {
			ResourceLoader loader = new ResourceLoader();
			content = new String(Files.readAllBytes(loader.getResource(filePath)));

		}
		return content;
	}
}

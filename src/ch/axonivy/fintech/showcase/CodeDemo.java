package ch.axonivy.fintech.showcase;

import java.io.IOException;
import java.nio.file.Files;

public class CodeDemo {
	
	
	private String fileName;
	private String content;
	private String filePath;

	private String fileType;
	public String getFileType() {
		return fileType;
	}

	public CodeDemo(String fileName, String filePath,String fileType) {
		this.fileName = fileName;
		this.filePath = filePath;
		this.fileType = fileType;
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

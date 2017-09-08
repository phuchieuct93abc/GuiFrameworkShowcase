package ch.axonivy.fintech.showcase;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

public abstract class AbstractCode {
	String fileName;
	public String getFileName() {
		return fileName;
	}

	String fileContent;
	Path path;

	AbstractCode(String filePath) {
		ResourceLoader loader = new ResourceLoader();
		path = loader.getResource(filePath);
		this.fileName = path.getFileName().toString();
	}

	public String getFileContent() throws IOException {

		return new String(Files.readAllBytes(path));
	}

	public abstract String getFileType();

}

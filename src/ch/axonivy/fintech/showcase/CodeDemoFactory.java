package ch.axonivy.fintech.showcase;

import org.apache.commons.io.FilenameUtils;

public class CodeDemoFactory {
	public static final String JAVA = "java";
	public static final String RULE = "rule";
	public static final String XML = "xml";

	private CodeDemoFactory() {
	}

	public static CodeDemo createCodeDemo(String type, String fileName,
			String path) {
		String fileType = type;

		if (type == RULE) {
			fileType = JAVA;
		}
		switch (type) {
		case JAVA:
		case RULE:
			return new CodeDemo(fileName, path, fileType);

		case XML:
			return new ViewCodeDemo(fileName, path, fileType);

		default:
			return null;
		}
	}

	public static AbstractCode create(String path) {
		String fileExtension = FilenameUtils.getExtension(path);
		switch (fileExtension) {
		case "java":
			return new JavaCode(path);
		case "drl":
			return new RuleCode(path);
		case "xhtml":
			return new ViewCode(path);
		default:
			return null;
		}

	}
}

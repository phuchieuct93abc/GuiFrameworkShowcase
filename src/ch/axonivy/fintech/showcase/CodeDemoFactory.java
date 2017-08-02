package ch.axonivy.fintech.showcase;

public class CodeDemoFactory {
	public static final String JAVA = "java";
	public static final String RULE = "rule";
	public static final String XML = "xml";

	public static CodeDemo createCodeDemo(String type, String fileName, String path) {
		String fileType = type;

		if (type == RULE) {
			fileType = JAVA;
		}
		switch (type) {

		case JAVA:
			return new CodeDemo(fileName, path, fileType);

		case XML:
			return new ViewCodeDemo(fileName, path, fileType);

		default:
			return null;
		}
	}
}

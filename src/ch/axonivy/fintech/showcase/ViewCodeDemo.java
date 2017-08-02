package ch.axonivy.fintech.showcase;

import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


public class ViewCodeDemo extends CodeDemo {
	private static final String PATTERN_REGEX = "<h:form id=\"form\">(.*)</h:form>";
	private static final Pattern pattern = Pattern.compile(PATTERN_REGEX, Pattern.DOTALL);

	public ViewCodeDemo(String fileName, String filePath) {
		super(fileName, filePath);
	}

	@Override
	public String getContent() throws IOException {
		String content = super.getContent();
		Matcher matcher = pattern.matcher(content);
		matcher.find();
		return matcher.group();

	}
}

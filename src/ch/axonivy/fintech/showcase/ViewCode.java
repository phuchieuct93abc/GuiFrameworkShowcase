package ch.axonivy.fintech.showcase;

import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ViewCode extends AbstractCode {
	private static final String PATTERN_REGEX = "<h:form id=\"form\">(.*)</h:form>";
	private static final Pattern pattern = Pattern.compile(PATTERN_REGEX,
			Pattern.DOTALL);

	ViewCode(String filePath) {
		super(filePath);

	}

	@Override
	public String getFileType() {
		return "xml";
	}

	@Override
	public String getFileContent() throws IOException {
		String content = super.getFileContent();
		Matcher matcher = pattern.matcher(content);
		matcher.find();
		return matcher.group();
	}

}

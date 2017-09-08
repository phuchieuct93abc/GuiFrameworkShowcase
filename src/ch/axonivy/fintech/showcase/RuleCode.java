package ch.axonivy.fintech.showcase;

public class RuleCode extends AbstractCode {

	RuleCode(String filePath) {
		super(filePath);
	}

	@Override
	public String getFileType() {
		return "java";
	}

}

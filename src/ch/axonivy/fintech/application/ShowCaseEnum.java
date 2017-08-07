package ch.axonivy.fintech.application;

public enum ShowCaseEnum {

	GETTING_START ("ShowCaseProcesses/GettingStart/start.ivp"),
	BASIC_COMPONENT ( "ShowCaseProcesses/BasicComponent/start.ivp"),
	AUTO_COMPLETE ( "ShowCaseProcesses/BasicComponent/start.ivp"),
	VALIDATE_BUTTON ( "UseCaseProcesses/ValidateButton/start.ivp"),
	CUSTOM_CONTROLLER( "ShowCaseProcesses/CustomController/start.ivp"),
	COMPONENT_CONTEXT( "UseCaseProcesses/ComponentContext/start.ivp");
	 
	private String target;

	public String getTarget() {
		return target;
	}

	private ShowCaseEnum(String target) {
		this.target = target;
	}
}

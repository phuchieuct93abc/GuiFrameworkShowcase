package ch.axonivy.fintech.application;

import java.util.Arrays;
import java.util.List;

public enum ShowCaseEnum {

	GETTING_START ("ShowCaseProcesses/GettingStart/start.ivp","Getting startted"),
	BASIC_COMPONENT ( "ShowCaseProcesses/BasicComponent/start.ivp","Basic Component"),
	AUTO_COMPLETE ( "ShowCaseProcesses/AutoComplete/start.ivp","Auto complete"),
	VALIDATE_BUTTON ( "UseCaseProcesses/ValidateButton/start.ivp","Validate button"),
	CUSTOM_CONTROLLER( "ShowCaseProcesses/CustomController/start.ivp","Custom controller"),
	COMPONENT_CONTEXT( "UseCaseProcesses/ComponentContext/start.ivp","Component context");
	 


	private String link;
	private String name;


	 ShowCaseEnum(String link,String name) {
		this.link = link;
		this.name = name;
	}
	public String getLink() {
		return link;
	}

	public String getName() {
		return name;
	}
	public static List<ShowCaseEnum> getBasicCompomnentMenus(){
		return Arrays.asList(BASIC_COMPONENT,AUTO_COMPLETE,VALIDATE_BUTTON);
		
		
	}
	public static List<ShowCaseEnum> getUsecaseMenus(){
		
		return Arrays.asList(CUSTOM_CONTROLLER,COMPONENT_CONTEXT);

		
	}
}

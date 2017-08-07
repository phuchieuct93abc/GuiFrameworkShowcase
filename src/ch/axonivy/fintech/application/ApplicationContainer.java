package ch.axonivy.fintech.application;

import javax.faces.bean.ApplicationScoped;
import javax.faces.bean.ManagedBean;

import ch.ivyteam.ivy.environment.Ivy;

@ManagedBean(eager = true)
@ApplicationScoped
public class ApplicationContainer {
	private ShowCaseEnum activeLink;

	public Boolean isActive(ShowCaseEnum target) {

		return target.equals(activeLink);
	}

	
	public ShowCaseEnum getActiveLink() {
		return activeLink;
	}


	public void setActiveLink(ShowCaseEnum activeLink) {
		this.activeLink = activeLink;
	}


	public String goShowcase(ShowCaseEnum target) {
		this.activeLink = target;

		return Ivy.html().startref(target.getTarget());

	}
}

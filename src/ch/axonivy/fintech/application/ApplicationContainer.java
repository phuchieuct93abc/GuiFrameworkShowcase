package ch.axonivy.fintech.application;

import java.io.IOException;

import javax.faces.bean.ApplicationScoped;
import javax.faces.bean.ManagedBean;
import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;

import ch.ivyteam.ivy.environment.EnvironmentNotAvailableException;
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

	public void goShowcase(ShowCaseEnum target) throws EnvironmentNotAvailableException, IOException {
		this.activeLink = target;
		Ivy.log().debug(target);
		ExternalContext ex = FacesContext.getCurrentInstance().getExternalContext();
		ex.redirect(Ivy.html().startref(target.getTarget()));


	}
}

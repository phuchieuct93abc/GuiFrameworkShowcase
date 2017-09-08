package ch.axonivy.fintech.application;

import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;

import org.primefaces.model.menu.DefaultMenuItem;
import org.primefaces.model.menu.DefaultMenuModel;
import org.primefaces.model.menu.DefaultSubMenu;
import org.primefaces.model.menu.MenuElement;
import org.primefaces.model.menu.MenuModel;

import ch.ivyteam.ivy.environment.Ivy;

@ManagedBean
@SessionScoped
public class ApplicationContainer {
	private ShowCaseEnum activeShowcase;

	public ApplicationContainer() {
		Ivy.log().debug("constructor");
		activeShowcase = ShowCaseEnum.GETTING_START;
	}

	public MenuModel getMenu() {
		MenuModel menu = new DefaultMenuModel();

		DefaultMenuItem gettingStarted = new DefaultMenuItem("Getting started");
		gettingStarted.setOncomplete("redirect([{name:'menu', value:'"
				+ ShowCaseEnum.GETTING_START + "'}])");
		String activeClass = ShowCaseEnum.GETTING_START == activeShowcase ? "ui-state-active" : "";
		gettingStarted.setContainerStyleClass(activeClass);

		DefaultSubMenu componentMenus = getComponentSubMenu();
		DefaultSubMenu useCaseMenus = getUsecaseSubMenu();

		menu.addElement(gettingStarted);
		menu.addElement(componentMenus);
		menu.addElement(useCaseMenus);

		return menu;
	}

	private DefaultSubMenu getComponentSubMenu() {
		DefaultSubMenu componentSubMenu = new DefaultSubMenu("Component");
		List<MenuElement> elements = ShowCaseEnum.getBasicCompomnentMenus()
				.stream().map(this::generateMenuItem)
				.collect(Collectors.toList());
		componentSubMenu.setElements(elements);
		return componentSubMenu;

	}

	private DefaultSubMenu getUsecaseSubMenu() {
		DefaultSubMenu componentSubMenu = new DefaultSubMenu("Use cases");
		List<MenuElement> elements = ShowCaseEnum.getUsecaseMenus()
				.stream().map(this::generateMenuItem)
				.collect(Collectors.toList());
		componentSubMenu.setElements(elements);
		return componentSubMenu;

	}

	private DefaultMenuItem generateMenuItem(ShowCaseEnum menu) {
		String activeClass = menu == activeShowcase ? "ui-state-active" : "";

		DefaultMenuItem item = new DefaultMenuItem(menu.getName());
		item.setOnclick("redirect([{name:'menu', value:'" + menu + "'}])");
		item.setContainerStyleClass(activeClass);
		return item;

	}

	public void redirect() throws IOException {
		Map<String, String> params = FacesContext.getCurrentInstance()
				.getExternalContext().getRequestParameterMap();
		activeShowcase = ShowCaseEnum.valueOf(params.get("menu"));

		ExternalContext ex = FacesContext.getCurrentInstance()
				.getExternalContext();
		ex.redirect(Ivy.html().startref(activeShowcase.getLink()));

	}
}

package ch.axonivy.fintech.application;

import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;

import javax.faces.bean.ManagedBean;
import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;

import org.primefaces.model.menu.DefaultMenuItem;
import org.primefaces.model.menu.DefaultMenuModel;
import org.primefaces.model.menu.DefaultSubMenu;
import org.primefaces.model.menu.MenuElement;
import org.primefaces.model.menu.MenuItem;
import org.primefaces.model.menu.MenuModel;
import org.primefaces.model.menu.Submenu;

import ch.ivyteam.ivy.environment.Ivy;

import com.google.inject.servlet.SessionScoped;

@ManagedBean(eager = true)
@SessionScoped
public class ApplicationContainer {
	private ShowCaseEnum activeShowcase;

	public MenuModel getMenu() {
		MenuModel menu = new DefaultMenuModel();

		// First submenu
		DefaultSubMenu componentMenus = getComponentSubMenu();
		DefaultSubMenu useCaseMenus = getUsecaseSubMenu();

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
		List<MenuElement> elements = ShowCaseEnum.getBasicCompomnentMenus()
				.stream().map(this::generateMenuItem)
				.collect(Collectors.toList());
		componentSubMenu.setElements(elements);
		return componentSubMenu;

	}

	private DefaultMenuItem generateMenuItem(ShowCaseEnum menu) {
		String activeClass = menu == activeShowcase ? "ui-active-state" : "";
		DefaultMenuItem item = new DefaultMenuItem(menu.getName());
		item.setOnstart("setActiveMenu(" + menu + ")");
		item.setStyleClass(activeClass);
		return item;

	}

	public Boolean isActive(ShowCaseEnum target) {

		return target.equals(activeShowcase);
	}

	public ShowCaseEnum getActiveLink() {
		return activeShowcase;
	}

	public void setActiveLink(ShowCaseEnum activeLink) {
		this.activeShowcase = activeLink;
	}

	public void goShowcase(ShowCaseEnum target) throws IOException {
		this.activeShowcase = target;
		ExternalContext ex = FacesContext.getCurrentInstance()
				.getExternalContext();
		ex.redirect(Ivy.html().startref(target.getLink()));

	}
}

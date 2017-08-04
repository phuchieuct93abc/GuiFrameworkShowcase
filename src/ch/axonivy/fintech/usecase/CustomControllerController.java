package ch.axonivy.fintech.usecase;

import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
import javax.faces.event.ComponentSystemEvent;

import org.primefaces.event.TabChangeEvent;

import ch.axonivy.fintech.standard.guiframework.core.BaseGuiFrameworkController;
import ch.axonivy.fintech.standard.guiframework.core.GuiFrameworkControllerConfig;
import ch.axonivy.fintech.standard.guiframework.exception.GuiFrameworkException;
import ch.axonivy.fintech.standard.guiframework.vo.ChangeNotifierParamVO;
import ch.axonivy.fintech.standard.guiframework.vo.ChangeNotifierResultVO;
import ch.ivyteam.ivy.scripting.objects.CompositeObject;

public class CustomControllerController extends BaseGuiFrameworkController {

	public CustomControllerController(GuiFrameworkControllerConfig config) {
		super(config);
	}

	@Override
	public void doPostAddToViewEvent(ComponentSystemEvent event, CompositeObject object) throws GuiFrameworkException {
		showMessage("Postadd to view");
		super.doPostAddToViewEvent(event, object);

	}

	@Override
	public void doPreRenderViewEvent(ComponentSystemEvent event, CompositeObject object) throws GuiFrameworkException {
		showMessage("Prerender view");
		super.doPreRenderViewEvent(event, object);

	}

	@Override
	public ChangeNotifierResultVO doOnChangeNotifyEvent(ChangeNotifierParamVO param) throws GuiFrameworkException {
		showMessage("Onchange notify");
		return super.doOnChangeNotifyEvent(param);
	}

	@Override
	public void doPreRenderComponentEvent(ComponentSystemEvent event, CompositeObject object) throws GuiFrameworkException {
		showMessage("Prerender component");
		super.doPreRenderComponentEvent(event, object);
	}
	@Override
	public void doTabChangeEvent(TabChangeEvent event) throws GuiFrameworkException {
		showMessage("Tab change event");
		super.doTabChangeEvent(event); 
	}

	private void showMessage(String mesage) {
		FacesContext context = FacesContext.getCurrentInstance();
		context.addMessage("growl", new FacesMessage("Successful", mesage));
	}

	public static CustomControllerController createInstance(GuiFrameworkControllerConfig config) {

		return new CustomControllerController(config);
	}
}

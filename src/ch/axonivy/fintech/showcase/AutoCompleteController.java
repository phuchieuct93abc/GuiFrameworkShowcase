package ch.axonivy.fintech.showcase;

import java.util.List;

import javax.faces.event.ComponentSystemEvent;

import ch.axonivy.fintech.basic.component.utility.CountryUtility;
import ch.axonivy.fintech.showcase.AutoComplete.AutoCompleteData;
import ch.axonivy.fintech.standard.core.locale.CountryDto;
import ch.axonivy.fintech.standard.guiframework.core.BaseGuiFrameworkController;
import ch.axonivy.fintech.standard.guiframework.core.GuiFrameworkControllerConfig;
import ch.axonivy.fintech.standard.guiframework.exception.GuiFrameworkException;
import ch.axonivy.fintech.standard.guiframework.util.AutocompleteUtil;
import ch.axonivy.fintech.standard.guiframework.util.GuiFrameworkUtil;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.scripting.objects.CompositeObject;

public class AutoCompleteController extends BaseGuiFrameworkController {
	private static final String COUNTRIES_SUFFIX = "_countries";

	public AutoCompleteController(GuiFrameworkControllerConfig config) {
		super(config);
	}

	@Override
	public void doPostAddToViewEvent(ComponentSystemEvent event, CompositeObject object) throws GuiFrameworkException {

		super.doPostAddToViewEvent(event, object);
		AutoCompleteData viewModel = this.getViewModel(AutoCompleteData.class);
		List<CountryDto> countrylist = CountryUtility.getSortedByNameCountries(Ivy.session().getContentLocale());
		String key = GuiFrameworkUtil.getAutocompleteBean().getEffectiveComponentClass(viewModel);
		String countriesKey = key + COUNTRIES_SUFFIX;
		AutocompleteUtil.initAutocompleteSource(countrylist, countriesKey);
	}

	public static AutoCompleteController createInstance(GuiFrameworkControllerConfig config) {
		return new AutoCompleteController(config);
	}

}

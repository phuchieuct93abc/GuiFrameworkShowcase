package ch.axonivy.fintech.showcase;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Calendar;
import java.util.Optional;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;

import ch.ivyteam.ivy.environment.Ivy;

public class ResourceLoader {

	public Path getResource(String relativeToWebContent) {
		return findResource(relativeToWebContent).orElseThrow(() -> new RuntimeException("Resource at webContent/" + relativeToWebContent + " cannot be found"));
	}

	public Optional<Path> findResource(String relativeToWebContent) {

		return getWebContentFolder().map(f -> f.getFile(relativeToWebContent)).map(IFile::getLocationURI).map(Paths::get).filter(Files::exists);
		

	}

	private static Optional<IProject> getWebContentFolder() {
		try {
			return Optional.ofNullable(ch.ivyteam.ivy.security.internal.SecurityManager.getSecurityManager().executeAsSystem(() -> Ivy.request().getProcessModelVersion().getProject()));
		} catch (Exception failToGetWebContent) {
			throw new RuntimeException("Fail to reach webContent folder", failToGetWebContent);
		}
	}

}

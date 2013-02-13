package de.ckl.xtext.tycho.validation

import org.eclipse.xtext.junit4.AbstractXtextTests
import de.ckl.xtext.tycho.TychoInjectorProvider
import org.eclipse.xtext.junit4.XtextRunner
import org.eclipse.xtext.junit4.InjectWith
import org.junit.runner.RunWith
import org.eclipse.xtext.junit4.validation.ValidatorTester
import org.eclipse.xtext.junit4.util.ParseHelper
import de.ckl.xtext.tycho.tycho.Model
import de.ckl.xtext.tycho.validation.TychoJavaValidator
import org.junit.Test
import com.google.inject.Inject

import static org.mockito.Matchers.*
import static org.mockito.Mockito.*

@InjectWith(typeof(TychoInjectorProvider))
@RunWith(typeof(XtextRunner))
class TychoValidatorTest extends AbstractXtextTests {
	ValidatorTester<TychoJavaValidator> tester
	
	@Inject extension ParseHelper<Model>
	
	override setUp() {
		super.setUp()
		with(typeof(de.ckl.xtext.tycho.TychoStandaloneSetup))
		var validator = get(typeof(TychoJavaValidator))
		tester = new ValidatorTester<TychoJavaValidator>(validator, injector)
	}
	
	@Test
	def settingIdAttributeForDomainResultsInEror() {
		assertTrue(true)
		
		var myMock = mock(typeof(Model))
	}
}
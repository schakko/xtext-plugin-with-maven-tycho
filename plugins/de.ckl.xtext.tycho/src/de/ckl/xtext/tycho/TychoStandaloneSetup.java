
package de.ckl.xtext.tycho;

/**
 * Initialization support for running Xtext languages 
 * without equinox extension registry
 */
public class TychoStandaloneSetup extends TychoStandaloneSetupGenerated{

	public static void doSetup() {
		new TychoStandaloneSetup().createInjectorAndDoEMFRegistration();
	}
}


/*
* generated by Xtext
*/
package de.ckl.xtext.tycho;

import org.eclipse.xtext.junit4.IInjectorProvider;

import com.google.inject.Injector;

public class TychoUiInjectorProvider implements IInjectorProvider {
	
	public Injector getInjector() {
		return de.ckl.xtext.tycho.ui.internal.TychoActivator.getInstance().getInjector("de.ckl.xtext.tycho.Tycho");
	}
	
}
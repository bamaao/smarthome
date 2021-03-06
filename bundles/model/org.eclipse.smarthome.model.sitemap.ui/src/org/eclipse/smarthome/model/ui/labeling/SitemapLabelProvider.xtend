/**
 * Copyright (c) 2014-2016 by the respective copyright holders.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 */
/*
* generated by Xtext
*/
package org.eclipse.smarthome.model.ui.labeling

import com.google.inject.Inject

import org.eclipse.emf.edit.ui.provider.AdapterFactoryLabelProvider
import org.eclipse.smarthome.model.sitemap.Widget
import org.eclipse.xtext.ui.label.DefaultEObjectLabelProvider


/**
 * Provides labels for a EObjects.
 * 
 * see http://www.eclipse.org/Xtext/documentation.html#labelProvider
 */
class SitemapLabelProvider extends DefaultEObjectLabelProvider {

	@Inject
	new(AdapterFactoryLabelProvider delegate) {
		super(delegate);
	}

	def protected String text(Widget widget) {
		var label = widget.getLabel();
		if(label==null) {
			label = widget.getItem();
		}
		return widget.eClass().getName() + " " + (label?: "")
	}

    def protected String image(Widget w) {
        return w.getClass().getSimpleName().replace("Impl", "").toLowerCase() + ".png";
    }
}

package com.flexionlabs.appstate;

import java.io.Serializable;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class FlexionLabState implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -6632261856174789560L;
	private ParentView parentView = ParentView.HOME_PAGE;
	public static FlexionLabState getInstance(HttpServletRequest request) {
		HttpSession session = request.getSession();
		FlexionLabState flexionLabState = (FlexionLabState) session.getAttribute(FlexionLabState.class.getSimpleName());
		if(flexionLabState == null){
			flexionLabState = new FlexionLabState();
			session.setAttribute(FlexionLabState.class.getSimpleName(), flexionLabState);
		}
		return flexionLabState;
	}
	
	public ParentView getParentView() {
		return parentView;
	}

	public void setParentView(ParentView parentView) {
		this.parentView = parentView;
	}

	public static enum ParentView{
		
		HOME("index.jsp"),HOME_PAGE("homepage.jsp"),
		SERVICES_PAGE("services.jsp"),PRODUCTS_PAGE("products.jsp"),
		CAREERS_PAGE("careers.jsp"), ABOUT_PAGE("/about.jsp"),
		CONTACT_PAGE("contact.jsp"),FAQ_PAGE("faq.jsp");
		private final String page;

		ParentView(String page) {
            this.page = page;
        }

        public String getPage() {
            return page;
        }
	}
}

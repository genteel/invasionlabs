package com.flexionlabs.servlets.filters;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.juli.logging.Log;
import org.apache.juli.logging.LogFactory;

import com.flexionlabs.appstate.FlexionLabState;
import com.flexionlabs.appstate.FlexionLabState.ParentView;

@SuppressWarnings("deprecation")
public final class URLFilter implements Filter {

	private FilterConfig filterConfig = null;

	private final static Logger LOGGER = Logger
			.getLogger(URLFilter.class.getName());
	private static final Log log = LogFactory.getLog(URLFilter.class);

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {

		LOGGER.setLevel(Level.INFO);

		LOGGER.info("Initializing URL Filter");

		this.filterConfig = filterConfig;
	}

	@Override
	public void destroy() {
		this.filterConfig = null;
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain chain) throws IOException, ServletException {

		if (filterConfig == null)
			return;

		LOGGER.info("Invoking URL Filter");

		HttpServletRequest request = (HttpServletRequest) req;

		HttpServletResponse response = (HttpServletResponse) res;

		HttpSession session = request.getSession();
		String reqURI = request.getRequestURI();
		FlexionLabState flexionLabState =FlexionLabState.getInstance(request);
		if(reqURI.equalsIgnoreCase("/") || reqURI.equalsIgnoreCase("/home")){
			flexionLabState.setParentView(ParentView.HOME_PAGE);
		}else if(reqURI.equalsIgnoreCase("/services")){
			flexionLabState.setParentView(ParentView.SERVICES_PAGE);
		}else if(reqURI.equalsIgnoreCase("/about")){
			flexionLabState.setParentView(ParentView.ABOUT_PAGE);
		}else if(reqURI.equalsIgnoreCase("/products")){
			flexionLabState.setParentView(ParentView.PRODUCTS_PAGE);
		}else if(reqURI.equalsIgnoreCase("/careers")){
			flexionLabState.setParentView(ParentView.CAREERS_PAGE);
		}else if(reqURI.equalsIgnoreCase("/contact")){
			flexionLabState.setParentView(ParentView.CONTACT_PAGE);
		}else if(reqURI.equalsIgnoreCase("/faq")){
			flexionLabState.setParentView(ParentView.FAQ_PAGE);
		}else{
//			flexionLabState.setParentView(ParentView.HOME_PAGE);
		}
		LOGGER.info("Destination URL is: " + reqURI);
		
		chain.doFilter(request, response);

	}

}
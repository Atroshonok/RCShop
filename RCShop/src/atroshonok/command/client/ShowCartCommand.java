/**
 * 
 */
package atroshonok.command.client;

import javax.servlet.http.HttpServletRequest;

import atroshonok.command.ActionCommand;
import atroshonok.utilits.ConfigurationManager;

/**
 * @author Atroshonok Ivan
 *
 */
public class ShowCartCommand implements ActionCommand {


	/* (non-Javadoc)
	 * @see atroshonok.command.ActionCommand#execute(javax.servlet.http.HttpServletRequest)
	 */
	@Override
	public String execute(HttpServletRequest request) {
		String page = ConfigurationManager.getProperty("path.page.cart");
		return page;
	}


}

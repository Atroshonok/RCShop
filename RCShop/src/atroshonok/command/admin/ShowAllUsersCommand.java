/**
 * 
 */
package atroshonok.command.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import atroshonok.command.ActionCommand;
import atroshonok.domain.entities.User;
import atroshonok.services.UserService;
import atroshonok.utilits.ConfigurationManager;

/**
 * @author Atroshonok Ivan
 *
 */
public class ShowAllUsersCommand implements ActionCommand {

	/* (non-Javadoc)
	 * @see atroshonok.command.ActionCommand#execute(javax.servlet.http.HttpServletRequest)
	 */

	@Override
	public String execute(HttpServletRequest request) {
		
		UserService userService = new UserService();
		List<User> users = userService.getAllUsers();
		
		request.setAttribute("usersList", users);
		request.setAttribute("fragmentPath", ConfigurationManager.getProperty("path.fragment.allusers"));

		String page = ConfigurationManager.getProperty("path.page.admin"); 
		
		return page;
	}

}

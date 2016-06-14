/**
 * 
 */
package atroshonok.command.factory;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;

import atroshonok.command.ActionCommand;
import atroshonok.command.CommandEnum;
import atroshonok.command.EmptyCommand;

/**
 * @author Atroshonok Ivan
 *
 */
public class ActionFactory {
	private Logger log = Logger.getLogger(getClass());
	
	public ActionCommand defineCommand(HttpServletRequest request) {
		ActionCommand current = new EmptyCommand();
		// извлечение имени команды из запроса
		String action = request.getParameter("command");
		
		log.debug("Command name from request: " + action);
		
		// если команда не задана в текущем запросе
		if (action == null || action.isEmpty()) {
			return current;
		}
		// получение объекта, соответствующего команде
		try {
			CommandEnum currentEnum = CommandEnum.valueOf(action.toUpperCase());

			current = currentEnum.getCurrentCommand();
			
		} catch (IllegalArgumentException e) {
			log.error("So command does't exist: " + e);
		}
		return current;
	}
}

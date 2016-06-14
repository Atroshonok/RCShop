package atroshonok.command;

import javax.servlet.http.HttpServletRequest;

import atroshonok.utilits.ConfigurationManager;

public class EmptyCommand implements ActionCommand {
	@Override
	public String execute(HttpServletRequest request) {
		
		String page = ConfigurationManager.getProperty("path.page.index");
		return page;
	}
}
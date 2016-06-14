package atroshonok.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import atroshonok.command.ActionCommand;
import atroshonok.command.factory.ActionFactory;
import atroshonok.utilits.ConfigurationManager;
import atroshonok.utilits.MessageManager;

/**
 * Servlet implementation class FrontController
 */
//@WebServlet("/controller")
public class FrontController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	private Logger log = Logger.getLogger(getClass());
       

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		log.debug("Method GET begins to work");
		processRequest(request, response);
		log.debug("Method GET ends to work");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		log.debug("Method POST begins to work");
		processRequest(request, response);
		log.debug("Method POST ends to work");
	}

	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page = null;
		// определение команды, пришедшей из JSP
	    ActionFactory client = new ActionFactory();
	    ActionCommand command = client.defineCommand(request);
	    /*
	     * вызов реализованного метода execute() и передача параметров
	     * классу-обработчику конкретной команды
	     */
	    page = command.execute(request);
	    // метод возвращает страницу ответа
	    if (page != null) {
	      RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(page);
	      // вызов страницы ответа на запрос
	      dispatcher.forward(request, response);
	    } else {
	      // установка страницы c cообщением об ошибке
	      page = ConfigurationManager.getProperty("path.page.index");
	      request.getSession().setAttribute("nullPage", MessageManager.getProperty("message.nullpage"));
	      response.sendRedirect(request.getContextPath() + page);
	    }
		
	}

}

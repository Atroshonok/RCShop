/**
 * 
 */
package atroshonok.command.client;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import atroshonok.command.ActionCommand;
import atroshonok.domain.entities.Product;
import atroshonok.services.ProductService;
import atroshonok.utilits.ConfigurationManager;

/**
 * @author Atroshonok Ivan
 *
 */
public class ShowProductsCommand implements ActionCommand {
	
	private static final String REQUEST_PARAM_CATEGORYID = "categoryid";

	/* (non-Javadoc)
	 * @see atroshonok.command.ActionCommand#execute(javax.servlet.http.HttpServletRequest)
	 */
	@Override
	public String execute(HttpServletRequest request) {
		int categoryID = Integer.parseInt(request.getParameter(REQUEST_PARAM_CATEGORYID));
		ProductService productService = new ProductService();
		List<Product> products = productService.getProductsByCategoryID(categoryID);
		request.getSession().setAttribute("productsList", products);
		
		String page = ConfigurationManager.getProperty("path.page.products");
		return page;
	}

}

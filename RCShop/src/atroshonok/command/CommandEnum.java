package atroshonok.command;

import atroshonok.command.admin.AddNewProductCommand;
import atroshonok.command.admin.BlackListCommand;
import atroshonok.command.admin.EditProductCommand;
import atroshonok.command.admin.SaveEditedProductCommand;
import atroshonok.command.admin.SaveNewProductCommand;
import atroshonok.command.admin.ShowAllProductsCommand;
import atroshonok.command.admin.ShowAllUsersCommand;
import atroshonok.command.client.AddToCartCommand;
import atroshonok.command.client.OrderCommand;
import atroshonok.command.client.RemoveFromCartCommand;
import atroshonok.command.client.ShowCartCommand;
import atroshonok.command.client.ShowProductsCommand;
import atroshonok.command.client.ShowUserOrdersCommand;

public enum CommandEnum {
	LOGIN {
		{
			this.command = new LoginCommand();
		}
	},
	LOGOUT {
		{
			this.command = new LogoutCommand();
		}
	},
	REGISTRATION {
		{
			this.command = new RegistrCommand();
		}
	},
	SHOWPRODUCTS {
		{
			this.command = new ShowProductsCommand();
		}
	},
	GETREGISTRFORM {
		{
			this.command = new GetRegistrFormCommand();
		}
	},
	GETMAINPAGE {
		{
			this.command = new GetMainPageCommand();
		}
	},
	SHOWCART {
		{
			this.command = new ShowCartCommand();
		}
	},
	ADDTOCART {
		{
			this.command = new AddToCartCommand();
		}
	},
	REMOVEFROMCART {
		{
			this.command = new RemoveFromCartCommand();
		}
	},
	ORDER {
		{
			this.command = new OrderCommand();
		}
	},
	SHOWUSERORDERS {
		{
			this.command = new ShowUserOrdersCommand();
		}
	},
	SHOWALLPRODUCTS {
		{
			this.command = new ShowAllProductsCommand();
		}
	},
	EDITPRODUCT  {
		{
			this.command = new EditProductCommand();
		}
	},
	SAVEEDITEDPRODUCT {
		{
			this.command = new SaveEditedProductCommand();
		}
	},
	SHOWALLUSERS {
		{
			this.command = new ShowAllUsersCommand();
		}
	},
	BLACKLIST {
		{
			this.command = new BlackListCommand();
		}
	},
	ADDNEWPRODUCT {
		{
			this.command = new AddNewProductCommand();
		}
	},
	SAVEPRODUCT {
		{
			this.command = new SaveNewProductCommand();
		}
	};

	ActionCommand command;

	public ActionCommand getCurrentCommand() {
		return command;
	}
}
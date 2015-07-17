using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Caching;
using System.Web.Mvc;
using Umbraco.Web.Mvc;
using Umbraco.Core;
using Umbraco.Core.Models;
using Umbraco.Core.Services;
using Umbraco.Web;
using System.Web.Configuration;
using uLocalGovMVC.Models.ViewModels;
using System.Web.Security;

namespace uLocalGovMVC.Controllers.SurfaceControllers
{
	public class MemberLoginSurfaceController : SurfaceController
	{

		// The MemberLogin Action returns the view, which we will create later. It also instantiates a new, empty model for our view:

		[HttpGet]
		[ActionName("MemberLogin")]
		public ActionResult MemberLoginGet()
		{
			return PartialView("MemberLogin", new MemberLoginModel());
		}

		// The MemberLogout Action signs out the user and redirects to the site home page:

		[HttpGet]
		public ActionResult MemberLogout()
		{
			Session.Clear();
			FormsAuthentication.SignOut();
			return Redirect("/");
		}

		// The MemberLoginPost Action checks the entered credentials using the standard Asp Net membership provider and redirects the user to the same page. Either as logged in, or with a message set in the TempData dictionary:

		[HttpPost]
		[ActionName("MemberLogin")]
		public ActionResult MemberLoginPost(MemberLoginModel model)
		{
			if (Membership.ValidateUser(model.Username, model.Password))
			{
				FormsAuthentication.SetAuthCookie(model.Username, model.RememberMe);
				return RedirectToCurrentUmbracoPage();

			}
			else
			{
				TempData["Status"] = "Invalid username or password";
				return RedirectToCurrentUmbracoPage();
			}
		}
	}
}
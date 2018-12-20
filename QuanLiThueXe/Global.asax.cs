using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace QuanLiThueXe
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
           
            string path = Server.MapPath("~") + "/count.txt";
            if (!File.Exists(path))
                File.WriteAllText(path, "0");

            Application["Access"] = int.Parse(File.ReadAllText(path));
        }

        void Application_End(object sender, EventArgs e)
        {
            // Code that runs on application shutdown
            string path = Server.MapPath("~") + "/count.txt";

            File.WriteAllText(path, Application["Access"].ToString());
        }

        void Application_Error(object sender, EventArgs e)
        {
            // Code that runs when an unhandled error occurs

        }

        void Session_Start(object sender, EventArgs e)
        {
            string path = Server.MapPath("~") + "/count.txt";
            // Code that runs when a new session is started
            if (Application["Online"] == null)
                Application["Online"] = 1;
            else
                Application["Online"] = (int)Application["Online"] + 1;

            Application["Access"] = (int)Application["Access"] + 1;
            File.WriteAllText(path, Application["Access"].ToString());
        }

        void Session_End(object sender, EventArgs e)
        {
            // Code that runs when a session ends. 
            // Note: The Session_End event is raised only when the sessionstate mode
            // is set to InProc in the Web.config file. If session mode is set to StateServer 
            // or SQLServer, the event is not raised.
            int i = (int)Application["Online"];
            if (i > 1)
                Application["Online"] = i - 1;

            string path = Server.MapPath("~") + "/count.txt";
            File.WriteAllText(path, Application["Access"].ToString());
        }
    }
}
using System;

namespace WisRepo
{
    public class RepoUtility
    {
        public static string GuidCode()
        {
            return Guid.NewGuid().ToString("N");
        }

        //public static MailHelper Email()
        //{
        //    //try
        //    //{
        //    //    var mailHelper = new MailHelper(ConfigurationManager.AppSettings["Email"],
        //    //        ConfigurationManager.AppSettings["Password"],
        //    //        Convert.ToBoolean(ConfigurationManager.AppSettings["EnableSsl"]),
        //    //        ConfigurationManager.AppSettings["Host"],
        //    //        Convert.ToInt32(ConfigurationManager.AppSettings["Port"]))
        //    //    {
        //    //        Sender = ConfigurationManager.AppSettings["Email"]
        //    //    };


        //    //    return mailHelper;
        //    //}
        //    //catch (Exception)
        //    //{
        //    //    var mailHelper = new MailHelper(ConfigurationManager.AppSettings["Email"], ConfigurationManager.AppSettings["Password"]);
        //    //    return mailHelper;
        //    //}
        //}
    }
}
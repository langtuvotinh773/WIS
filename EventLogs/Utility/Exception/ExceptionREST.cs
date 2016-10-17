using System.Net;

namespace WisLogs.Utility.Exception
{
    /// <summary>
    /// Restful exception
    /// </summary>
    public class ExceptionRest : System.Exception
    {
        /// <summary>
        /// <see cref="WebRequestMethods.Http"/> status code
        /// </summary>
        public HttpStatusCode HttpStatusCode { get; private set; }

        /// <summary>
        /// </summary>
        public ExceptionRest()
        {
        }

        /// <summary>
        /// </summary>
        /// <param name="message"></param>
        public ExceptionRest(string message) : base(message)
        {
        }

        /// <summary>
        /// </summary>
        /// <param name="message"></param>
        /// <param name="httpStatusCode"></param>
        public ExceptionRest(string message, HttpStatusCode httpStatusCode) : base(message)
        {
            HttpStatusCode = httpStatusCode;
        }
    }
}
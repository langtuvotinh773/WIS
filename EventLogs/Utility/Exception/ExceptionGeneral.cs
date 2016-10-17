namespace WisLogs.Utility.Exception
{
    /// <summary>
    /// General exception
    /// </summary>
    public class ExceptionGeneral : System.Exception
    {
        /// <summary>
        /// </summary>
        public ExceptionGeneral()
            : base()
        {
        }

        /// <summary>
        /// </summary>
        /// <param name="message"></param>
        public ExceptionGeneral(string message)
            : base(message)
        {
        }
    }
}
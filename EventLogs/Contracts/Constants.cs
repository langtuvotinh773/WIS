using System;
using System.Configuration;
using System.IO;

namespace WisLogs.Contracts
{
    /// <summary>
    /// Constants
    /// </summary>
    public static class Constants
    {
        /// <summary>
        /// <c>File</c> log full path
        /// </summary>
        public static class Paths
        {
            /// <summary>
            /// Root project folder
            /// </summary>
            public static readonly string BaseDirectory = AppDomain.CurrentDomain.BaseDirectory;

            /// <summary>
            /// <c>File</c> path for level debug
            /// </summary>
            public static string Debug = Path.Combine(BaseDirectory, ConfigurationManager.AppSettings["LoggerDebugPath"]);

            /// <summary>
            /// <c>File</c> path for level info
            /// </summary>
            public static string Info = Path.Combine(BaseDirectory, ConfigurationManager.AppSettings["LoggerInfoPath"]);

            /// <summary>
            /// <c>File</c> path for level warning
            /// </summary>
            public static string Warn = Path.Combine(BaseDirectory, ConfigurationManager.AppSettings["LoggerWarnPath"]);

            /// <summary>
            /// <c>File</c> path for error
            /// </summary>
            public static string Error = Path.Combine(BaseDirectory, ConfigurationManager.AppSettings["LoggerErrorPath"]);

            /// <summary>
            /// <c>File</c> path for level fatal
            /// </summary>
            public static string Fatal = Path.Combine(BaseDirectory, ConfigurationManager.AppSettings["LoggerFatalPath"]);
        }
    }
}
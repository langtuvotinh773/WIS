using System;
using System.Runtime.CompilerServices;

namespace WisLogs.Contracts.Interfaces
{
    public interface IProvider
    {
        /// <summary>
        ///     Write message to log
        /// </summary>
        /// <param name="message"></param>
        /// <param name="logLevel"></param>
        void WriteLog(string message, Enums.LogLevels logLevel = Enums.LogLevels.Info);

        /// <summary>
        ///     Write log exception to log file
        /// </summary>
        /// <param name="ex"></param>
        /// <param name="customMessage"></param>
        /// <param name="format">Format log</param>
        /// <param name="memberName"></param>
        /// <param name="sourceFilePath"></param>
        /// <param name="sourceLineNumber"></param>
        void LogError(Exception ex
            , string customMessage = ""
            , bool format = true
            , [CallerMemberName] string memberName = ""
            , [CallerFilePath] string sourceFilePath = ""
            , [CallerLineNumber] int sourceLineNumber = 0);

        /// <summary>
        ///     Write log message to log file
        /// </summary>
        /// <param name="message"></param>
        void LogError(string message);
    }
}
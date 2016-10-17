using System;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using WisLogs.Logs;
using WisModel;
using WisRepo.Interface;

namespace WisRepo
{
    public class MasCityRepository : IDisposable, IMasCityRepository
    {
        private WisEntities DbRepository = new WisEntities();

        #region Constructor
        public MasCityRepository()
        {
        }

        protected void Dispose(bool disposing)
        {
            if (disposing)
            {
                if (DbRepository != null)
                {
                    DbRepository.Dispose();
                    DbRepository = null;
                }
            }
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
        #endregion

        public ApiModel Create(MasCity model)
        {
            // Get UTC datetime
            var utcNow = DateTime.UtcNow;

            // Model Code
            model.WSysCode = RepoUtility.GuidCode();

            // Init data
            model.WSysStatusFlg = (int)RepoConst.WSysStatus.Active;
            model.WSysIsDelete = (int)RepoConst.WSysIsDelete.No;
            model.WSysCreateCode = "login code";// TODO
            model.WSysCreateUtc = utcNow;
            model.WSysUpdateCode = "login code";// TODO
            model.WSysUpdateUtc = utcNow;

            // Return api model
            var apiModel = new ApiModel();

            try
            {
                // To database
                this.DbRepository.MasCities.Add(model);

                // Save data
                this.DbRepository.SaveChangesAsync();

                apiModel.RtnData = model.WName;
            }
            catch (Exception ex)
            {
                LogProvider.Instance.LogError(ex);
                apiModel.RtnCode = (int)RepoConst.ApiState.False;
                apiModel.RtnMessage = ex.InnerException == null ? ex.Message : ex.InnerException?.Message;
            }

            return apiModel;
        }

        public ApiModel ReadAll()
        {
            // Return api model
            var apiModel = new ApiModel();

            try
            {
                // Add to database
                apiModel.RtnData = this.DbRepository.MasCities.ToList();
                apiModel.RtnMessage = this.DbRepository.MasCities.Count().ToString();
            }
            catch (Exception ex)
            {
                LogProvider.Instance.LogError(ex);
                apiModel.RtnCode = (int)RepoConst.ApiState.False;
                apiModel.RtnMessage = ex.InnerException == null ? ex.Message : ex.InnerException?.Message;
            }

            return apiModel;
        }

        public ApiModel ReadOne(MasCity model)
        {
            // Return api model
            var apiModel = new ApiModel();

            try
            {
                // Add to database
                apiModel.RtnData = this.DbRepository.MasCities.Where(entry => entry.WSysCode == model.WSysCode).FirstOrDefault();
                apiModel.RtnMessage = this.DbRepository.MasCities.Where(entry => entry.WSysCode == model.WSysCode).Count().ToString();
            }
            catch (Exception ex)
            {
                LogProvider.Instance.LogError(ex);
                apiModel.RtnCode = (int)RepoConst.ApiState.False;
                apiModel.RtnMessage = ex.InnerException == null ? ex.Message : ex.InnerException?.Message;
            }

            return apiModel;
        }

        public ApiModel Update(MasCity model)
        {
            // Check existed record by update date
            var currentEntry = this.ReadOne(model.WSysCode, model.WSysUpdateUtc);

            // Return api model
            var apiModel = new ApiModel();

            if (currentEntry == null)
            {
                apiModel.RtnMessage = "The data has been update by another user. Please reload page."; //TODO

                return apiModel;
            }

            // Check status
            if ((int)RepoConst.WSysStatus.Delete == model.WSysStatusFlg)
            {
                model.WSysIsDelete = (int)RepoConst.WSysIsDelete.Yes;
            }

            // Get UTC datetime
            var utcNow = DateTime.UtcNow;

            // Init data
            model.WSysUpdateCode = "login code"; // TODO
            model.WSysUpdateUtc = utcNow;

            try
            {
                // To database
                this.DbRepository.Entry(currentEntry).CurrentValues.SetValues(model);
                this.DbRepository.Entry(currentEntry).State = EntityState.Modified;

                // Save update data
                this.DbRepository.SaveChanges();

                apiModel.RtnData = model.WName;
            }
            catch (Exception ex)
            {
                LogProvider.Instance.LogError(ex);
                apiModel.RtnCode = (int)RepoConst.ApiState.False;
                apiModel.RtnMessage = ex.InnerException == null ? ex.Message : ex.InnerException?.Message;
            }

            return apiModel;
        }

        public ApiModel Delete(MasCity model)
        {
            // Check existed record by update date
            var currentEntry = this.ReadOne(model.WSysCode, model.WSysUpdateUtc);

            // Return api model
            var apiModel = new ApiModel();

            if (currentEntry == null)
            {
                apiModel.RtnMessage = "The data has been update by another user. Please reload page."; //TODO

                return apiModel;
            }

            // Check status
            model.WSysStatusFlg= (int)RepoConst.WSysStatus.Delete;
            model.WSysIsDelete = (int)RepoConst.WSysIsDelete.Yes;

            // Get UTC datetime
            var utcNow = DateTime.UtcNow;

            // Init data
            model.WSysUpdateCode = "login code"; // TODO
            model.WSysUpdateUtc = utcNow;

            try
            {
                // To database
                this.DbRepository.Entry(currentEntry).CurrentValues.SetValues(model);
                this.DbRepository.Entry(currentEntry).State = EntityState.Modified;

                // Save update data
                this.DbRepository.SaveChanges();

                apiModel.RtnData = model.WName;
            }
            catch (Exception ex)
            {
                LogProvider.Instance.LogError(ex);
                apiModel.RtnCode = (int)RepoConst.ApiState.False;
                apiModel.RtnMessage = ex.InnerException == null ? ex.Message : ex.InnerException?.Message;
            }

            return apiModel;
        }

        #region Private method
        private MasCity ReadOne(string keyCode, DateTime updateDateTime)
        {
            return this.DbRepository.MasCities
                    .Where(model => model.WSysCode == keyCode
                    && model.WSysUpdateUtc == updateDateTime
                    && model.WSysIsDelete == (int)RepoConst.WSysIsDelete.No
                    && model.WSysStatusFlg == (int)RepoConst.WSysStatus.Active).FirstOrDefault();
        }

        #endregion
    }
}

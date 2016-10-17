namespace WisRepo
{
    public class ApiModel
    {
        public int RtnCode { get; set; } = (int)RepoConst.ApiState.Success;

        public string RtnMessage { get; set; } = string.Empty;

        public dynamic RtnData { get; set; } = string.Empty;
    }
}

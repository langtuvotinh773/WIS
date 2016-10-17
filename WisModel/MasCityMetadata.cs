using System.ComponentModel.DataAnnotations;

namespace WisModel
{
    [MetadataType(typeof(MasCityMetadata))]
    public partial class MasCity
    {

    }

    public class MasCityMetadata
    {
        //[Display(Name = SSIOResxDisplay.DISPLAY_COM_MAS_ALIAS, ResourceType = typeof(Resources))]
        [Required]//(ErrorMessageResourceName = SSIOResxValidate.VALIDATE_Z_REQUIRED, ErrorMessageResourceType = typeof(Resources))]
        [StringLength(ConsLength.LEN_20, MinimumLength = ConsLength.LEN_06)]
            //, ErrorMessageResourceName = ConsLength.Val_Length, ErrorMessageResourceType = typeof(string))]
        public string WName { get; set; }
    }

}

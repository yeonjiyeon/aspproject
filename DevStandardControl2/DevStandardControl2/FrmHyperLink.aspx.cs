using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DevStandardControl2
{
    public partial class FrmHyperLink : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.lnkDotNetKorea.AccessKey = "D";
            //AccessKey 속성은 HTML 태그로 변환될 때 a 태그에 accesskey 속성을 추가해준다.
        }
    }
}
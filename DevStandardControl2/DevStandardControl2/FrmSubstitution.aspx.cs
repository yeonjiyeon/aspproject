﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DevStandardControl2
{
    public partial class FrmSubstitution : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // 캐싱되어 출력
            lblCachedLabel.Text = DateTime.Now.ToLongTimeString();
        }

        // Substitution 컨트롤에 현재 시간 출력
        public static string GetCurrentTime(HttpContext context)
        {
            return DateTime.Now.ToLongTimeString();
        }
    }
}
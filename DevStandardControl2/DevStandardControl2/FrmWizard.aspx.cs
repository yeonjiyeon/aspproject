﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DevStandardControl2
{
    public partial class FrmWizard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Wizard1_FinishButtonClick(object sender, EventArgs e)
        {
            string s = "";
            s += this.txtStart.Text + "< br />";
            s += this.txtStep1.Text + "< br />";
            s += this.txtStep2.Text + "< br />";
            s += this.txtFinish.Text + "< br />";
            this.lblComplete.Text = s;
        }
    }
}
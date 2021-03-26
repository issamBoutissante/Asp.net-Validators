using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Validators
{
    public partial class Validation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DateBirthValidator.MaximumValue = DateTime.Now.AddYears(-18).ToShortDateString();
            DateBirthValidator.MinimumValue = DateTime.Now.AddYears(-26).ToShortDateString();
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Length == 10)
            {
                args.IsValid = true;
                return;
            }
            args.IsValid = false;
        }

        protected void CustomValidator1_ServerValidate1(object source, ServerValidateEventArgs args)
        {
            Nom.Text = "ok";
            int len = args.Value.Length;
            if (len != 10)
            {
                args.IsValid = false;
                return;
            }
            args.IsValid = true;
        }
    }
}
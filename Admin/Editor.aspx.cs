using System;

namespace TextEditorWeb
{
    public partial class Editor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnText_Click(object sender, EventArgs e)
        {
            txtReText.Text = hdText.Value;
        }
    }
}
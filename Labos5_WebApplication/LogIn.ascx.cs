using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Labos5_WebApplication
{
    public partial class LogIn : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private bool CheckUsernamePassword()
        {
            XElement korisnici = XElement.Load("D:\\VickoCagalj\\C#\\VSITE\\Labosi\\5. Labos\\Labos5_WebApplication\\Labos5_WebApplication\\App_Data\\korisnici.xml");
            var users = from korisnik in korisnici.Elements("korisnik") select new { username = (string)korisnik.Element("korisnickoIme"), password = (string)korisnik.Element("lozinka") };
            
            foreach (var user in users)
            {
                if (string.Compare(user.username, TextBoxKorisnickoIme.Text, true) == 0
                    && user.password == TextBoxLozinka.Text)
                    return true;
            }
            return false;
        }

        private void DisplayBooks()
        {
            pPregled.Visible = true;
            using (DataSet ds = new DataSet())
            {
                ds.ReadXml("D:\\VickoCagalj\\C#\\VSITE\\Labosi\\5. Labos\\Labos5_WebApplication\\Labos5_WebApplication\\App_Data\\popisKnjiga.xml");
                GridViewData.DataSource = ds;
                GridViewData.DataBind();
            }
        }

        protected void ButtonLogIn_Click(object sender, EventArgs e)
        {
            if (!CheckUsernamePassword())
            {
                pGreska.Visible = true;
                pPregled.Visible = false;
            }
            else
            {
                pGreska.Visible = false;
                DisplayBooks();
            }
        }
    }
}
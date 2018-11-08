using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectShoppingCartVijayaLaxmi
{
    public partial class LoginPage : System.Web.UI.Page
    {
        string _myConnectionString = @"data source = ndamssql\sqlilearn; user id = sqluser; password = sqluser; initial catalog = training_19sep18_pune;";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LogIn1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd = new SqlCommand();
            SqlConnection con = new SqlConnection(_myConnectionString);
            cmd.CommandText = "checkLogin";
            cmd.Connection = con;
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();

            cmd.Parameters.AddWithValue("@username", LogIn1.UserName);
            cmd.Parameters.AddWithValue("@password", LogIn1.Password);

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                lblLogin.Text = "Successfully logged in";
            }
            else
            {

                lblLogin.Text = "Invalid username or password";
            }
        }


    }
    }

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
    public partial class CreateNewAccount : System.Web.UI.Page
    {
        string _myConnectionString = @"data source = ndamssql\sqlilearn; user id = sqluser; password = sqluser; initial catalog = training_19sep18_pune;";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd = new SqlCommand();
            SqlConnection con = new SqlConnection(_myConnectionString);
            cmd.CommandText = "AddDetailsLogin";
            cmd.Connection = con;
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            cmd.Parameters.AddWithValue("@Name", txtName.Text);
            cmd.Parameters.AddWithValue("@Password1", txtPassword.Text);
            cmd.Parameters.AddWithValue("@mobilenumber", txtMobile.Text);
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@securityqtn", drpdownSecurity.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@answer", txtAnswer.Text);


            int noOfRowsAffected = cmd.ExecuteNonQuery();
            con.Close();
            lblsuccess.Text = "Your Account has been created successfully";
            Response.Redirect("LogIn.aspx");
        }

        protected void drpdownSecurity_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
    

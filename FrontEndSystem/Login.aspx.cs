using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassLibrary;

public partial class Login :  System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblError.Visible = true;
    }

    protected void btnSignIn_Click(object sender, EventArgs e)
    {
        string Username = txtUsername.Text.Trim();
        string Email = txtEmail.Text.Trim();
        string Password = txtPassword.Text.Trim();

        using (SqlConnection connection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"H:\\Project Database\\MovieMindsNetwork.mdf\";Integrated Security=True;Connect Timeout=30"))
        {
            connection.Open();

            string query = "SELECT MemberId FROM tblRegistration WHERE Username=@Username AND Email=@Email AND Password=@Password";

            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@Username", Username);
            command.Parameters.AddWithValue("@Email", Email);
            command.Parameters.AddWithValue("@Password", Password);

            object result = command.ExecuteScalar();
            if (result != null)
            {
                int MemberId = (int)result;

                Session["Username"] = Username;
                Session["Email"] = Email;
                Session["MemberId"] = MemberId;

                Response.Redirect("HomePage.aspx");
            }
            else
            {
                lblError.Text = "Invalid username, email, or password.";
                lblError.ForeColor = System.Drawing.Color.Red;
            }
        }
    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx");
    }

    protected void imgBtnLogo_Click(object sender, ImageClickEventArgs e)
    {
        lblError.Text = "Sign into an account or register. ";
    }
}
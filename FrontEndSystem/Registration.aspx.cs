using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using ClassLibrary;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        clsMember newMember = new clsMember();
        string errorMessage = newMember.Valid(TextBox1.Text, TextBox2.Text, TextBox3.Text);

        if (errorMessage == "")
        {
            if (TextBox3.Text == TextBox4.Text)
            {
                int v = check(TextBox2.Text);
                int v2 = checkUser(TextBox1.Text);

                if (v != 1 && v2 != 1)
                {
                    using (SqlConnection connection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"H:\\Project Database\\MovieMindsNetwork.mdf\";Integrated Security=True;Connect Timeout=30"))
                    {
                        connection.Open();
                        string query = "INSERT INTO tblRegistration (Username, Email, Password) VALUES (@Username, @Email, @Password)";
                        SqlCommand command = new SqlCommand(query, connection);
                        command.Parameters.AddWithValue("@Username", TextBox1.Text);
                        command.Parameters.AddWithValue("@Email", TextBox2.Text);
                        command.Parameters.AddWithValue("@Password", TextBox3.Text);
                        command.ExecuteNonQuery();
                        connection.Close();
                        lblError.Text = "Registered successfully!";
                        lblError.ForeColor = System.Drawing.Color.Green;
                        TextBox1.Text = "";
                        TextBox2.Text = "";
                        TextBox3.Text = "";
                        TextBox4.Text = "";
                    }
                }
                else
                {
                    lblError.Text = "You are already registered";
                    lblError.ForeColor = System.Drawing.Color.Red;
                }
            }
            else
            {
                lblError.Text = "Password does not match";
                lblError.ForeColor = System.Drawing.Color.Red;
            }
        }
        else
        {
            lblError.Text = errorMessage;
            lblError.ForeColor= System.Drawing.Color.Red;
        }
    }

    int check(string Email)
    {
        using (SqlConnection connection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"H:\\Project Database\\MovieMindsNetwork.mdf\";Integrated Security=True;Connect Timeout=30"))
        {
            connection.Open();
            string query = "select count(*) from tblRegistration where Email='" + Email + "'";
            SqlCommand command = new SqlCommand(query, connection);
            int v = (int)command.ExecuteScalar();
            connection.Close();
            return v;
        }
    }

    int checkUser(string Username)
    {
        using (SqlConnection connection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"H:\\Project Database\\MovieMindsNetwork.mdf\";Integrated Security=True;Connect Timeout=30"))
        {
            connection.Open();
            string query = "select count(*) from tblRegistration where Username='" + Username + "'";
            SqlCommand command = new SqlCommand(query, connection);
            int v = (int)command.ExecuteScalar();
            connection.Close();
            return v;
        }
    }

    protected void btnSignIn_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }


    protected void imgBtnLogo_Click(object sender, ImageClickEventArgs e)
    {
        lblError.Text = "Register or sign in to an account.";
    }
}
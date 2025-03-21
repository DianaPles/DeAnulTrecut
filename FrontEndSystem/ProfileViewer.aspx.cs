using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProfileViewer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["memberId"] != null && Session["username"] != null && Session["email"] != null)
        {
            lblMemberIdText.Text = Session["memberId"].ToString();
            lblUsernameText.Text = Session["username"].ToString();
            lblEmailText.Text = Session["email"].ToString();
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }


    protected void imgBtnLogo_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }

    protected void btnSignOut_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("Login.aspx");
    }

    protected void imgBtnProfile_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("ProfileViewer.aspx");
    }

    protected void btnHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }

    protected void btnTrending_Click(object sender, EventArgs e)
    {
        Response.Redirect("TopShowsAndMovies.aspx");
    }

    protected void btnDiscussions_Click(object sender, EventArgs e)
    {
        Response.Redirect("Discussions.aspx");
    }
}
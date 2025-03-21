using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Linq;
using ClassLibrary;

public partial class HomePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["memberId"] != null && Session["username"] != null && Session["email"] != null)
        {
            if (!IsPostBack)
            {
                DisplayMovies();
                DisplayShows();
            }
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }

    void DisplayMovies()
    {
        clsMovieCollection Movies = new clsMovieCollection();
        lstMovieList.DataSource = Movies.MovieList;
        lstMovieList.DataValueField = "MovieId";
        lstMovieList.DataTextField = "Title";
        lstMovieList.DataBind();
    }

    void DisplayShows()
    {
        clsShowCollection Shows = new clsShowCollection();
        lstShowList.DataSource = Shows.ShowList;
        lstShowList.DataValueField = "ShowId";
        lstShowList.DataTextField = "Title";
        lstShowList.DataBind();
    }

    protected void imgBtnProfile_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("ProfileViewer.aspx");
    }

    protected void imgBtnLogo_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }

    protected void btnViewMovie_Click(object sender, EventArgs e)
    {
        if (lstMovieList.SelectedIndex != -1)
        {
            Int32 MovieId = Convert.ToInt32(lstMovieList.SelectedValue);
            Session["MovieId"] = MovieId;
            Response.Redirect("MovieViewer.aspx");
        }
        else 
        {
            lblMovieError.Text = "Please select a movie to view.";
        }
    }

    protected void btnViewShow_Click(object sender, EventArgs e)
    {
        if (lstShowList.SelectedIndex != -1)
        {
            Int32 ShowId = Convert.ToInt32(lstShowList.SelectedValue);
            Session["ShowId"] = ShowId;
            Response.Redirect("ShowViewer.aspx");
        }
        else
        {
            lblShowError.Text = "Please select a show to view.";
        }
    }

    protected void btnSearchMovies_Click(object sender, EventArgs e)
    {
        clsMovieCollection MovieCollection = new clsMovieCollection();
        MovieCollection.ReportByTitle(txtSearchMovie.Text);
        lstMovieList.DataSource = MovieCollection.MovieList;
        lstMovieList.DataValueField = "MovieId";
        lstMovieList.DataTextField = "Title";
        lstMovieList.DataBind();
    }

    protected void btnClearMovies_Click(object sender, EventArgs e)
    {
        clsMovieCollection MovieCollection = new clsMovieCollection();
        MovieCollection.ReportByTitle("");
        txtSearchMovie.Text = "";
        lstMovieList.DataSource = MovieCollection.MovieList;
        lstMovieList.DataValueField = "MovieId";
        lstMovieList.DataTextField = "Title";
        lstMovieList.DataBind();
    }

    protected void btnSearchShows_Click(object sender, EventArgs e)
    {
        clsShowCollection ShowCollection = new clsShowCollection();
        ShowCollection.ReportByTitle(txtSearchShow.Text);
        lstShowList.DataSource = ShowCollection.ShowList;
        lstShowList.DataValueField = "ShowId";
        lstShowList.DataTextField = "Title";
        lstShowList.DataBind();
    }

    protected void btnClearShows_Click(object sender, EventArgs e)
    {
        clsShowCollection ShowCollection = new clsShowCollection();
        ShowCollection.ReportByTitle("");
        txtSearchShow.Text = "";
        lstShowList.DataSource = ShowCollection.ShowList;
        lstShowList.DataValueField = "ShowId";
        lstShowList.DataTextField = "Title";
        lstShowList.DataBind();
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
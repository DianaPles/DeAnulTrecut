using ClassLibrary;
using System;
using System.Activities.Expressions;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MovieViewer : System.Web.UI.Page
{
    Int32 MovieId;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["MemberId"] != null && Session["Username"] != null && Session["Email"] != null && Session["MovieId"] != null)
        {
            MovieId = Convert.ToInt32(Session["MovieId"]);
            if (MovieId != -1 && !IsPostBack)
            {
                DisplayMovie();
                DisplayMovieReviews();
                DisplayAverageRating();
            }
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }

    void DisplayMovie()
    {
        clsMovieCollection Movies = new clsMovieCollection();
        Movies.ThisMovie.Find(MovieId);

        lblTitle.Text = Movies.ThisMovie.Title;
        lblRuntimeText.Text = (Movies.ThisMovie.Runtime.Hours * 60 + Movies.ThisMovie.Runtime.Minutes).ToString() + " minutes";
        lblReleaseDateText.Text = Movies.ThisMovie.ReleaseDate.ToShortDateString();
        lblDescriptionText.Text = Movies.ThisMovie.Description;
        lblGenreText.Text = Movies.ThisMovie.Genre;
        lblRatingText.Text = Movies.ThisMovie.Rating.ToString();
        lblDirectorsText.Text = Movies.ThisMovie.Directors;
        lblWritersText.Text = Movies.ThisMovie.Writers;
        lblStarActorsText.Text = Movies.ThisMovie.StarActors;
        imgCoverImage.ImageUrl = Movies.ThisMovie.CoverImage;
    }

    void DisplayMovieReviews()
    {
        Int32 MovieId = Convert.ToInt32(Session["MovieId"]);

        clsMovieReviewCollection MovieReviews = new clsMovieReviewCollection();
        MovieReviews.ReportByMovieId(MovieId);

        lstMovieReviewList.DataSource = MovieReviews.MovieReviewList;
        lstMovieReviewList.DataValueField = "MovieReviewId";
        lstMovieReviewList.DataTextField = "Username";
        lstMovieReviewList.DataBind();

        foreach (ListItem item in lstMovieReviewList.Items)
        {
            item.Text += " - \"" + MovieReviews.MovieReviewList.Find(x => x.MovieReviewId == Convert.ToInt32(item.Value)).Comment + "\"";
        }
    }

    private void DisplayAverageRating()
    {
        MovieId = Convert.ToInt32(Session["MovieId"]);

        clsMovieReviewCollection MovieReviews = new clsMovieReviewCollection();

        MovieReviews.ReportByMovieId(MovieId);

        double AverageRating = 0;
        int ReviewCount = 0;
        foreach (clsMovieReview Review in MovieReviews.MovieReviewList)
        {
            AverageRating += Review.Rating;
            ReviewCount++;
        }

        if (ReviewCount > 0)
        {
            AverageRating /= ReviewCount;
            lblAverageRating.Text = "Average user rating: " + AverageRating.ToString("N2");
        }
        else
        {
            lblAverageRating.Text = "No reviews yet. ";
        }
        
        
    }


    protected void imgBtnLogo_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }

    protected void imgBtnProfile_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("ProfileViewer.aspx");
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        Session["MovieReviewId"] = -1;
        Response.Redirect("MovieReviewEntry.aspx");
    }

    protected void btnTrending_Click(object sender, EventArgs e)
    {
        Response.Redirect("TopShowsAndMovies.aspx");
    }

    protected void btnViewReview_Click(object sender, EventArgs e)
    {
        if (lstMovieReviewList.SelectedIndex != -1)
        {
            Int32 MovieReviewId = Convert.ToInt32(lstMovieReviewList.SelectedValue);
            Session["MovieReviewId"] = MovieReviewId;
            Response.Redirect("MovieReviewViewer.aspx");
        }
        else
        {
            lblError.Text = "Please select a review to view. ";
            lblError.ForeColor = System.Drawing.Color.Red;
        }
    }

    protected void btnHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }

    protected void btnDiscussions_Click(object sender, EventArgs e)
    {
        Response.Redirect("Discussions.aspx");
    }
}
using ClassLibrary;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MovieReviewEntry : System.Web.UI.Page
{
    Int32 MovieId; 

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["memberId"] != null && Session["username"] != null && Session["email"] != null && Session["MovieId"] != null)
        {
            MovieId = Convert.ToInt32(Session["MovieId"]);
            DisplayMovie();
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
        lblMovieTitleText.Text = Movies.ThisMovie.Title;
    }

    protected void btnOK_Click(object sender, EventArgs e)
    {
        clsMovieReview AMovieReview = new clsMovieReview();

        Int32 MovieId = Convert.ToInt32(Session["MovieId"]);
        Int32 MemberId = Convert.ToInt32(Session["memberId"]);
        string Rating = txtRating.Text;
        string Comment = txtComment.Text;
        string DatePosted = DateTime.Now.Date.ToString();

        string Error = "";

        Error = AMovieReview.Valid(Rating, Comment, DatePosted);

        if (Error == "")
        {
            AMovieReview.MovieId = MovieId;
            AMovieReview.MemberId = MemberId;
            AMovieReview.Rating = Convert.ToDouble(Rating);
            AMovieReview.Comment = Comment;
            AMovieReview.DatePosted = Convert.ToDateTime(DatePosted);

            clsMovieReviewCollection MovieReviewList = new clsMovieReviewCollection();
            
            MovieReviewList.ThisMovieReview = AMovieReview;
            MovieReviewList.Add();

            Response.Redirect("MovieViewer.aspx");
        }
        else
        {
            lblError.Text = Error;
            lblError.ForeColor = System.Drawing.Color.Red;
        }
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("MovieViewer.aspx");
    }

    protected void imgBtnLogo_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }
}
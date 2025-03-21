using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassLibrary;

public partial class MovieReviewViewer : System.Web.UI.Page
{
    Int32 MovieReviewId;
    Int32 ReviewMemberId;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["MemberId"] != null && Session["Username"] != null && Session["Email"] != null && Session["MovieReviewId"] != null)
        {
            MovieReviewId = Convert.ToInt32(Session["MovieReviewId"]);
            clsMovieReviewCollection MovieReviews = new clsMovieReviewCollection();
            MovieReviews.ThisMovieReview.Find(MovieReviewId);
            ReviewMemberId = Convert.ToInt32(MovieReviews.ThisMovieReview.MemberId);

            if (MovieReviewId != -1 && !IsPostBack)
            {
                DisplayReview();
                if (ReviewMemberId == Convert.ToInt32(Session["MemberId"]))
                {
                    btnDelete.Visible = true;
                }
                else
                {
                    btnDelete.Visible = false;
                }
            }
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }

    void DisplayReview()
    {
        clsMovieReviewCollection MovieReviews = new clsMovieReviewCollection();
        MovieReviews.ThisMovieReview.Find(MovieReviewId);

        lblMovieTitleText.Text = MovieReviews.ThisMovieReview.MovieTitle;
        lblUserText.Text = MovieReviews.ThisMovieReview.Username;
        lblRatingText.Text = MovieReviews.ThisMovieReview.Rating.ToString();
        lblCommentText.Text = MovieReviews.ThisMovieReview.Comment;
    }

    protected void imgBtnLogo_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        clsMovieReviewCollection MovieReviews = new clsMovieReviewCollection();
        MovieReviews.ThisMovieReview.Find(MovieReviewId);

        ReviewMemberId = Convert.ToInt32(MovieReviews.ThisMovieReview.MemberId);
        if (ReviewMemberId == Convert.ToInt32(Session["MemberId"]))
        {
            Response.Redirect("MovieReviewConfirmDelete.aspx");
        }
        else
        {
            lblError.Text = "You cannot delete another user's review. ";
            lblError.ForeColor = System.Drawing.Color.Red;
        }
    }

    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("MovieViewer.aspx");
    }
}
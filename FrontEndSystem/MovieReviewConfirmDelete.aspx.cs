using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassLibrary;

public partial class MovieReviewConfirmDelete : System.Web.UI.Page
{
    Int32 MovieReviewId;

    protected void Page_Load(object sender, EventArgs e)
    {
        MovieReviewId = Convert.ToInt32(Session["MovieReviewId"]);
    }

    protected void btnYes_Click(object sender, EventArgs e)
    {
        clsMovieReviewCollection MovieReviews = new clsMovieReviewCollection();
        MovieReviews.ThisMovieReview.Find(MovieReviewId);
        MovieReviews.Delete(MovieReviewId);
        Response.Redirect("MovieViewer.aspx");
    }

    protected void btnNo_Click(object sender, EventArgs e)
    {
        Response.Redirect("MovieReviewViewer.aspx");
    }
}
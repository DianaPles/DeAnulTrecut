using ClassLibrary;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Discussions : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["memberId"] != null && Session["username"] != null && Session["email"] != null)
        {
            clsMessageCollection Messages = new clsMessageCollection();

            if (!IsPostBack)
            {
                try
                {
                    DisplayMessages(Messages);
                }
                catch (Exception ex)
                {
                    lblErrorEx.Text = ex.Message;
                }
            }
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }

    void DisplayMessages(clsMessageCollection Messages)
    {
        Messages.ReportByMostRecent10();

        for (int i = 0; i < Messages.MessageList.Count && i < 7; i++)
        {
            switch (i + 1)
            {
                case 1:
                    lblMessageText1.Text = Messages.MessageList[i].Message;
                    lblUsername1.Text = lblUsername1.Text + Messages.MessageList[i].Username;
                    lblDate1.Text = lblDate1.Text + Messages.MessageList[i].DatePosted.ToShortDateString();
                    break;
                case 2:
                    lblMessageText2.Text = Messages.MessageList[i].Message;
                    lblUsername2.Text = lblUsername2.Text + Messages.MessageList[i].Username;
                    lblDate2.Text = lblDate2.Text + Messages.MessageList[i].DatePosted.ToShortDateString();
                    break;
                case 3:
                    lblMessageText3.Text = Messages.MessageList[i].Message;
                    lblUsername3.Text = lblUsername3.Text + Messages.MessageList[i].Username;
                    lblDate3.Text = lblDate3.Text + Messages.MessageList[i].DatePosted.ToShortDateString();
                    break;
                case 4:
                    lblMessageText4.Text = Messages.MessageList[i].Message;
                    lblUsername4.Text = lblUsername4.Text + Messages.MessageList[i].Username;
                    lblDate4.Text = lblDate4.Text + Messages.MessageList[i].DatePosted.ToShortDateString();
                    break;
                case 5:
                    lblMessageText5.Text = Messages.MessageList[i].Message;
                    lblUsername5.Text = lblUsername5.Text + Messages.MessageList[i].Username;
                    lblDate5.Text = lblDate5.Text + Messages.MessageList[i].DatePosted.ToShortDateString();
                    break;
                case 6:
                    lblMessageText6.Text = Messages.MessageList[i].Message;
                    lblUsername6.Text = lblUsername6.Text + Messages.MessageList[i].Username;
                    lblDate6.Text = lblDate6.Text + Messages.MessageList[i].DatePosted.ToShortDateString();
                    break;
                case 7:
                    lblMessageText7.Text = Messages.MessageList[i].Message;
                    lblUsername7.Text = lblUsername7.Text + Messages.MessageList[i].Username;
                    lblDate7.Text = lblDate7.Text + Messages.MessageList[i].DatePosted.ToShortDateString();
                    break;
            }
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

    protected void btnSend_Click(object sender, EventArgs e)
    {
        clsMessage AMessage = new clsMessage();

        Int32 MemberId = Convert.ToInt32(Session["MemberId"]);
        string Message = txtMessage.Text;
        string DatePosted = DateTime.Now.Date.ToString();

        string Error = "";

        Error = AMessage.Valid(Message, DatePosted);

        if (Error == "")
        {
            AMessage.MemberId = MemberId;
            AMessage.Message = Message;
            AMessage.DatePosted = Convert.ToDateTime(DatePosted);

            clsMessageCollection MessageList = new clsMessageCollection();

            MessageList.ThisMessage = AMessage;
            MessageList.Add();

            // Delete the oldest message if there are more than 10 messages in the database
            if (MessageList.Count > 10)
            {
                clsMessage oldestMessage = MessageList.MessageList.OrderBy(m => m.DatePosted).First();
                MessageList.DeleteMessage(oldestMessage);
            }

            Response.Redirect("Discussions.aspx");
        }
        else
        {
            lblError.Text = Error;
            lblError.ForeColor = System.Drawing.Color.Red;
        }
    }

    protected void btnDiscussions_Click(object sender, EventArgs e)
    {
        Response.Redirect("Discussions.aspx");
    }

    protected void btnHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }

    protected void btnTrending_Click(object sender, EventArgs e)
    {
        Response.Redirect("TopShowsAndMovies.aspx");
    }
}
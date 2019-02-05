<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DW4Search.aspx.cs" Inherits="DW4.DW4Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DocuWare Search</title>
    <link rel="stylesheet"
        href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
        type="text/css" />
</head>
<body style="padding-top: 10px">
    <div class="col-xs-8 col-xs-offset-2">
        <form id="form1" runat="server" class="form-horizontal">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3>DocuWare Search Form</h3>
                </div>
                <div class="panel-body">
                    <div class="form-group">
                        <label for="inputFirstname" class="control-label col-xs-2">
                            Subject
                        </label>
                        <div class="col-xs-10">
                            <input type="text" runat="server" class="form-control"
                                id="inputSubject" placeholder="Subject" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-10 col-xs-offset-2">
                            <asp:Button ID="btnSearch" runat="server" Text="Search"
                                CssClass="btn btn-primary" OnClick="btnSearch_Click" />
                        </div>
                    </div>
                </div>
            </div>

            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3>Search Results</h3>
                </div>
                <div class="panel-body">
                    <div class="col-xs-10">
                        <asp:GridView CssClass="table table-bordered"
                            ID="gvSearchResults" runat="server" AutoGenerateColumns="false">
                            <Columns>
                                <asp:BoundField DataField="File Cabinet" HeaderText ="File Cabinet" />
                                <asp:BoundField DataField="Subject" HeaderText ="Subject" />
                                <asp:HyperlinkField Text="Click Me!" DataNavigateUrlFields="Link" HeaderText="Link" Target="_blank" />


                            </Columns>

                           

                        </asp:GridView>
                    </div>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
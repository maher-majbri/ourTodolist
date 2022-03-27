<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Categories.aspx.cs" Inherits="Categories" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

       <div class="row">
            <div class="col-lg-8 mx-auto">
                <div class="card mt-3">
                    <div class="card-header text-center text-capitalize">
                        <h1>Add Category</h1>
                    </div>
                    <div class="card-body p-6">
                        <div class="mb-4 mt-3">
                            <label class="form-label">category name:</label>
                            <asp:TextBox ID="txtName" runat="server"  CssClass="form-control"></asp:TextBox>
                        </div>
                     
                        <hr />
                        <asp:Button ID="btnLogin" runat="server" Text="Add" CssClass="btn btn-primary w-100" OnClick="btnLogin_Click"  />
                            <asp:Label ID="lblMessage" runat="server" Text="" CssClass="text-danger"></asp:Label>
                    </div>
                </div>
            </div>
        </div>

    
    <div class="container my-3">

        <asp:GridView ID="grdCategories" runat="server" DataSourceID="odsCategories" CssClass="table table-dark table-hover" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="category_name" HeaderText="Category Name" />
                  <asp:HyperLinkField DataNavigateUrlFields="category_id" DataNavigateUrlFormatString="~/Categories.aspx?id={0}" HeaderText="Edit" NavigateUrl="~/Categories.aspx" Text="Edit" />

            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="odsCategories" runat="server" SelectMethod="Select" TypeName="CategoriesManager" ></asp:ObjectDataSource>

    </div>


</asp:Content>


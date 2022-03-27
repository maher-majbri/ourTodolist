<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <div class="row">
            <div class="col-lg-8 mx-auto">
                <div class="card mt-3">
                    <div class="card-header text-center">
                        <h1>Add task</h1>
                    </div>
                    <div class="card-body p-6">
                        <div class="mb-4 mt-3">
                            <label class="form-label">نص المهمة</label>
                            <asp:TextBox ID="txtTask" runat="server"  CssClass="form-control"></asp:TextBox>
                        </div>
                       <div class="mb-4 mt-3">
                            <label class="form-label">الأولوية</label>
                            <asp:TextBox ID="txtPriority" runat="server"  CssClass="form-control"></asp:TextBox>
                        </div>
                      <div class="mb-4 mt-3">
                            <label class="form-label">نوع المهمة او التصنيف</label>
                            <asp:DropDownList ID="ddlCategory" runat="server" DataSourceID="odsCategries" DataTextField="category_name" DataValueField="category_id" CssClass="form-select"></asp:DropDownList>
                            <asp:ObjectDataSource ID="odsCategries" runat="server" SelectMethod="Select" TypeName="CategoriesManager"></asp:ObjectDataSource>
                      </div>
                        <hr />
                        <asp:Button ID="btnLogin" runat="server" Text="Add" CssClass="btn btn-primary w-100" OnClick="btnLogin_Click"  />
                            <asp:Label ID="lblMessage" runat="server" Text="" CssClass="text-danger"></asp:Label>
                    </div>
                </div>
            </div>
        </div>

    <div class="container my-3">

        <asp:GridView ID="grdTasks" runat="server" DataSourceID="odsTasks" CssClass="table table-dark table-hover" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="task_date" HeaderText="Date Added" />
                <asp:BoundField DataField="task_text" HeaderText="Task" />
                <asp:BoundField DataField="task_state" HeaderText="State" />
                <asp:BoundField DataField="task_priority" HeaderText="Priority" />
                <asp:BoundField DataField="category_name" HeaderText="category" />
                  <asp:HyperLinkField DataNavigateUrlFields="task_id" DataNavigateUrlFormatString="~/Edit.aspx?id={0}" HeaderText="Edit" NavigateUrl="~/Edit.aspx" Text="Edit" />
              <asp:HyperLinkField DataNavigateUrlFields="task_id" DataNavigateUrlFormatString="~/DeleteTask.aspx?id={0}" HeaderText="Delete" NavigateUrl="~/DeleteTask.aspx" Text="Delete" />
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="odsTasks" runat="server" SelectMethod="Select" TypeName="TasksManager" ></asp:ObjectDataSource>

    </div>

</asp:Content>


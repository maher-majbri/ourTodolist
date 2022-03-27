<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Edit.aspx.cs" Inherits="Edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:TextBox ID="txtId" runat="server" Visible="false"></asp:TextBox>
    <div class="row">
            <div class="col-lg-8 mx-auto">
                <div class="card mt-3">
                    <div class="card-header text-center">
                        <h1>Edit task</h1>
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
                     
                        <hr />
                        <asp:Button ID="btnUpdate" runat="server" Text="Update Task" CssClass="btn btn-primary w-100" OnClick="btnUpdate_Click"   />
                            <asp:Label ID="lblMessage" runat="server" Text="" CssClass="text-danger"></asp:Label>
                    </div>
                </div>
            </div>
        </div>

</asp:Content>


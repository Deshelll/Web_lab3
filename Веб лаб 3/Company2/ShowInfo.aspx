<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowInfo.aspx.cs" Inherits="Company2.ShowInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                    <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tCompanyConnectionString %>" DeleteCommand="Delete from [Customers] where Id=@Id" InsertCommand="Insert into [Customers](Name, Surname, Year) values(@Name,@Surname,@Year)" ProviderName="<%$ ConnectionStrings:tCompanyConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Customers]" UpdateCommand="Update [Customers] set Name=@Name, Surname=@Surname, Year=@Year where Id=@Id">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="Id" PropertyName="SelectedValue" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox4" Name="Name" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox5" Name="Surname" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox6" Name="Year" PropertyName="Text" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="Name" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="GridView1" Name="Surname" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="GridView1" Name="Year" PropertyName="SelectedValue" />
                    <asp:Parameter Name="Id" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Добавить Заказчика" />
&nbsp;<asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="Редактировать Заказчика" />
&nbsp;<asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="Удалить Заказчика" />
            <br />
            <br />
            <asp:Panel ID="Panel2" runat="server" Visible="False">
                Имя:
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <br />
                Фамилия:
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <br />
                Год рождения:
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Добавить" />
                &nbsp;<asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Отменить" />
            </asp:Panel>
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" DataKeyNames="Id" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="Id_Customers" HeaderText="Id_Customers" SortExpression="Id_Customers" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="Count" HeaderText="Count" SortExpression="Count" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:tCompanyConnectionString %>" SelectCommand="SELECT * FROM [Order] WHERE ([Id_Customers] = @Id_Customers)" DeleteCommand="Delete from [Order] where Id=@Id" InsertCommand="Insert into [Order](Title,Id_Customers,Price,Count) values(@Title,@Id_Customers,@Price,@Count)" UpdateCommand="Update [Order] set Title=@Title, Price=@Price, Count=@Count, Id_Customers=@Id_Customers where Id=@Id">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="GridView2" Name="Id" PropertyName="SelectedValue" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="Title" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox2" Name="Price" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox3" Name="Count" PropertyName="Text" />
                    <asp:ControlParameter ControlID="GridView1" Name="Id_Customers" PropertyName="SelectedValue" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="Id_Customers" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="GridView2" Name="Title" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="GridView2" Name="Price" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="GridView2" Name="Count" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="GridView2" Name="Id" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="GridView2" Name="Id_Customers" PropertyName="SelectedValue" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Добавить заказ" />
&nbsp;<asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Редактировать заказы" />
&nbsp;<asp:Button ID="Button9" runat="server" OnClick="Button9_Click" Text="Удалить заказ" />
            <br />
            <asp:Panel ID="Panel1" runat="server" Visible="False">
                Название товара:
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                Цена:
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                Количество:
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Добавить" />
                &nbsp;<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Отменить" />
            </asp:Panel>
            <br />
        </div>
    </form>
</body>
</html>

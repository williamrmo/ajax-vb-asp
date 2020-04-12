<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="index.aspx.vb" Inherits="ajax3.frmWeb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AJAX</title>
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/ajax.js"></script>
    <link rel="stylesheet" href="./Styles/Style.css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"/>
</head>
<body>
    <header class="container">
        <div class="jumbotron">
            <h1 class="text-center">Demostracion de AJAX</h1>
            <hr />
            <div class="form text-center">
                <form id="form2" runat="server">
                    <asp:Button ID="btnGet" CssClass="btn btn-primary" runat="server" Text="Cargar Datos web forms" />
                    <hr />
                    <div class="row justify-content-center">
                        <asp:TextBox ID="txtBuscar" CssClass="form-control col-4" runat="server"></asp:TextBox>
                    <asp:Button ID="btnBuscar" CssClass="btn btn-primary col-3" runat="server" Text="Buscar Datos web forms" />
                    </div>
                    
                </form>
            </div>
            <br/>
            <div id="alert" runat="server" class="alert alert-danger" role="alert">
                <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </header>
    
    <section>       
        <article class="container">
            <div>
                <table id="tbData" class="table">
                    <thead>
                        <tr>
                            <th scope="col">symbol</th>
                            <th scope="col">name</th>
                            <th scope="col">price</th>
                            <th scope="col">exchange</th>
                        </tr>                
                    </thead>
                    <tbody id="tbRow"></tbody>
                </table>
            </div>
        </article>
    </section>

    
</body>
</html>

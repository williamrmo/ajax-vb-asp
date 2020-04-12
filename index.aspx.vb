Public Class frmWeb
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            Me.lblError.Text = String.Empty
            Me.lblError.Visible = False
            Me.alert.Visible = False
        Catch ex As Exception
            Throw ex
        End Try
    End Sub

    Protected Sub btnGet_Click(sender As Object, e As EventArgs) Handles btnGet.Click
        Try
            ScriptManager.RegisterStartupScript(Me, Me.Page.GetType, "getAJAX", "getAJAX();", True)
        Catch ex As Exception
            Me.lblError.Text = "Error al consultar"
            Me.lblError.Visible = True
            Me.alert.Visible = True
        End Try
    End Sub

    Protected Sub btnBuscar_Click(sender As Object, e As EventArgs) Handles btnBuscar.Click
        Try
            Dim strNombre As String = Me.txtBuscar.Text
            If Not strNombre.Equals("") Then
                Me.lblError.Visible = False
                Me.alert.Visible = False

                Dim strFunction As New StringBuilder("buscarRegistroAJAX('")

                'agrega los filtros a la consulta de la información
                With strFunction
                    .Append(strNombre)
                    .Append("'); ")
                End With

                ''Dim strFunction As String = "buscarRegistroAJAX('" + strNombre + "');"
                ScriptManager.RegisterStartupScript(Me, Me.Page.GetType, "buscarRegistroAJAX", strFunction.ToString, True)
            Else
                Me.lblError.Text = "Debe ingresar el nombre a buscar"
                Me.lblError.Visible = True
                Me.alert.Visible = True
            End If

        Catch ex As Exception
            Me.lblError.Text = "Error al consultar"
            Me.lblError.Visible = True
            Me.alert.Visible = True
        End Try
    End Sub
End Class
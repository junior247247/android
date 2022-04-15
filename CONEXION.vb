Imports System.Data.SqlClient
Public Class CONEXION
    Protected cnn As New SqlConnection


    Public Function conectado() As Boolean
        Try
            cnn = New SqlConnection("data source=(local);initial catalog=PUNTO_DE_ALQUILER;integrated security=true")
            cnn.Open()
            Return True
        Catch ex As Exception
            MsgBox(ex.Message)
            Return False
        End Try
    End Function

    Public Function desconectado() As Boolean
        Try
            If cnn.State = ConnectionState.Open Then
                cnn.Close()
                Return True
            Else
                Return False
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
            Return False
        End Try
    End Function



End Class

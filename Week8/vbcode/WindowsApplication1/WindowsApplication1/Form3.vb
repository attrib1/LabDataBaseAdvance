Imports System.Data.SqlClient
Public Class Form3
    Private ConnectingString As String = "Data Source=localhost;Initial Catalog=dbVUstore;Integrated Security=True"
    Dim sqlSelect As String = "select * from ORDERS"
    Dim sqlConnection As New SqlConnection(ConnectingString)
    Dim sqlCommand As New SqlCommand(sqlSelect, sqlConnection)
    Dim sqlReader As SqlDataReader
    Private Sub Form3_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        sqlConnection.Open()
        sqlReader = sqlCommand.ExecuteReader()
        'reading from data
       
        While (sqlReader.Read())
            Me.ListBox1.Items.Add(sqlReader("proID"))
            Me.ListBox2.Items.Add(sqlReader("proName"))
            Me.ListBox3.Items.Add(sqlReader("proPrice"))
            Me.ListBox4.Items.Add(sqlReader("proCount"))
            Me.ListBox5.Items.Add(sqlReader("sumPrice"))
        End While

    End Sub
End Class
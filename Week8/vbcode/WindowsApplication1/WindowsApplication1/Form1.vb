Imports System.Data.SqlClient

Public Class Form1
    Private ConnectingString As String = "Data Source=localhost;Initial Catalog=dbVUstore;Integrated Security=True"
    Dim sqlSelect As String = "select * from employee"
    Dim sqlConnection As New SqlConnection(ConnectingString)
    Dim sqlCommand As New SqlCommand(sqlSelect, sqlConnection)
    Dim sqlReader As SqlDataReader
    Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        ReadMyData(ConnectingString)
    End Sub

    Private Sub ReadMyData(ByVal ConnectingString As String)
        sqlConnection.Open()
        sqlReader = sqlCommand.ExecuteReader()
        'reading from data
        sqlReader.Read()

        TextBox1.Text = sqlReader.Item("emId")
        TextBox2.Text = sqlReader.Item("emName")
        TextBox3.Text = sqlReader.Item("emPosition")
        TextBox4.Text = sqlReader.Item("emAddress")
        TextBox5.Text = sqlReader.Item("emZipCode")
        TextBox6.Text = sqlReader.Item("emTel")
        TextBox7.Text = sqlReader.Item("emSalary")
    End Sub

    Private Sub Label1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Label1.Click

    End Sub

    Private Sub add_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles add.Click
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
        TextBox5.Text = ""
        TextBox6.Text = ""
        TextBox7.Text = ""
    End Sub

    Private Sub save_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles save.Click
        Insertmydata(ConnectingString)
    End Sub

    Private Sub Insertmydata(ByVal ConnectingString As String)

        Dim sqlInsert As String = ("insert into employee Values(" & TextBox1.Text & ",'" & TextBox2.Text & "','" & TextBox3.Text & "','" & TextBox4.Text & "','" & TextBox5.Text & "','" & TextBox6.Text & "','" & TextBox7.Text & "') ")
        Dim sqlConnect As New SqlConnection(ConnectingString)
        Dim sqlCommand As New SqlCommand(sqlInsert, sqlConnect)
        sqlConnect.Open()
        sqlCommand.ExecuteNonQuery()
        sqlConnection.Close()
    End Sub

    Private Sub del_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles del.Click
        Dim sqlDelete As String = ("Delete From employee where emId=" & TextBox1.Text)
        Dim sqlConnect As New SqlConnection(ConnectingString)
        Dim sqlCommand As New SqlCommand(sqlDelete, sqlConnect)
        sqlConnect.Open()
        sqlCommand.ExecuteNonQuery()
        ReadMyData(ConnectingString)
        sqlConnect.Close()
    End Sub

    Private Sub Btn_Next_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Btn_Next.Click
        If sqlReader.Read() = False Then Exit Sub
        TextBox1.Text = sqlReader.Item("emId")
        TextBox2.Text = sqlReader.Item("emName")
        TextBox3.Text = sqlReader.Item("emPosition")
        TextBox4.Text = sqlReader.Item("emAddress")
        TextBox5.Text = sqlReader.Item("emZipCode")
        TextBox6.Text = sqlReader.Item("emTel")
        TextBox7.Text = sqlReader.Item("emSalary")

    End Sub

    Private Sub btn_Order_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn_Order.Click

        Form2.Show()

    End Sub
    Private Sub Form1_FormClosed(ByVal sender As System.Object, ByVal e As System.Windows.Forms.FormClosedEventArgs) Handles MyBase.FormClosed

        ' call Close when exit.

        sqlReader.Close()

        ' Close the connection when done with it. 

        sqlConnection.Close()

    End Sub
End Class

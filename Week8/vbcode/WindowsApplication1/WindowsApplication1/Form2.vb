Imports System.Data.SqlClient
Public Class Form2
    Dim sqlReader As SqlDataReader
    Private ConnectingString As String = "Data Source=localhost;Initial Catalog=dbVUstore;Integrated Security=True"
    Private Sub Form2_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click

        Dim sqlSearch As String = "select proID,proName,proPrice from product where proID = " & TextBox_Search.Text
        Dim sqlConnection As New SqlConnection(ConnectingString)

        Dim sqlCommand As New SqlCommand(sqlSearch, sqlConnection)

        sqlConnection.Open()
        sqlReader = sqlCommand.ExecuteReader()
        sqlReader.Read()
        TextName.Text = sqlReader.Item("proName")
        labelprice.Text = sqlReader.Item("proPrice")
        LabelTotal.Text = Val(TextCount.Text) * Val(labelprice.Text)
        sqlReader.Close()


    End Sub

    Private Sub addOrder_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles addOrder.Click

        Dim sqlSearch As String = "select proID,proName,proPrice from product where proID = " & TextBox_Search.Text
        Dim sqlConnection As New SqlConnection(ConnectingString)
        Dim sqlCommand As New SqlCommand(sqlSearch, sqlConnection)
        sqlConnection.Open()
        sqlReader = sqlCommand.ExecuteReader()
        sqlReader.Read()
        ListBox1.Items.Add(sqlReader.Item("proID"))
        ListBox2.Items.Add(sqlReader.Item("proName"))
        ListBox3.Items.Add(sqlReader.Item("proPrice"))
        ListBox4.Items.Add(TextCount.Text)
        ListBox5.Items.Add(LabelTotal.Text)
        sqlReader.Close()
        'sqlConnection.Close()


    End Sub

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        Dim i As Integer
        Dim sql As String = "INSERT INTO orders VALUES(" & ListBox1.Items(i).ToString() & ",'" & ListBox2.Items(i).ToString() & "','" & ListBox3.Items(i).ToString() & "','" & ListBox4.Items(i).ToString() & "','" & ListBox5.Items(i).ToString() & "')"
        Dim sqlinsert As String = ("" & sql)
        Dim sqlConnection As New SqlConnection(ConnectingString)
        Dim sqlCommand As New SqlCommand(sqlinsert, sqlConnection)
        sqlConnection.Open()
        'sqlCommand.ExecuteNonQuery()
        For i = 0 To ListBox1.Items.Count() - 1
            sqlinsert = ("" & sql)
            sqlCommand.ExecuteNonQuery()
        Next
        ' sqlConnection.Close()
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        TextName.Text = ""
        labelprice.Text = ""
        LabelTotal.Text = "ราคาต่อหน่วย"
        ListBox1.Items.Clear()
        ListBox2.Items.Clear()
        ListBox3.Items.Clear()
        ListBox4.Items.Clear()
        ListBox5.Items.Clear()

    End Sub

    Private Sub showdata_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles showdata.Click
        Form3.Show()
    End Sub
End Class
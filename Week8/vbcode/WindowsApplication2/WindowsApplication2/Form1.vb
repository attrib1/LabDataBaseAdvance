Imports System.Data
Imports System.Data.SqlClient
Public Class Form1
    Private connectionString As String = "data source=.\SQLEXPRESS;AttachDbFilename=C:\USERS\ADMINISTRATOR\DOCUMENTS\PROJECT.MDF;integrated security=true;connect timeout=30;user instance=true"
    Dim dtAdapter As SqlDataAdapter
    Dim dt As New DataTable
    Dim strSql As String
    Dim objConn As New SqlConnection(connectionString)
    Dim objCmd As New SqlCommand(strSql, objConn)
    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        objConn = New SqlConnection(connectionString)
        objConn.Open()

        If TextBox1.Text = "" Or TextBox2.Text = "" Then

            MessageBox.Show("กรุณาใส่ข้อมูลให้ครบ", "ผิดพลาด", MessageBoxButtons.OK, MessageBoxIcon.Error)

        Else
            strSql = "SELECT * FROM Login WHERE Username = '" & Me.TextBox1.Text & "' AND Password ='" & Me.TextBox2.Text & "'"
            dtAdapter = New SqlDataAdapter(strSql, objConn)
            dtAdapter.Fill(dt)
            If dt.Rows.Count <= 0 Then
                MessageBox.Show("กรุณาตรวจสอบชื่อผู้ใช้งานเเละรหัสผ่านให้ถูกต้อง", "ผิดพลาด", MessageBoxButtons.OK, MessageBoxIcon.Error)

            Else
                home.Show()
                Me.Hide()
            End If
            dtAdapter = Nothing
            objConn.Close()
            objConn = Nothing
        End If
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        Application.Exit()

    End Sub

    Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        objConn.Open()
        Try

        Catch ex As Exception
            MsgBox("ไม่สามารถเชื่อมต่อฐานข้อมูลได้ กรุณาตรวจสอบฐานข้อมูลค่ะ", MsgBoxStyle.Critical, "การเชื่อมต่อล้ม")
        End Try
        objConn.Close()

    End Sub
End Class

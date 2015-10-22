<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form2
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.TextBox_Search = New System.Windows.Forms.TextBox()
        Me.TextCount = New System.Windows.Forms.TextBox()
        Me.TextName = New System.Windows.Forms.TextBox()
        Me.Button1 = New System.Windows.Forms.Button()
        Me.addOrder = New System.Windows.Forms.Button()
        Me.ListBox1 = New System.Windows.Forms.ListBox()
        Me.ListBox2 = New System.Windows.Forms.ListBox()
        Me.ListBox3 = New System.Windows.Forms.ListBox()
        Me.ListBox4 = New System.Windows.Forms.ListBox()
        Me.ListBox5 = New System.Windows.Forms.ListBox()
        Me.Button3 = New System.Windows.Forms.Button()
        Me.labelprice = New System.Windows.Forms.Label()
        Me.LabelTotal = New System.Windows.Forms.Label()
        Me.Button2 = New System.Windows.Forms.Button()
        Me.showdata = New System.Windows.Forms.Button()
        Me.SuspendLayout()
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(163, 35)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(57, 13)
        Me.Label1.TabIndex = 0
        Me.Label1.Text = "สั่งซื้อสินค้า"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(35, 91)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(39, 13)
        Me.Label2.TabIndex = 1
        Me.Label2.Text = "Label2"
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(38, 145)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(39, 13)
        Me.Label3.TabIndex = 2
        Me.Label3.Text = "Label3"
        '
        'TextBox_Search
        '
        Me.TextBox_Search.Location = New System.Drawing.Point(120, 91)
        Me.TextBox_Search.Name = "TextBox_Search"
        Me.TextBox_Search.Size = New System.Drawing.Size(100, 20)
        Me.TextBox_Search.TabIndex = 3
        '
        'TextCount
        '
        Me.TextCount.Location = New System.Drawing.Point(88, 142)
        Me.TextCount.Name = "TextCount"
        Me.TextCount.Size = New System.Drawing.Size(100, 20)
        Me.TextCount.TabIndex = 4
        '
        'TextName
        '
        Me.TextName.Location = New System.Drawing.Point(226, 91)
        Me.TextName.Name = "TextName"
        Me.TextName.Size = New System.Drawing.Size(100, 20)
        Me.TextName.TabIndex = 5
        '
        'Button1
        '
        Me.Button1.Location = New System.Drawing.Point(206, 142)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(75, 23)
        Me.Button1.TabIndex = 6
        Me.Button1.Text = "check"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'addOrder
        '
        Me.addOrder.Location = New System.Drawing.Point(287, 139)
        Me.addOrder.Name = "addOrder"
        Me.addOrder.Size = New System.Drawing.Size(75, 23)
        Me.addOrder.TabIndex = 7
        Me.addOrder.Text = "Add order"
        Me.addOrder.UseVisualStyleBackColor = True
        '
        'ListBox1
        '
        Me.ListBox1.FormattingEnabled = True
        Me.ListBox1.Location = New System.Drawing.Point(0, 191)
        Me.ListBox1.Name = "ListBox1"
        Me.ListBox1.Size = New System.Drawing.Size(73, 225)
        Me.ListBox1.TabIndex = 8
        '
        'ListBox2
        '
        Me.ListBox2.FormattingEnabled = True
        Me.ListBox2.Location = New System.Drawing.Point(72, 191)
        Me.ListBox2.Name = "ListBox2"
        Me.ListBox2.Size = New System.Drawing.Size(120, 225)
        Me.ListBox2.TabIndex = 9
        '
        'ListBox3
        '
        Me.ListBox3.FormattingEnabled = True
        Me.ListBox3.Location = New System.Drawing.Point(190, 191)
        Me.ListBox3.Name = "ListBox3"
        Me.ListBox3.Size = New System.Drawing.Size(69, 225)
        Me.ListBox3.TabIndex = 10
        '
        'ListBox4
        '
        Me.ListBox4.FormattingEnabled = True
        Me.ListBox4.Location = New System.Drawing.Point(258, 191)
        Me.ListBox4.Name = "ListBox4"
        Me.ListBox4.Size = New System.Drawing.Size(52, 225)
        Me.ListBox4.TabIndex = 11
        '
        'ListBox5
        '
        Me.ListBox5.FormattingEnabled = True
        Me.ListBox5.Location = New System.Drawing.Point(310, 191)
        Me.ListBox5.Name = "ListBox5"
        Me.ListBox5.Size = New System.Drawing.Size(120, 225)
        Me.ListBox5.TabIndex = 12
        '
        'Button3
        '
        Me.Button3.Location = New System.Drawing.Point(265, 422)
        Me.Button3.Name = "Button3"
        Me.Button3.Size = New System.Drawing.Size(75, 23)
        Me.Button3.TabIndex = 13
        Me.Button3.Text = "insert Order to Table"
        Me.Button3.UseVisualStyleBackColor = True
        '
        'labelprice
        '
        Me.labelprice.AutoSize = True
        Me.labelprice.Location = New System.Drawing.Point(379, 94)
        Me.labelprice.Name = "labelprice"
        Me.labelprice.Size = New System.Drawing.Size(71, 13)
        Me.labelprice.TabIndex = 14
        Me.labelprice.Text = "ราคาต่อหน่วย"
        '
        'LabelTotal
        '
        Me.LabelTotal.AutoSize = True
        Me.LabelTotal.Location = New System.Drawing.Point(379, 145)
        Me.LabelTotal.Name = "LabelTotal"
        Me.LabelTotal.Size = New System.Drawing.Size(49, 13)
        Me.LabelTotal.TabIndex = 15
        Me.LabelTotal.Text = "ราคาสุทธิ"
        '
        'Button2
        '
        Me.Button2.Location = New System.Drawing.Point(184, 422)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(75, 23)
        Me.Button2.TabIndex = 16
        Me.Button2.Text = "Clear"
        Me.Button2.UseVisualStyleBackColor = True
        '
        'showdata
        '
        Me.showdata.Location = New System.Drawing.Point(346, 422)
        Me.showdata.Name = "showdata"
        Me.showdata.Size = New System.Drawing.Size(75, 23)
        Me.showdata.TabIndex = 17
        Me.showdata.Text = "ShowData"
        Me.showdata.UseVisualStyleBackColor = True
        '
        'Form2
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(451, 450)
        Me.Controls.Add(Me.showdata)
        Me.Controls.Add(Me.Button2)
        Me.Controls.Add(Me.LabelTotal)
        Me.Controls.Add(Me.labelprice)
        Me.Controls.Add(Me.Button3)
        Me.Controls.Add(Me.ListBox5)
        Me.Controls.Add(Me.ListBox4)
        Me.Controls.Add(Me.ListBox3)
        Me.Controls.Add(Me.ListBox2)
        Me.Controls.Add(Me.ListBox1)
        Me.Controls.Add(Me.addOrder)
        Me.Controls.Add(Me.Button1)
        Me.Controls.Add(Me.TextName)
        Me.Controls.Add(Me.TextCount)
        Me.Controls.Add(Me.TextBox_Search)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label1)
        Me.Name = "Form2"
        Me.Text = "Form2"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents TextBox_Search As System.Windows.Forms.TextBox
    Friend WithEvents TextCount As System.Windows.Forms.TextBox
    Friend WithEvents TextName As System.Windows.Forms.TextBox
    Friend WithEvents Button1 As System.Windows.Forms.Button
    Friend WithEvents addOrder As System.Windows.Forms.Button
    Friend WithEvents ListBox1 As System.Windows.Forms.ListBox
    Friend WithEvents ListBox2 As System.Windows.Forms.ListBox
    Friend WithEvents ListBox3 As System.Windows.Forms.ListBox
    Friend WithEvents ListBox4 As System.Windows.Forms.ListBox
    Friend WithEvents ListBox5 As System.Windows.Forms.ListBox
    Friend WithEvents Button3 As System.Windows.Forms.Button
    Friend WithEvents labelprice As System.Windows.Forms.Label
    Friend WithEvents LabelTotal As System.Windows.Forms.Label
    Friend WithEvents Button2 As System.Windows.Forms.Button
    Friend WithEvents showdata As System.Windows.Forms.Button
End Class

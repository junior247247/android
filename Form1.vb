Imports FontAwesome.Sharp
Imports System.Runtime.InteropServices
Imports System.Drawing
Imports System.Drawing.Drawing2D
Public Class Form1
    Private dt As New DataTable
    Private class_venta As New CLASE_VENTA
    Private class_producto As New CLASS_PRODUCTO
    Private obj_producto As New CE_PRODUCTO
    Private class_caja_ As New CLASS_CAJA
    Private currentBtn As IconButton
    Private leftborderBtn As Panel


    Public Sub New()

        ' Esta llamada es exigida por el diseñador.
        InitializeComponent()
        leftborderBtn = New Panel()
        leftborderBtn.Size = New Size(7, 37)

        panel_menu.Controls.Add(leftborderBtn)
        ' Agregue cualquier inicialización después de la llamada a InitializeComponent().

        Me.Text = String.Empty
        Me.ControlBox = False
        Me.DoubleBuffered = True

    End Sub

    Public Sub addForm(ByVal sender As Object)
        'If panel_contenedor.Controls.Count > 0 Then
        'panel_contenedor.Controls.RemoveAt(0)
        Dim frm As New Form
            frm = sender
            frm.TopLevel = False
            frm.FormBorderStyle = FormBorderStyle.None
            frm.Dock = DockStyle.Fill
            panel_contenedor.Controls.Add(frm)
            panel_contenedor.Tag = frm
            frm.Show()

        'End If
    End Sub


    Public Sub verificar_si_ya_esta_en_rango_de_dias()
        Try
            Dim dt_producto As New DataTable
            dt = class_venta.verificar_si_ya_esta_en_rango_de_dias
            If dt.Rows.Count > 0 Then

                dt = class_venta.verificar_si_ya_esta_en_rango_de_dias
                    Dim id_venta As Integer = dt.Rows(0).Item("id_venta")
                    dt = class_venta.selecionar_los_articulos(id_venta)
                    If dt.Rows.Count > 0 Then
                    For j = 0 To dt.Rows.Count - 1 Step 1


                        Dim id_producto As Integer = dt.Rows(j).Item("id_producto")
                        dt_producto = class_producto.verificar_existencia_disponible(id_producto)
                        Dim existencia As Decimal = dt_producto.Rows(0).Item("existencia")
                        Dim cantidad As Decimal = dt.Rows(j).Item("cantidad")
                        dt = class_venta.selecionar_datos(id_venta)
                        Dim cliente As String = dt.Rows(0).Item("cliente").ToString
                        Dim telefono As String = dt.Rows(0).Item("telefono").ToString

                        If cantidad <= existencia Then
                            With obj_producto
                                .id_producto = id_producto
                                .existencia = cantidad
                            End With
                            class_producto.disminuir_stock(obj_producto)
                            MessageBox.Show("EL INVENTARIO FUE AFECTADO DEBIDO A UNA FECHA SERCANA DE UNA RESRVACION NO RESERVA: " + id_venta.ToString + " " + cliente.ToString + " " + telefono.ToString, "ALERTA DE SALIDA", MessageBoxButtons.OK, MessageBoxIcon.Warning)
                        Else
                            MessageBox.Show("El producto:" + dt_producto.Rows(0).Item("description").ToString + "No tiene la cantidad disponibles para esta reservacion", "ALERTA DE SALIDA", MessageBoxButtons.OK, MessageBoxIcon.Warning)
                        End If

                    Next

                    class_venta.actualizar_estados_articulos(Val(id_venta))

                    End If

            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
    Private Sub DisableButton()
        If currentBtn IsNot Nothing Then
            currentBtn.BackColor = Color.FromArgb(31, 30, 68)
            currentBtn.ForeColor = Color.Gainsboro
            currentBtn.IconColor = Color.Gainsboro
            currentBtn.TextAlign = ContentAlignment.MiddleLeft
            currentBtn.ImageAlign = ContentAlignment.MiddleLeft
            currentBtn.TextImageRelation = TextImageRelation.ImageBeforeText
        End If
    End Sub
    Private Sub activatebutton(senderBtn As Object, custumsColor As Color)
        If senderBtn IsNot Nothing Then
            DisableButton()
            currentBtn = CType(senderBtn, IconButton)
            currentBtn.BackColor = Color.FromArgb(37, 36, 81)
            currentBtn.ForeColor = custumsColor
            currentBtn.IconColor = custumsColor
            currentBtn.TextAlign = ContentAlignment.MiddleCenter
            currentBtn.ImageAlign = ContentAlignment.MiddleRight
            currentBtn.TextImageRelation = TextImageRelation.TextBeforeImage
            leftborderBtn.BackColor = custumsColor
            leftborderBtn.Location = New Point(0, currentBtn.Location.Y)
            leftborderBtn.Visible = True
            leftborderBtn.BringToFront()

            iconCurrentform.IconChar = currentBtn.IconChar
            iconCurrentform.IconColor = custumsColor

        End If
    End Sub

    Private Sub Panel2_MouseDown(sender As Object, e As MouseEventArgs) Handles Panel2.MouseDown
        ReleaseCapture()
        SendMessage(Me.Handle, &H112&, &HF012&, 0)

    End Sub



    Private Sub btn_restaurar_Click(sender As Object, e As EventArgs) Handles btn_restaurar.Click
        WindowState = FormWindowState.Normal
        btn_restaurar.Visible = False
        btn_maximixar.Visible = True
    End Sub

    Private Sub btn_maximixar_Click(sender As Object, e As EventArgs) Handles btn_maximixar.Click
        WindowState = FormWindowState.Maximized
        btn_restaurar.Visible = True
        btn_maximixar.Visible = False

    End Sub

    Private Sub btn_cerrar_Click(sender As Object, e As EventArgs) Handles btn_cerrar.Click
        Dim d As New DialogResult
        d = MessageBox.Show("SEGURO QUE QUIERES SALIR", "CERRANDO EL SISTEMA", MessageBoxButtons.YesNo, MessageBoxIcon.Question)
        If d = DialogResult.Yes Then
            End
        End If
    End Sub

    Private Sub btn_minimixar_Click(sender As Object, e As EventArgs) Handles btn_minimixar.Click
        WindowState = FormWindowState.Minimized
    End Sub

    Public Sub saber_que_permiso_dar()
        Try
            Dim class_usuario As New CLASS_USUARIO
            dt = class_usuario.darle_permisos(Val(lbl_id_usuario.Text))
            If dt.Rows.Count > 0 Then
                If dt.Rows(0).Item("permiso").ToString = "CAJERO" Then
                    btn_icon_gastos.Enabled = False
                    btn_icon_invantario.Enabled = False
                    btn_icon_usuario.Enabled = False
                Else

                    btn_icon_gastos.Enabled = True
                    btn_icon_invantario.Enabled = True
                    btn_icon_usuario.Enabled = True
                End If
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub



    'Private Sub btn_caja_Click(sender As Object, e As EventArgs)
    '    frm_caja.TopLevel = False

    '    frm_inventario.Hide()
    '    frm_home.Hide()
    '    frm_gastos.Hide()
    '    frm_caja.Hide()
    '    frm_cliente.Hide()
    '    frm_ventas.Hide()
    '    frm_producto.Hide()
    '    frm_categorias.Hide()
    '    frm_salidas_que_les_toca_entregar_hoy.Hide()
    '    lbl_donde_estoy.Text = "CAJA"

    'End Sub

    Private Sub btn_icon_home_Click(sender As Object, e As EventArgs) Handles btn_icon_home.Click
        activatebutton(sender, Rgb.RGBColors.color1)
        frm_salidas_que_les_toca_entregar_hoy.TopLevel = False
        frm_salidas_que_les_toca_entregar_hoy.FormBorderStyle = FormBorderStyle.None
        frm_salidas_que_les_toca_entregar_hoy.Dock = DockStyle.Fill
        panel_contenedor.Controls.Add(frm_salidas_que_les_toca_entregar_hoy)
        lbl_donde_estoy.Text = "Home"
        frm_inventario.Hide()
        frm_home.Hide()
        frm_gastos.Hide()
        frm_caja.Hide()
        frm_cliente.Hide()
        frm_ventas.Hide()
        frm_producto.Hide()
        frm_usuarios.Hide()
        frm_categorias.Hide()
        frm_caja.Hide()
        frm_salidas_que_les_toca_entregar_hoy.Show()
        GroupBox1.Visible = False
        grb_menu.Visible = False
    End Sub

    Private Sub btn_icon_venta_Click(sender As Object, e As EventArgs) Handles btn_icon_venta.Click
        activatebutton(sender, Rgb.RGBColors.color2)

        lbl_donde_estoy.Text = "VENTA"
        frm_ventas.TopLevel = False
        frm_ventas.FormBorderStyle = FormBorderStyle.None
        frm_ventas.Dock = DockStyle.Fill
        panel_contenedor.Controls.Add(frm_ventas)

        frm_inventario.Hide()
        frm_home.Hide()
        frm_gastos.Hide()
        frm_caja.Hide()
        frm_cliente.Hide()
        frm_usuarios.Hide()
        frm_producto.Hide()
        frm_categorias.Hide()
        frm_caja.Hide()
        frm_salidas_que_les_toca_entregar_hoy.Hide()
        frm_ventas.Show()
        GroupBox1.Visible = False

        grb_menu.Visible = False
    End Sub

    Private Sub btn_icon_producto_Click(sender As Object, e As EventArgs) Handles btn_icon_producto.Click
        activatebutton(sender, Rgb.RGBColors.color3)

        lbl_donde_estoy.Text = "PRODUCTO"
        frm_producto.TopLevel = False
        frm_producto.FormBorderStyle = FormBorderStyle.None
        frm_producto.Dock = DockStyle.Fill
        panel_contenedor.Controls.Add(frm_producto)
        frm_inventario.Hide()
        frm_home.Hide()
        frm_gastos.Hide()
        frm_caja.Hide()
        frm_usuarios.Hide()
        frm_cliente.Hide()
        frm_categorias.Hide()
        frm_caja.Hide()
        frm_salidas_que_les_toca_entregar_hoy.Hide()
        frm_ventas.Hide()
        frm_producto.Show()
        GroupBox1.Visible = False
        grb_menu.Visible = False
    End Sub

    Private Sub btn_icon_cliente_Click(sender As Object, e As EventArgs) Handles btn_icon_cliente.Click
        activatebutton(sender, Rgb.RGBColors.color4)

        lbl_donde_estoy.Text = "CLIENTE"
        frm_cliente.TopLevel = False
        frm_cliente.FormBorderStyle = FormBorderStyle.None
        frm_cliente.Dock = DockStyle.Fill
        panel_contenedor.Controls.Add(frm_cliente)
        frm_inventario.Hide()
        frm_home.Hide()
        frm_gastos.Hide()
        frm_caja.Hide()
        frm_usuarios.Hide()
        frm_categorias.Hide()
        frm_caja.Hide()
        frm_salidas_que_les_toca_entregar_hoy.Hide()
        frm_ventas.Hide()
        frm_producto.Hide()
        frm_cliente.Show()
        GroupBox1.Visible = False
        grb_menu.Visible = False

    End Sub

    Private Sub btn_icon_categoria_Click(sender As Object, e As EventArgs)
        'activatebutton(sender, Rgb.RGBColors.color5)

        'lbl_donde_estoy.Text = "CATEGORIA"
        'frm_categorias.TopLevel = False
        'frm_categorias.FormBorderStyle = FormBorderStyle.None
        'frm_categorias.Dock = DockStyle.Fill
        'panel_contenedor.Controls.Add(frm_categorias)
        'frm_inventario.Hide()
        'frm_home.Hide()
        'frm_gastos.Hide()
        'frm_caja.Hide()
        'frm_caja.Hide()
        'frm_salidas_que_les_toca_entregar_hoy.Hide()
        'frm_ventas.Hide()
        'frm_usuarios.Hide()
        'frm_producto.Hide()
        'frm_cliente.Hide()
        'frm_categorias.Show()
        'GroupBox1.Visible = False
        'grb_menu.Visible = False

    End Sub

    Private Sub btn_icon_invantario_Click(sender As Object, e As EventArgs) Handles btn_icon_invantario.Click
        activatebutton(sender, Rgb.RGBColors.color6)
        lbl_donde_estoy.Text = "INVENTARIO"
        frm_inventario.TopLevel = False
        frm_inventario.FormBorderStyle = FormBorderStyle.None
        frm_inventario.Dock = DockStyle.Fill
        panel_contenedor.Controls.Add(frm_inventario)
        frm_home.Hide()
        frm_gastos.Hide()
        frm_caja.Hide()
        frm_caja.Hide()
        frm_salidas_que_les_toca_entregar_hoy.Hide()
        frm_ventas.Hide()
        frm_usuarios.Hide()
        frm_producto.Hide()
        frm_cliente.Hide()
        frm_categorias.Hide()
        frm_inventario.Show()
        GroupBox1.Visible = False
        grb_menu.Visible = False
    End Sub

    Private Sub btn_icon_gastos_Click(sender As Object, e As EventArgs) Handles btn_icon_gastos.Click
        activatebutton(sender, Rgb.RGBColors.color6)
        lbl_donde_estoy.Text = "GASTOS"
        frm_gastos.TopLevel = False
        frm_gastos.FormBorderStyle = FormBorderStyle.None
        frm_gastos.Dock = DockStyle.Fill
        panel_contenedor.Controls.Add(frm_gastos)
        frm_home.Hide()
        frm_inventario.Hide()
        frm_caja.Hide()
        frm_caja.Hide()
        frm_usuarios.Hide()
        frm_salidas_que_les_toca_entregar_hoy.Hide()
        frm_ventas.Hide()
        frm_producto.Hide()
        frm_cliente.Hide()
        frm_categorias.Hide()
        frm_gastos.Show()
        GroupBox1.Visible = False
        grb_menu.Visible = False
    End Sub

    'Drag Form'
    <DllImport("user32.DLL", EntryPoint:="ReleaseCapture")>
    Private Shared Sub ReleaseCapture()
    End Sub
    <DllImport("user32.DLL", EntryPoint:="SendMessage")>
    Private Shared Sub SendMessage(ByVal hWnd As System.IntPtr, ByVal wMsg As Integer, ByVal wParam As Integer, ByVal lParam As Integer)
    End Sub

    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles Me.Load
        activatebutton(btn_icon_home, Rgb.RGBColors.color1)
        frm_salidas_que_les_toca_entregar_hoy.TopLevel = False
        frm_salidas_que_les_toca_entregar_hoy.FormBorderStyle = FormBorderStyle.None
        frm_salidas_que_les_toca_entregar_hoy.Dock = DockStyle.Fill
        panel_contenedor.Controls.Add(frm_salidas_que_les_toca_entregar_hoy)
        lbl_donde_estoy.Text = "Home"
        frm_inventario.Hide()
        frm_home.Hide()
        frm_gastos.Hide()
        frm_caja.Hide()
        frm_cliente.Hide()
        frm_ventas.Hide()
        frm_producto.Hide()
        frm_categorias.Hide()
        frm_caja.Hide()
        frm_usuarios.Hide()
        frm_salidas_que_les_toca_entregar_hoy.Show()
        Me.Text = "PUNTO DE VENTA"
        verificar_si_ya_esta_en_rango_de_dias()
        dt = class_venta.mostrar_salidas_que_les_tocas_entregar_hoy
        If dt.Rows.Count > 0 Then
            pc_notification.Visible = True
        Else
            pc_notification.Visible = False
        End If
        abrir_caja_abierta()
        saber_que_permiso_dar()
    End Sub

    Private Sub PictureBox1_Paint(sender As Object, e As PaintEventArgs) Handles PictureBox1.Paint

        Dim figura As GraphicsPath = New GraphicsPath
        Dim x, y, ancho, alto As Integer
        ancho = 25
        alto = 20
        x = (PictureBox1.Width - ancho) / 2
        y = (PictureBox1.Height - alto) / 2
        figura.AddEllipse(New Rectangle(x, y, ancho, alto))
        PictureBox1.Region = New Region(figura)
        e.Graphics.SmoothingMode = SmoothingMode.AntiAlias
        e.Graphics.PixelOffsetMode = PixelOffsetMode.HighQuality
        e.Graphics.CompositingQuality = CompositingQuality.HighQuality

    End Sub


    Private Sub btn_icon_caja_Click(sender As Object, e As EventArgs) Handles btn_icon_caja.Click
        activatebutton(sender, Rgb.RGBColors.color1)

        lbl_donde_estoy.Text = "CAJA"
        frm_caja.TopLevel = False
        frm_caja.FormBorderStyle = FormBorderStyle.None
        frm_caja.Dock = DockStyle.Fill
        panel_contenedor.Controls.Add(frm_caja)
        frm_home.Hide()
        frm_inventario.Hide()
        frm_salidas_que_les_toca_entregar_hoy.Hide()
        frm_ventas.Hide()
        frm_producto.Hide()
        frm_usuarios.Hide()
        frm_cliente.Hide()
        frm_categorias.Hide()
        frm_gastos.Hide()
        frm_caja.Show()
        GroupBox1.Visible = False
        grb_menu.Visible = False
    End Sub

    Private Sub btn_cerrar_MouseHover(sender As Object, e As EventArgs) Handles btn_cerrar.MouseHover
        btn_cerrar.BackColor = Color.Red
    End Sub

    Public Sub verificar_notificarions()
        Try
            dt = class_venta.mostrar_salidas_que_les_tocas_entregar_hoy


            If dt.Rows.Count > 0 Then
                datalistado_home.DataSource = dt
                If datalistado_home.Rows.Count > 0 Then
                    datalistado_home.ContextMenuStrip = ContextMenuStrip1
                Else
                    datalistado_home.ContextMenuStrip = Nothing
                End If

                datalistado_home.Columns(0).Visible = False
                datalistado_home.Columns(1).Width = 200
                datalistado_home.EnableHeadersVisualStyles = False
                datalistado_home.ColumnHeadersVisible = False
                If GroupBox1.Visible = False Then
                    GroupBox1.Visible = True
                ElseIf GroupBox1.Visible = True Then
                    GroupBox1.Visible = False
                End If
                pc_notification.Visible = False
            End If




        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
    Private Sub btn_cerrar_MouseLeave(sender As Object, e As EventArgs) Handles btn_cerrar.MouseLeave
        btn_cerrar.BackColor = Rgb.RGBColors.colorClose
    End Sub



    Private Sub btn_notification_Click(sender As Object, e As EventArgs) Handles btn_notification.Click
        verificar_notificarions()

    End Sub

    Private Sub pc_notification_Click(sender As Object, e As EventArgs) Handles pc_notification.Click
        verificar_notificarions()
    End Sub

    Private Sub btn_entrada_y_salida_Click(sender As Object, e As EventArgs) Handles btn_entrada_y_salida.Click
        activatebutton(sender, Rgb.RGBColors.color1)
        lbl_donde_estoy.Text = "SALiDAS"
        frm_home.TopLevel = False
        frm_home.FormBorderStyle = FormBorderStyle.None
        frm_home.Dock = DockStyle.Fill
        panel_contenedor.Controls.Add(frm_home)
        frm_inventario.Hide()
        frm_salidas_que_les_toca_entregar_hoy.Hide()
        frm_ventas.Hide()
        frm_producto.Hide()
        frm_cliente.Hide()
        frm_categorias.Hide()
        frm_gastos.Hide()
        frm_caja.Hide()
        frm_usuarios.Hide()
        frm_home.Show()
        GroupBox1.Visible = False
        grb_menu.Visible = False

    End Sub

    Private Sub panel_contenedor_Paint(sender As Object, e As PaintEventArgs) Handles panel_contenedor.Paint

    End Sub

    Public Sub abrir_caja_abierta()
        dt = class_caja_.verificar_si_el_usuario_tiene_caja_abierta(Val(lbl_id_usuario.Text))
        If dt.Rows.Count > 0 Then
        Else
            Dim caja_abierta As String = ""
            caja_abierta = Today.Date + " " + TimeOfDay.ToString("HH:MM").ToString
            class_caja_.insetar_hora_caja_abierta(Val(lbl_id_usuario.Text), caja_abierta)
        End If
    End Sub

    Private Sub btn_icon_usuario_Click(sender As Object, e As EventArgs) Handles btn_icon_usuario.Click
        activatebutton(sender, Rgb.RGBColors.color6)
        lbl_donde_estoy.Text = "USUARIOS"
        frm_usuarios.TopLevel = False
        frm_usuarios.FormBorderStyle = FormBorderStyle.None
        frm_usuarios.Dock = DockStyle.Fill
        panel_contenedor.Controls.Add(frm_usuarios)
        frm_inventario.Hide()
        frm_salidas_que_les_toca_entregar_hoy.Hide()
        frm_ventas.Hide()
        frm_producto.Hide()
        frm_cliente.Hide()
        frm_categorias.Hide()
        frm_gastos.Hide()
        frm_caja.Hide()

        frm_home.Hide()
        frm_usuarios.Show()
        grb_menu.Visible = False
        GroupBox1.Visible = False
    End Sub

    Private Sub DarleEntradaToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles DarleEntradaToolStripMenuItem.Click
        frm_entradas_desde_notification.lbl_id_venta.Text = datalistado_home.SelectedCells.Item(0).Value
        frm_entradas_desde_notification.ShowDialog()
    End Sub

    Private Sub btn_flecha_Click(sender As Object, e As EventArgs) Handles btn_flecha.Click
        If grb_menu.Visible = False Then
            grb_menu.Visible = True
        ElseIf grb_menu.Visible = True Then
            grb_menu.Visible = False
        End If
    End Sub

    Private Sub lbl_salir_LinkClicked(sender As Object, e As LinkLabelLinkClickedEventArgs) Handles lbl_salir.LinkClicked
        grb_menu.Visible = False
        Dim d As New DialogResult
        d = MessageBox.Show("SEGURO QUE QUIERES SALIR", "CERRANDO EL SISTEMA", MessageBoxButtons.YesNo, MessageBoxIcon.Question)
        If d = DialogResult.Yes Then
            End
        End If
    End Sub

    Private Sub btn_icon_salir_Click(sender As Object, e As EventArgs) Handles btn_icon_salir.Click
        grb_menu.Visible = False
        Dim d As New DialogResult
        d = MessageBox.Show("SEGURO QUE QUIERES SALIR", "CERRANDO EL SISTEMA", MessageBoxButtons.YesNo, MessageBoxIcon.Question)
        If d = DialogResult.Yes Then
            End
        End If
    End Sub

    Private Sub lbl_cerrar_sesion_LinkClicked(sender As Object, e As LinkLabelLinkClickedEventArgs) Handles lbl_cerrar_sesion.LinkClicked
        Dim d As New DialogResult
        grb_menu.Visible = False
        d = MessageBox.Show("REALMENTE DECEAS CERRAR SESION", "CERRANDO SESION", MessageBoxButtons.YesNo, MessageBoxIcon.Question)
        If d = DialogResult.Yes Then
            Me.Hide()
            frm_login.txt_usuario.Select()
            frm_login.Show()
        End If

    End Sub
End Class

<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class Form1
    Inherits System.Windows.Forms.Form

    'Form reemplaza a Dispose para limpiar la lista de componentes.
    <System.Diagnostics.DebuggerNonUserCode()>
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Requerido por el Diseñador de Windows Forms
    Private components As System.ComponentModel.IContainer

    'NOTA: el Diseñador de Windows Forms necesita el siguiente procedimiento
    'Se puede modificar usando el Diseñador de Windows Forms.  
    'No lo modifique con el editor de código.
    <System.Diagnostics.DebuggerStepThrough()>
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Form1))
        Dim DataGridViewCellStyle1 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Dim DataGridViewCellStyle2 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Dim DataGridViewCellStyle3 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Me.panel_menu = New System.Windows.Forms.Panel()
        Me.lbl_turno = New System.Windows.Forms.Label()
        Me.lbl_user_name = New System.Windows.Forms.Label()
        Me.lbl_id_usuario = New System.Windows.Forms.Label()
        Me.btn_entrada_y_salida = New FontAwesome.Sharp.IconButton()
        Me.btn_icon_salir = New FontAwesome.Sharp.IconButton()
        Me.btn_icon_usuario = New FontAwesome.Sharp.IconButton()
        Me.btn_icon_caja = New FontAwesome.Sharp.IconButton()
        Me.btn_icon_gastos = New FontAwesome.Sharp.IconButton()
        Me.btn_icon_invantario = New FontAwesome.Sharp.IconButton()
        Me.btn_icon_cliente = New FontAwesome.Sharp.IconButton()
        Me.btn_icon_producto = New FontAwesome.Sharp.IconButton()
        Me.btn_icon_venta = New FontAwesome.Sharp.IconButton()
        Me.btn_icon_home = New FontAwesome.Sharp.IconButton()
        Me.Panel1 = New System.Windows.Forms.Panel()
        Me.PictureBox2 = New System.Windows.Forms.PictureBox()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Panel2 = New System.Windows.Forms.Panel()
        Me.lbl_solo_nombre = New System.Windows.Forms.Label()
        Me.pc_notification = New System.Windows.Forms.PictureBox()
        Me.btn_notification = New FontAwesome.Sharp.IconButton()
        Me.btn_ajustar_menu = New System.Windows.Forms.PictureBox()
        Me.PictureBox1 = New System.Windows.Forms.PictureBox()
        Me.btn_flecha = New FontAwesome.Sharp.IconButton()
        Me.iconCurrentform = New FontAwesome.Sharp.IconPictureBox()
        Me.lbl_donde_estoy = New System.Windows.Forms.Label()
        Me.btn_minimixar = New System.Windows.Forms.PictureBox()
        Me.btn_maximixar = New System.Windows.Forms.PictureBox()
        Me.btn_restaurar = New System.Windows.Forms.PictureBox()
        Me.btn_cerrar = New System.Windows.Forms.PictureBox()
        Me.panel_contenedor = New System.Windows.Forms.Panel()
        Me.grb_menu = New System.Windows.Forms.GroupBox()
        Me.lbl_salir = New System.Windows.Forms.LinkLabel()
        Me.lbl_cerrar_sesion = New System.Windows.Forms.LinkLabel()
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.datalistado_home = New System.Windows.Forms.DataGridView()
        Me.ContextMenuStrip1 = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.DarleEntradaToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.panel_menu.SuspendLayout()
        Me.Panel1.SuspendLayout()
        CType(Me.PictureBox2, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.Panel2.SuspendLayout()
        CType(Me.pc_notification, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.btn_ajustar_menu, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.iconCurrentform, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.btn_minimixar, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.btn_maximixar, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.btn_restaurar, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.btn_cerrar, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.panel_contenedor.SuspendLayout()
        Me.grb_menu.SuspendLayout()
        Me.GroupBox1.SuspendLayout()
        CType(Me.datalistado_home, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.ContextMenuStrip1.SuspendLayout()
        Me.SuspendLayout()
        '
        'panel_menu
        '
        Me.panel_menu.BackColor = System.Drawing.Color.FromArgb(CType(CType(31, Byte), Integer), CType(CType(30, Byte), Integer), CType(CType(68, Byte), Integer))
        Me.panel_menu.Controls.Add(Me.lbl_turno)
        Me.panel_menu.Controls.Add(Me.lbl_user_name)
        Me.panel_menu.Controls.Add(Me.lbl_id_usuario)
        Me.panel_menu.Controls.Add(Me.btn_entrada_y_salida)
        Me.panel_menu.Controls.Add(Me.btn_icon_salir)
        Me.panel_menu.Controls.Add(Me.btn_icon_usuario)
        Me.panel_menu.Controls.Add(Me.btn_icon_caja)
        Me.panel_menu.Controls.Add(Me.btn_icon_gastos)
        Me.panel_menu.Controls.Add(Me.btn_icon_invantario)
        Me.panel_menu.Controls.Add(Me.btn_icon_cliente)
        Me.panel_menu.Controls.Add(Me.btn_icon_producto)
        Me.panel_menu.Controls.Add(Me.btn_icon_venta)
        Me.panel_menu.Controls.Add(Me.btn_icon_home)
        Me.panel_menu.Controls.Add(Me.Panel1)
        Me.panel_menu.Dock = System.Windows.Forms.DockStyle.Left
        Me.panel_menu.Location = New System.Drawing.Point(0, 0)
        Me.panel_menu.Name = "panel_menu"
        Me.panel_menu.Size = New System.Drawing.Size(260, 582)
        Me.panel_menu.TabIndex = 4
        '
        'lbl_turno
        '
        Me.lbl_turno.AutoSize = True
        Me.lbl_turno.Location = New System.Drawing.Point(154, 534)
        Me.lbl_turno.Name = "lbl_turno"
        Me.lbl_turno.Size = New System.Drawing.Size(20, 13)
        Me.lbl_turno.TabIndex = 20
        Me.lbl_turno.Text = "T1"
        Me.lbl_turno.Visible = False
        '
        'lbl_user_name
        '
        Me.lbl_user_name.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.lbl_user_name.AutoSize = True
        Me.lbl_user_name.Font = New System.Drawing.Font("Arial Narrow", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbl_user_name.ForeColor = System.Drawing.Color.White
        Me.lbl_user_name.Location = New System.Drawing.Point(137, 492)
        Me.lbl_user_name.Name = "lbl_user_name"
        Me.lbl_user_name.Size = New System.Drawing.Size(63, 15)
        Me.lbl_user_name.TabIndex = 10
        Me.lbl_user_name.Text = "USER NAME"
        Me.lbl_user_name.Visible = False
        '
        'lbl_id_usuario
        '
        Me.lbl_id_usuario.AutoSize = True
        Me.lbl_id_usuario.Location = New System.Drawing.Point(42, 494)
        Me.lbl_id_usuario.Name = "lbl_id_usuario"
        Me.lbl_id_usuario.Size = New System.Drawing.Size(13, 13)
        Me.lbl_id_usuario.TabIndex = 19
        Me.lbl_id_usuario.Text = "1"
        Me.lbl_id_usuario.Visible = False
        '
        'btn_entrada_y_salida
        '
        Me.btn_entrada_y_salida.Dock = System.Windows.Forms.DockStyle.Top
        Me.btn_entrada_y_salida.FlatAppearance.BorderSize = 0
        Me.btn_entrada_y_salida.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.btn_entrada_y_salida.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btn_entrada_y_salida.ForeColor = System.Drawing.Color.White
        Me.btn_entrada_y_salida.IconChar = FontAwesome.Sharp.IconChar.HourglassEnd
        Me.btn_entrada_y_salida.IconColor = System.Drawing.Color.White
        Me.btn_entrada_y_salida.IconFont = FontAwesome.Sharp.IconFont.[Auto]
        Me.btn_entrada_y_salida.IconSize = 25
        Me.btn_entrada_y_salida.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.btn_entrada_y_salida.Location = New System.Drawing.Point(0, 398)
        Me.btn_entrada_y_salida.Name = "btn_entrada_y_salida"
        Me.btn_entrada_y_salida.Padding = New System.Windows.Forms.Padding(10, 0, 20, 0)
        Me.btn_entrada_y_salida.Size = New System.Drawing.Size(260, 37)
        Me.btn_entrada_y_salida.TabIndex = 18
        Me.btn_entrada_y_salida.Text = "Salidas"
        Me.btn_entrada_y_salida.TextAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.btn_entrada_y_salida.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText
        Me.btn_entrada_y_salida.UseVisualStyleBackColor = True
        '
        'btn_icon_salir
        '
        Me.btn_icon_salir.Dock = System.Windows.Forms.DockStyle.Bottom
        Me.btn_icon_salir.FlatAppearance.BorderSize = 0
        Me.btn_icon_salir.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.btn_icon_salir.ForeColor = System.Drawing.Color.White
        Me.btn_icon_salir.IconChar = FontAwesome.Sharp.IconChar.ArrowAltCircleDown
        Me.btn_icon_salir.IconColor = System.Drawing.Color.White
        Me.btn_icon_salir.IconFont = FontAwesome.Sharp.IconFont.[Auto]
        Me.btn_icon_salir.IconSize = 25
        Me.btn_icon_salir.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.btn_icon_salir.Location = New System.Drawing.Point(0, 545)
        Me.btn_icon_salir.Name = "btn_icon_salir"
        Me.btn_icon_salir.Padding = New System.Windows.Forms.Padding(10, 0, 20, 0)
        Me.btn_icon_salir.Size = New System.Drawing.Size(260, 37)
        Me.btn_icon_salir.TabIndex = 17
        Me.btn_icon_salir.Text = "Salir"
        Me.btn_icon_salir.TextAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.btn_icon_salir.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText
        Me.btn_icon_salir.UseVisualStyleBackColor = True
        '
        'btn_icon_usuario
        '
        Me.btn_icon_usuario.Dock = System.Windows.Forms.DockStyle.Top
        Me.btn_icon_usuario.FlatAppearance.BorderSize = 0
        Me.btn_icon_usuario.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.btn_icon_usuario.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btn_icon_usuario.ForeColor = System.Drawing.Color.White
        Me.btn_icon_usuario.IconChar = FontAwesome.Sharp.IconChar.User
        Me.btn_icon_usuario.IconColor = System.Drawing.Color.White
        Me.btn_icon_usuario.IconFont = FontAwesome.Sharp.IconFont.[Auto]
        Me.btn_icon_usuario.IconSize = 25
        Me.btn_icon_usuario.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.btn_icon_usuario.Location = New System.Drawing.Point(0, 361)
        Me.btn_icon_usuario.Name = "btn_icon_usuario"
        Me.btn_icon_usuario.Padding = New System.Windows.Forms.Padding(10, 0, 20, 0)
        Me.btn_icon_usuario.Size = New System.Drawing.Size(260, 37)
        Me.btn_icon_usuario.TabIndex = 16
        Me.btn_icon_usuario.Text = "Usuarios"
        Me.btn_icon_usuario.TextAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.btn_icon_usuario.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText
        Me.btn_icon_usuario.UseVisualStyleBackColor = True
        '
        'btn_icon_caja
        '
        Me.btn_icon_caja.Dock = System.Windows.Forms.DockStyle.Top
        Me.btn_icon_caja.FlatAppearance.BorderSize = 0
        Me.btn_icon_caja.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.btn_icon_caja.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btn_icon_caja.ForeColor = System.Drawing.Color.White
        Me.btn_icon_caja.IconChar = FontAwesome.Sharp.IconChar.CashRegister
        Me.btn_icon_caja.IconColor = System.Drawing.Color.White
        Me.btn_icon_caja.IconFont = FontAwesome.Sharp.IconFont.[Auto]
        Me.btn_icon_caja.IconSize = 25
        Me.btn_icon_caja.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.btn_icon_caja.Location = New System.Drawing.Point(0, 324)
        Me.btn_icon_caja.Name = "btn_icon_caja"
        Me.btn_icon_caja.Padding = New System.Windows.Forms.Padding(10, 0, 20, 0)
        Me.btn_icon_caja.Size = New System.Drawing.Size(260, 37)
        Me.btn_icon_caja.TabIndex = 15
        Me.btn_icon_caja.Text = "Caja"
        Me.btn_icon_caja.TextAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.btn_icon_caja.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText
        Me.btn_icon_caja.UseVisualStyleBackColor = True
        '
        'btn_icon_gastos
        '
        Me.btn_icon_gastos.Dock = System.Windows.Forms.DockStyle.Top
        Me.btn_icon_gastos.FlatAppearance.BorderSize = 0
        Me.btn_icon_gastos.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.btn_icon_gastos.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btn_icon_gastos.ForeColor = System.Drawing.Color.White
        Me.btn_icon_gastos.IconChar = FontAwesome.Sharp.IconChar.AmazonPay
        Me.btn_icon_gastos.IconColor = System.Drawing.Color.White
        Me.btn_icon_gastos.IconFont = FontAwesome.Sharp.IconFont.[Auto]
        Me.btn_icon_gastos.IconSize = 25
        Me.btn_icon_gastos.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.btn_icon_gastos.Location = New System.Drawing.Point(0, 287)
        Me.btn_icon_gastos.Name = "btn_icon_gastos"
        Me.btn_icon_gastos.Padding = New System.Windows.Forms.Padding(10, 0, 20, 0)
        Me.btn_icon_gastos.Size = New System.Drawing.Size(260, 37)
        Me.btn_icon_gastos.TabIndex = 14
        Me.btn_icon_gastos.Text = "Gastos"
        Me.btn_icon_gastos.TextAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.btn_icon_gastos.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText
        Me.btn_icon_gastos.UseVisualStyleBackColor = True
        '
        'btn_icon_invantario
        '
        Me.btn_icon_invantario.Dock = System.Windows.Forms.DockStyle.Top
        Me.btn_icon_invantario.FlatAppearance.BorderSize = 0
        Me.btn_icon_invantario.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.btn_icon_invantario.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btn_icon_invantario.ForeColor = System.Drawing.Color.White
        Me.btn_icon_invantario.IconChar = FontAwesome.Sharp.IconChar.CommentDollar
        Me.btn_icon_invantario.IconColor = System.Drawing.Color.White
        Me.btn_icon_invantario.IconFont = FontAwesome.Sharp.IconFont.[Auto]
        Me.btn_icon_invantario.IconSize = 25
        Me.btn_icon_invantario.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.btn_icon_invantario.Location = New System.Drawing.Point(0, 250)
        Me.btn_icon_invantario.Name = "btn_icon_invantario"
        Me.btn_icon_invantario.Padding = New System.Windows.Forms.Padding(10, 0, 20, 0)
        Me.btn_icon_invantario.Size = New System.Drawing.Size(260, 37)
        Me.btn_icon_invantario.TabIndex = 13
        Me.btn_icon_invantario.Text = "Inventario"
        Me.btn_icon_invantario.TextAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.btn_icon_invantario.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText
        Me.btn_icon_invantario.UseVisualStyleBackColor = True
        '
        'btn_icon_cliente
        '
        Me.btn_icon_cliente.Dock = System.Windows.Forms.DockStyle.Top
        Me.btn_icon_cliente.FlatAppearance.BorderSize = 0
        Me.btn_icon_cliente.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.btn_icon_cliente.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btn_icon_cliente.ForeColor = System.Drawing.Color.White
        Me.btn_icon_cliente.IconChar = FontAwesome.Sharp.IconChar.User
        Me.btn_icon_cliente.IconColor = System.Drawing.Color.White
        Me.btn_icon_cliente.IconFont = FontAwesome.Sharp.IconFont.[Auto]
        Me.btn_icon_cliente.IconSize = 25
        Me.btn_icon_cliente.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.btn_icon_cliente.Location = New System.Drawing.Point(0, 213)
        Me.btn_icon_cliente.Name = "btn_icon_cliente"
        Me.btn_icon_cliente.Padding = New System.Windows.Forms.Padding(10, 0, 20, 0)
        Me.btn_icon_cliente.Size = New System.Drawing.Size(260, 37)
        Me.btn_icon_cliente.TabIndex = 11
        Me.btn_icon_cliente.Text = "Cliente"
        Me.btn_icon_cliente.TextAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.btn_icon_cliente.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText
        Me.btn_icon_cliente.UseVisualStyleBackColor = True
        '
        'btn_icon_producto
        '
        Me.btn_icon_producto.Dock = System.Windows.Forms.DockStyle.Top
        Me.btn_icon_producto.FlatAppearance.BorderSize = 0
        Me.btn_icon_producto.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.btn_icon_producto.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btn_icon_producto.ForeColor = System.Drawing.Color.White
        Me.btn_icon_producto.IconChar = FontAwesome.Sharp.IconChar.ProductHunt
        Me.btn_icon_producto.IconColor = System.Drawing.Color.White
        Me.btn_icon_producto.IconFont = FontAwesome.Sharp.IconFont.[Auto]
        Me.btn_icon_producto.IconSize = 25
        Me.btn_icon_producto.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.btn_icon_producto.Location = New System.Drawing.Point(0, 176)
        Me.btn_icon_producto.Name = "btn_icon_producto"
        Me.btn_icon_producto.Padding = New System.Windows.Forms.Padding(10, 0, 20, 0)
        Me.btn_icon_producto.Size = New System.Drawing.Size(260, 37)
        Me.btn_icon_producto.TabIndex = 10
        Me.btn_icon_producto.Text = "Producto"
        Me.btn_icon_producto.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText
        Me.btn_icon_producto.UseVisualStyleBackColor = True
        '
        'btn_icon_venta
        '
        Me.btn_icon_venta.Dock = System.Windows.Forms.DockStyle.Top
        Me.btn_icon_venta.FlatAppearance.BorderSize = 0
        Me.btn_icon_venta.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.btn_icon_venta.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btn_icon_venta.ForeColor = System.Drawing.Color.White
        Me.btn_icon_venta.IconChar = FontAwesome.Sharp.IconChar.Sellcast
        Me.btn_icon_venta.IconColor = System.Drawing.Color.White
        Me.btn_icon_venta.IconFont = FontAwesome.Sharp.IconFont.[Auto]
        Me.btn_icon_venta.IconSize = 25
        Me.btn_icon_venta.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.btn_icon_venta.Location = New System.Drawing.Point(0, 139)
        Me.btn_icon_venta.Name = "btn_icon_venta"
        Me.btn_icon_venta.Padding = New System.Windows.Forms.Padding(10, 0, 20, 0)
        Me.btn_icon_venta.Size = New System.Drawing.Size(260, 37)
        Me.btn_icon_venta.TabIndex = 9
        Me.btn_icon_venta.Text = "Venta"
        Me.btn_icon_venta.TextAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.btn_icon_venta.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText
        Me.btn_icon_venta.UseVisualStyleBackColor = True
        '
        'btn_icon_home
        '
        Me.btn_icon_home.Dock = System.Windows.Forms.DockStyle.Top
        Me.btn_icon_home.FlatAppearance.BorderSize = 0
        Me.btn_icon_home.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.btn_icon_home.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btn_icon_home.ForeColor = System.Drawing.Color.White
        Me.btn_icon_home.IconChar = FontAwesome.Sharp.IconChar.Home
        Me.btn_icon_home.IconColor = System.Drawing.Color.White
        Me.btn_icon_home.IconFont = FontAwesome.Sharp.IconFont.[Auto]
        Me.btn_icon_home.IconSize = 25
        Me.btn_icon_home.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.btn_icon_home.Location = New System.Drawing.Point(0, 102)
        Me.btn_icon_home.Name = "btn_icon_home"
        Me.btn_icon_home.Padding = New System.Windows.Forms.Padding(10, 0, 20, 0)
        Me.btn_icon_home.Size = New System.Drawing.Size(260, 37)
        Me.btn_icon_home.TabIndex = 8
        Me.btn_icon_home.Text = "Home"
        Me.btn_icon_home.TextAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.btn_icon_home.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText
        Me.btn_icon_home.UseVisualStyleBackColor = True
        '
        'Panel1
        '
        Me.Panel1.Controls.Add(Me.PictureBox2)
        Me.Panel1.Controls.Add(Me.Label1)
        Me.Panel1.Dock = System.Windows.Forms.DockStyle.Top
        Me.Panel1.Location = New System.Drawing.Point(0, 0)
        Me.Panel1.Name = "Panel1"
        Me.Panel1.Size = New System.Drawing.Size(260, 102)
        Me.Panel1.TabIndex = 7
        '
        'PictureBox2
        '
        Me.PictureBox2.Image = CType(resources.GetObject("PictureBox2.Image"), System.Drawing.Image)
        Me.PictureBox2.Location = New System.Drawing.Point(12, 14)
        Me.PictureBox2.Name = "PictureBox2"
        Me.PictureBox2.Size = New System.Drawing.Size(30, 17)
        Me.PictureBox2.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.PictureBox2.TabIndex = 9
        Me.PictureBox2.TabStop = False
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.ForeColor = System.Drawing.Color.White
        Me.Label1.Location = New System.Drawing.Point(48, 10)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(95, 24)
        Me.Label1.TabIndex = 5
        Me.Label1.Text = "JR SOFT"
        '
        'Panel2
        '
        Me.Panel2.BackColor = System.Drawing.Color.FromArgb(CType(CType(26, Byte), Integer), CType(CType(25, Byte), Integer), CType(CType(62, Byte), Integer))
        Me.Panel2.Controls.Add(Me.lbl_solo_nombre)
        Me.Panel2.Controls.Add(Me.pc_notification)
        Me.Panel2.Controls.Add(Me.btn_notification)
        Me.Panel2.Controls.Add(Me.btn_ajustar_menu)
        Me.Panel2.Controls.Add(Me.PictureBox1)
        Me.Panel2.Controls.Add(Me.btn_flecha)
        Me.Panel2.Controls.Add(Me.iconCurrentform)
        Me.Panel2.Controls.Add(Me.lbl_donde_estoy)
        Me.Panel2.Controls.Add(Me.btn_minimixar)
        Me.Panel2.Controls.Add(Me.btn_maximixar)
        Me.Panel2.Controls.Add(Me.btn_restaurar)
        Me.Panel2.Controls.Add(Me.btn_cerrar)
        Me.Panel2.Dock = System.Windows.Forms.DockStyle.Top
        Me.Panel2.Location = New System.Drawing.Point(260, 0)
        Me.Panel2.Name = "Panel2"
        Me.Panel2.Size = New System.Drawing.Size(720, 69)
        Me.Panel2.TabIndex = 5
        '
        'lbl_solo_nombre
        '
        Me.lbl_solo_nombre.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.lbl_solo_nombre.AutoSize = True
        Me.lbl_solo_nombre.Font = New System.Drawing.Font("Arial", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbl_solo_nombre.ForeColor = System.Drawing.Color.White
        Me.lbl_solo_nombre.Location = New System.Drawing.Point(601, 39)
        Me.lbl_solo_nombre.Name = "lbl_solo_nombre"
        Me.lbl_solo_nombre.Size = New System.Drawing.Size(66, 14)
        Me.lbl_solo_nombre.TabIndex = 21
        Me.lbl_solo_nombre.Text = "USER NAME"
        '
        'pc_notification
        '
        Me.pc_notification.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.pc_notification.Image = CType(resources.GetObject("pc_notification.Image"), System.Drawing.Image)
        Me.pc_notification.Location = New System.Drawing.Point(554, 36)
        Me.pc_notification.Name = "pc_notification"
        Me.pc_notification.Size = New System.Drawing.Size(8, 8)
        Me.pc_notification.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.pc_notification.TabIndex = 11
        Me.pc_notification.TabStop = False
        '
        'btn_notification
        '
        Me.btn_notification.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.btn_notification.FlatAppearance.BorderSize = 0
        Me.btn_notification.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.btn_notification.ForeColor = System.Drawing.Color.White
        Me.btn_notification.IconChar = FontAwesome.Sharp.IconChar.Bell
        Me.btn_notification.IconColor = System.Drawing.Color.White
        Me.btn_notification.IconFont = FontAwesome.Sharp.IconFont.[Auto]
        Me.btn_notification.IconSize = 20
        Me.btn_notification.Location = New System.Drawing.Point(538, 35)
        Me.btn_notification.Name = "btn_notification"
        Me.btn_notification.Size = New System.Drawing.Size(31, 22)
        Me.btn_notification.TabIndex = 9
        Me.btn_notification.UseVisualStyleBackColor = True
        '
        'btn_ajustar_menu
        '
        Me.btn_ajustar_menu.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.btn_ajustar_menu.Image = Global.punto_de_alquiler.My.Resources.Resources.Sin_título_1
        Me.btn_ajustar_menu.Location = New System.Drawing.Point(526, 37)
        Me.btn_ajustar_menu.Name = "btn_ajustar_menu"
        Me.btn_ajustar_menu.Size = New System.Drawing.Size(15, 15)
        Me.btn_ajustar_menu.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.btn_ajustar_menu.TabIndex = 3
        Me.btn_ajustar_menu.TabStop = False
        '
        'PictureBox1
        '
        Me.PictureBox1.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.PictureBox1.Image = Global.punto_de_alquiler.My.Resources.Resources._4b463f287cd814216b7e7b2e52e82687_png_1805022883
        Me.PictureBox1.Location = New System.Drawing.Point(571, 35)
        Me.PictureBox1.Name = "PictureBox1"
        Me.PictureBox1.Size = New System.Drawing.Size(25, 20)
        Me.PictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.PictureBox1.TabIndex = 8
        Me.PictureBox1.TabStop = False
        '
        'btn_flecha
        '
        Me.btn_flecha.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.btn_flecha.FlatAppearance.BorderSize = 0
        Me.btn_flecha.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.btn_flecha.ForeColor = System.Drawing.Color.White
        Me.btn_flecha.IconChar = FontAwesome.Sharp.IconChar.AngleDown
        Me.btn_flecha.IconColor = System.Drawing.Color.White
        Me.btn_flecha.IconFont = FontAwesome.Sharp.IconFont.[Auto]
        Me.btn_flecha.IconSize = 20
        Me.btn_flecha.Location = New System.Drawing.Point(677, 34)
        Me.btn_flecha.Name = "btn_flecha"
        Me.btn_flecha.Size = New System.Drawing.Size(33, 24)
        Me.btn_flecha.TabIndex = 8
        Me.btn_flecha.UseVisualStyleBackColor = True
        '
        'iconCurrentform
        '
        Me.iconCurrentform.BackColor = System.Drawing.Color.FromArgb(CType(CType(31, Byte), Integer), CType(CType(30, Byte), Integer), CType(CType(68, Byte), Integer))
        Me.iconCurrentform.IconChar = FontAwesome.Sharp.IconChar.Home
        Me.iconCurrentform.IconColor = System.Drawing.Color.White
        Me.iconCurrentform.IconFont = FontAwesome.Sharp.IconFont.[Auto]
        Me.iconCurrentform.IconSize = 25
        Me.iconCurrentform.Location = New System.Drawing.Point(11, 10)
        Me.iconCurrentform.Name = "iconCurrentform"
        Me.iconCurrentform.Size = New System.Drawing.Size(25, 25)
        Me.iconCurrentform.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.iconCurrentform.TabIndex = 7
        Me.iconCurrentform.TabStop = False
        '
        'lbl_donde_estoy
        '
        Me.lbl_donde_estoy.AutoSize = True
        Me.lbl_donde_estoy.Font = New System.Drawing.Font("Microsoft Sans Serif", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbl_donde_estoy.ForeColor = System.Drawing.Color.White
        Me.lbl_donde_estoy.Location = New System.Drawing.Point(43, 9)
        Me.lbl_donde_estoy.Name = "lbl_donde_estoy"
        Me.lbl_donde_estoy.Size = New System.Drawing.Size(49, 18)
        Me.lbl_donde_estoy.TabIndex = 6
        Me.lbl_donde_estoy.Text = "Home"
        '
        'btn_minimixar
        '
        Me.btn_minimixar.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.btn_minimixar.Image = CType(resources.GetObject("btn_minimixar.Image"), System.Drawing.Image)
        Me.btn_minimixar.Location = New System.Drawing.Point(666, 9)
        Me.btn_minimixar.Name = "btn_minimixar"
        Me.btn_minimixar.Size = New System.Drawing.Size(10, 10)
        Me.btn_minimixar.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.btn_minimixar.TabIndex = 5
        Me.btn_minimixar.TabStop = False
        '
        'btn_maximixar
        '
        Me.btn_maximixar.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.btn_maximixar.Image = CType(resources.GetObject("btn_maximixar.Image"), System.Drawing.Image)
        Me.btn_maximixar.Location = New System.Drawing.Point(682, 10)
        Me.btn_maximixar.Name = "btn_maximixar"
        Me.btn_maximixar.Size = New System.Drawing.Size(10, 10)
        Me.btn_maximixar.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.btn_maximixar.TabIndex = 4
        Me.btn_maximixar.TabStop = False
        '
        'btn_restaurar
        '
        Me.btn_restaurar.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.btn_restaurar.Image = CType(resources.GetObject("btn_restaurar.Image"), System.Drawing.Image)
        Me.btn_restaurar.Location = New System.Drawing.Point(682, 9)
        Me.btn_restaurar.Name = "btn_restaurar"
        Me.btn_restaurar.Size = New System.Drawing.Size(10, 10)
        Me.btn_restaurar.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.btn_restaurar.TabIndex = 4
        Me.btn_restaurar.TabStop = False
        '
        'btn_cerrar
        '
        Me.btn_cerrar.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.btn_cerrar.Image = CType(resources.GetObject("btn_cerrar.Image"), System.Drawing.Image)
        Me.btn_cerrar.Location = New System.Drawing.Point(698, 9)
        Me.btn_cerrar.Name = "btn_cerrar"
        Me.btn_cerrar.Size = New System.Drawing.Size(10, 10)
        Me.btn_cerrar.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.btn_cerrar.TabIndex = 4
        Me.btn_cerrar.TabStop = False
        '
        'panel_contenedor
        '
        Me.panel_contenedor.BackColor = System.Drawing.Color.FromArgb(CType(CType(34, Byte), Integer), CType(CType(33, Byte), Integer), CType(CType(74, Byte), Integer))
        Me.panel_contenedor.Controls.Add(Me.grb_menu)
        Me.panel_contenedor.Controls.Add(Me.GroupBox1)
        Me.panel_contenedor.Dock = System.Windows.Forms.DockStyle.Fill
        Me.panel_contenedor.Location = New System.Drawing.Point(260, 69)
        Me.panel_contenedor.Name = "panel_contenedor"
        Me.panel_contenedor.Size = New System.Drawing.Size(720, 513)
        Me.panel_contenedor.TabIndex = 6
        '
        'grb_menu
        '
        Me.grb_menu.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.grb_menu.BackColor = System.Drawing.Color.White
        Me.grb_menu.Controls.Add(Me.lbl_salir)
        Me.grb_menu.Controls.Add(Me.lbl_cerrar_sesion)
        Me.grb_menu.Location = New System.Drawing.Point(604, -6)
        Me.grb_menu.Name = "grb_menu"
        Me.grb_menu.Size = New System.Drawing.Size(106, 66)
        Me.grb_menu.TabIndex = 2
        Me.grb_menu.TabStop = False
        Me.grb_menu.Visible = False
        '
        'lbl_salir
        '
        Me.lbl_salir.ActiveLinkColor = System.Drawing.Color.FromArgb(CType(CType(34, Byte), Integer), CType(CType(33, Byte), Integer), CType(CType(74, Byte), Integer))
        Me.lbl_salir.AutoSize = True
        Me.lbl_salir.Font = New System.Drawing.Font("Arial", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbl_salir.LinkColor = System.Drawing.Color.FromArgb(CType(CType(34, Byte), Integer), CType(CType(33, Byte), Integer), CType(CType(74, Byte), Integer))
        Me.lbl_salir.Location = New System.Drawing.Point(33, 39)
        Me.lbl_salir.Name = "lbl_salir"
        Me.lbl_salir.Size = New System.Drawing.Size(37, 14)
        Me.lbl_salir.TabIndex = 4
        Me.lbl_salir.TabStop = True
        Me.lbl_salir.Text = "SALIR"
        '
        'lbl_cerrar_sesion
        '
        Me.lbl_cerrar_sesion.ActiveLinkColor = System.Drawing.Color.FromArgb(CType(CType(34, Byte), Integer), CType(CType(33, Byte), Integer), CType(CType(74, Byte), Integer))
        Me.lbl_cerrar_sesion.AutoSize = True
        Me.lbl_cerrar_sesion.Font = New System.Drawing.Font("Arial", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbl_cerrar_sesion.LinkColor = System.Drawing.Color.FromArgb(CType(CType(34, Byte), Integer), CType(CType(33, Byte), Integer), CType(CType(74, Byte), Integer))
        Me.lbl_cerrar_sesion.Location = New System.Drawing.Point(6, 17)
        Me.lbl_cerrar_sesion.Name = "lbl_cerrar_sesion"
        Me.lbl_cerrar_sesion.Size = New System.Drawing.Size(89, 14)
        Me.lbl_cerrar_sesion.TabIndex = 3
        Me.lbl_cerrar_sesion.TabStop = True
        Me.lbl_cerrar_sesion.Text = "CERRAR SESION"
        '
        'GroupBox1
        '
        Me.GroupBox1.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.GroupBox1.BackColor = System.Drawing.Color.White
        Me.GroupBox1.Controls.Add(Me.datalistado_home)
        Me.GroupBox1.Location = New System.Drawing.Point(402, 6)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(194, 343)
        Me.GroupBox1.TabIndex = 1
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Visible = False
        '
        'datalistado_home
        '
        Me.datalistado_home.AllowUserToAddRows = False
        Me.datalistado_home.AllowUserToDeleteRows = False
        Me.datalistado_home.AllowUserToResizeColumns = False
        Me.datalistado_home.AllowUserToResizeRows = False
        Me.datalistado_home.Anchor = CType(((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Left) _
            Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.datalistado_home.BackgroundColor = System.Drawing.Color.White
        Me.datalistado_home.BorderStyle = System.Windows.Forms.BorderStyle.None
        Me.datalistado_home.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.None
        Me.datalistado_home.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None
        DataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft
        DataGridViewCellStyle1.BackColor = System.Drawing.Color.Gainsboro
        DataGridViewCellStyle1.Font = New System.Drawing.Font("Segoe UI", 9.75!)
        DataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.WindowText
        DataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight
        DataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.HighlightText
        DataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.[True]
        Me.datalistado_home.ColumnHeadersDefaultCellStyle = DataGridViewCellStyle1
        Me.datalistado_home.ColumnHeadersHeight = 25
        Me.datalistado_home.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.DisableResizing
        Me.datalistado_home.GridColor = System.Drawing.SystemColors.Control
        Me.datalistado_home.Location = New System.Drawing.Point(0, 5)
        Me.datalistado_home.Name = "datalistado_home"
        Me.datalistado_home.ReadOnly = True
        DataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft
        DataGridViewCellStyle2.BackColor = System.Drawing.Color.FromArgb(CType(CType(224, Byte), Integer), CType(CType(224, Byte), Integer), CType(CType(224, Byte), Integer))
        DataGridViewCellStyle2.Font = New System.Drawing.Font("Segoe UI", 9.75!)
        DataGridViewCellStyle2.ForeColor = System.Drawing.SystemColors.WindowText
        DataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight
        DataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.HighlightText
        DataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.[True]
        Me.datalistado_home.RowHeadersDefaultCellStyle = DataGridViewCellStyle2
        Me.datalistado_home.RowHeadersVisible = False
        DataGridViewCellStyle3.SelectionBackColor = System.Drawing.Color.DarkGray
        Me.datalistado_home.RowsDefaultCellStyle = DataGridViewCellStyle3
        Me.datalistado_home.ScrollBars = System.Windows.Forms.ScrollBars.None
        Me.datalistado_home.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.datalistado_home.Size = New System.Drawing.Size(194, 337)
        Me.datalistado_home.TabIndex = 606
        '
        'ContextMenuStrip1
        '
        Me.ContextMenuStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.DarleEntradaToolStripMenuItem})
        Me.ContextMenuStrip1.Name = "ContextMenuStrip1"
        Me.ContextMenuStrip1.Size = New System.Drawing.Size(145, 26)
        '
        'DarleEntradaToolStripMenuItem
        '
        Me.DarleEntradaToolStripMenuItem.Name = "DarleEntradaToolStripMenuItem"
        Me.DarleEntradaToolStripMenuItem.Size = New System.Drawing.Size(144, 22)
        Me.DarleEntradaToolStripMenuItem.Text = "Darle entrada"
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(980, 582)
        Me.Controls.Add(Me.panel_contenedor)
        Me.Controls.Add(Me.Panel2)
        Me.Controls.Add(Me.panel_menu)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.Name = "Form1"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Form1"
        Me.panel_menu.ResumeLayout(False)
        Me.panel_menu.PerformLayout()
        Me.Panel1.ResumeLayout(False)
        Me.Panel1.PerformLayout()
        CType(Me.PictureBox2, System.ComponentModel.ISupportInitialize).EndInit()
        Me.Panel2.ResumeLayout(False)
        Me.Panel2.PerformLayout()
        CType(Me.pc_notification, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.btn_ajustar_menu, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.iconCurrentform, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.btn_minimixar, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.btn_maximixar, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.btn_restaurar, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.btn_cerrar, System.ComponentModel.ISupportInitialize).EndInit()
        Me.panel_contenedor.ResumeLayout(False)
        Me.grb_menu.ResumeLayout(False)
        Me.grb_menu.PerformLayout()
        Me.GroupBox1.ResumeLayout(False)
        CType(Me.datalistado_home, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ContextMenuStrip1.ResumeLayout(False)
        Me.ResumeLayout(False)

    End Sub

    Friend WithEvents panel_menu As Panel
    Friend WithEvents Panel2 As Panel
    Friend WithEvents panel_contenedor As Panel
    Friend WithEvents btn_cerrar As PictureBox
    Friend WithEvents btn_ajustar_menu As PictureBox
    Friend WithEvents btn_minimixar As PictureBox
    Friend WithEvents btn_maximixar As PictureBox
    Friend WithEvents btn_restaurar As PictureBox
    Friend WithEvents Label1 As Label
    Friend WithEvents lbl_donde_estoy As Label
    Friend WithEvents PictureBox2 As PictureBox
    Friend WithEvents btn_icon_home As FontAwesome.Sharp.IconButton
    Friend WithEvents Panel1 As Panel
    Friend WithEvents btn_icon_gastos As FontAwesome.Sharp.IconButton
    Friend WithEvents btn_icon_invantario As FontAwesome.Sharp.IconButton
    Friend WithEvents btn_icon_cliente As FontAwesome.Sharp.IconButton
    Friend WithEvents btn_icon_producto As FontAwesome.Sharp.IconButton
    Friend WithEvents btn_icon_venta As FontAwesome.Sharp.IconButton
    Friend WithEvents iconCurrentform As FontAwesome.Sharp.IconPictureBox
    Friend WithEvents PictureBox1 As PictureBox
    Friend WithEvents btn_flecha As FontAwesome.Sharp.IconButton
    Friend WithEvents lbl_user_name As Label
    Friend WithEvents btn_notification As FontAwesome.Sharp.IconButton
    Friend WithEvents btn_icon_caja As FontAwesome.Sharp.IconButton
    Friend WithEvents btn_icon_usuario As FontAwesome.Sharp.IconButton
    Friend WithEvents btn_icon_salir As FontAwesome.Sharp.IconButton
    Friend WithEvents pc_notification As PictureBox
    Friend WithEvents btn_entrada_y_salida As FontAwesome.Sharp.IconButton
    Friend WithEvents lbl_id_usuario As Label
    Friend WithEvents lbl_turno As Label
    Friend WithEvents GroupBox1 As GroupBox
    Friend WithEvents datalistado_home As DataGridView
    Friend WithEvents lbl_solo_nombre As Label
    Friend WithEvents ContextMenuStrip1 As ContextMenuStrip
    Friend WithEvents DarleEntradaToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents grb_menu As GroupBox
    Friend WithEvents lbl_cerrar_sesion As LinkLabel
    Friend WithEvents lbl_salir As LinkLabel
End Class

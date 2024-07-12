object Form1: TForm1
  Left = 192
  Top = 125
  Width = 870
  Height = 450
  Caption = 'KOSTUMER'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 128
    Top = 32
    Width = 49
    Height = 17
    Caption = 'NIK'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Modern No. 20'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 128
    Top = 64
    Width = 47
    Height = 17
    Caption = 'NAMA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Modern No. 20'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 128
    Top = 128
    Width = 73
    Height = 17
    Caption = 'EMAIL'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Modern No. 20'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 128
    Top = 96
    Width = 65
    Height = 17
    Caption = 'TELP'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Modern No. 20'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 128
    Top = 168
    Width = 81
    Height = 17
    Caption = 'ALAMAT'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Modern No. 20'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 128
    Top = 200
    Width = 81
    Height = 17
    Caption = 'MEMBER'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Modern No. 20'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 112
    Top = 376
    Width = 132
    Height = 17
    Caption = 'MASUKAN NAMA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Modern No. 20'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lbl8: TLabel
    Left = 320
    Top = 200
    Width = 73
    Height = 17
    Caption = 'DISKON'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Modern No. 20'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object edtNik: TEdit
    Left = 224
    Top = 32
    Width = 457
    Height = 21
    TabOrder = 0
  end
  object edtNama: TEdit
    Left = 224
    Top = 64
    Width = 457
    Height = 21
    TabOrder = 1
  end
  object edtTelp: TEdit
    Left = 224
    Top = 96
    Width = 457
    Height = 21
    TabOrder = 2
  end
  object edtEmail: TEdit
    Left = 224
    Top = 128
    Width = 457
    Height = 21
    TabOrder = 3
  end
  object edtAlamat: TEdit
    Left = 224
    Top = 160
    Width = 457
    Height = 21
    TabOrder = 4
  end
  object edt6: TEdit
    Left = 256
    Top = 376
    Width = 177
    Height = 21
    TabOrder = 5
  end
  object cbb1: TComboBox
    Left = 224
    Top = 200
    Width = 81
    Height = 21
    ItemHeight = 13
    TabOrder = 6
  end
  object dbgrd1: TDBGrid
    Left = 120
    Top = 280
    Width = 569
    Height = 81
    DataSource = dsDataset1
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btn1: TButton
    Left = 120
    Top = 240
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 8
  end
  object btn2: TButton
    Left = 216
    Top = 240
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 9
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 312
    Top = 240
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 10
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 408
    Top = 240
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 11
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 512
    Top = 240
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 12
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 608
    Top = 240
    Width = 75
    Height = 25
    Caption = 'btn1'
    TabOrder = 13
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from kustomer')
    Params = <>
    Left = 752
    Top = 152
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'penjualan2'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Users\ASUS\Documents\UAS VISUAL2\libmysql.dll'
    Left = 712
    Top = 120
  end
  object dsDataset1: TDataSource
    DataSet = ZQuery1
    Left = 712
    Top = 184
  end
end

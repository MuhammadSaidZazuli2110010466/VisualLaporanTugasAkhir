object Form1: TForm1
  Left = 545
  Top = 281
  Width = 724
  Height = 515
  Caption = 'Form Login'
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
    Left = 232
    Top = 240
    Width = 54
    Height = 13
    Caption = 'USERNAME'
  end
  object lbl2: TLabel
    Left = 424
    Top = 240
    Width = 57
    Height = 13
    Caption = 'PASSWORD'
  end
  object lbl3: TLabel
    Left = 88
    Top = 72
    Width = 562
    Height = 116
    Caption = 'FORM LOGIN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -96
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 200
    Top = 272
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 392
    Top = 272
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object b1: TButton
    Left = 216
    Top = 312
    Width = 75
    Height = 25
    Caption = 'LOGIN'
    TabOrder = 2
    OnClick = b1Click
  end
  object b2: TButton
    Left = 416
    Top = 312
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 3
    OnClick = b2Click
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    HostName = 'localhost'
    Port = 3306
    Database = 'visual10'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'E:\Folder PC Z\Kuliah\S5\VISUAL\visual10\libmysql.dll'
    Left = 224
    Top = 424
  end
  object zquery1: TZReadOnlyQuery
    Connection = con1
    SQL.Strings = (
      'select * from tabel_user')
    Params = <>
    Left = 280
    Top = 424
  end
end

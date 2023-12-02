object Form4: TForm4
  Left = 644
  Top = 189
  Width = 668
  Height = 440
  Caption = 'Tiket'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 104
    Top = 152
    Width = 64
    Height = 13
    Caption = 'Tanggal Tiket'
  end
  object lbl3: TLabel
    Left = 104
    Top = 176
    Width = 56
    Height = 13
    Caption = 'Keterangan'
  end
  object lbl2: TLabel
    Left = 104
    Top = 96
    Width = 58
    Height = 13
    Caption = 'id_costumer'
  end
  object lbl4: TLabel
    Left = 104
    Top = 128
    Width = 63
    Height = 13
    Caption = 'id_berangkat'
  end
  object edt1: TEdit
    Left = 208
    Top = 88
    Width = 145
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 208
    Top = 120
    Width = 145
    Height = 21
    TabOrder = 1
  end
  object b1: TButton
    Left = 96
    Top = 216
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 2
    OnClick = b1Click
  end
  object b2: TButton
    Left = 184
    Top = 216
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 3
    OnClick = b2Click
  end
  object b3: TButton
    Left = 272
    Top = 216
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 4
    OnClick = b3Click
  end
  object b4: TButton
    Left = 360
    Top = 216
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 5
    OnClick = b4Click
  end
  object b5: TButton
    Left = 448
    Top = 216
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 6
    OnClick = b5Click
  end
  object b6: TButton
    Left = 536
    Top = 216
    Width = 75
    Height = 25
    Caption = 'LAPORAN'
    TabOrder = 7
    OnClick = b6Click
  end
  object dg1: TDBGrid
    Left = 40
    Top = 256
    Width = 577
    Height = 120
    DataSource = ds1
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dg1CellClick
  end
  object edt3: TEdit
    Left = 208
    Top = 152
    Width = 145
    Height = 21
    TabOrder = 9
  end
  object edt4: TEdit
    Left = 208
    Top = 184
    Width = 145
    Height = 21
    TabOrder = 10
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 384
    Top = 128
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Properties.Strings = (
      'controls_cp=GET_ACP')
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'visual10'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'E:\Folder PC Z\Kuliah\S5\VISUAL\visual10\libmysql.dll'
    Left = 384
    Top = 32
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tabel_tiket')
    Params = <>
    Left = 384
    Top = 80
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = zqry1
    BCDToCurrency = True
    Left = 456
    Top = 32
  end
  object frxrprt1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45101.545964409700000000
    ReportOptions.LastChange = 45262.695192534700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 456
    Top = 88
    Datasets = <
      item
        DataSet = frxdbdtst1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 49.133890000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 257.008040000000000000
          Top = 11.338590000000000000
          Width = 226.771800000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'REPORT TIKET')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 90.708720000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Top = 15.118120000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID-TIKET')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 83.149660000000000000
          Top = 15.118120000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID-COSTUMER')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 181.417440000000000000
          Top = 15.118120000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID-BERANGKAT')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 298.582870000000000000
          Top = 15.118120000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TANGGAL TIKET')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 393.071120000000000000
          Top = 15.118120000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'KETERANGAN')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 185.196970000000000000
        Width = 718.110700000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo6: TfrxMemoView
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_tiket'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."id_tiket"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 83.149660000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_costumer'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."id_costumer"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 181.417440000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_berangkat'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."id_berangkat"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 298.582870000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tgl_tiket'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."tgl_tiket"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 393.071120000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'keterangan'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."keterangan"]')
          ParentFont = False
        end
      end
    end
  end
end

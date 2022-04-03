object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Cadastro Cliente Info Sistemas'
  ClientHeight = 489
  ClientWidth = 705
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pnl_cliente: TPanel
    Left = 0
    Top = 0
    Width = 705
    Height = 489
    Align = alClient
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 0
    object lbl1: TLabel
      Left = 10
      Top = 26
      Width = 29
      Height = 13
      Caption = 'NOME'
    end
    object lbl2: TLabel
      Left = 10
      Top = 85
      Width = 61
      Height = 13
      Caption = 'IDENTIDADE'
    end
    object lbl3: TLabel
      Left = 301
      Top = 88
      Width = 19
      Height = 13
      Caption = 'CPF'
    end
    object lbl4: TLabel
      Left = 12
      Top = 141
      Width = 50
      Height = 13
      Caption = 'TELEFONE'
    end
    object lbl5: TLabel
      Left = 300
      Top = 144
      Width = 30
      Height = 13
      Caption = 'EMAIL'
    end
    object lbl_endereco: TLabel
      Left = 7
      Top = 186
      Width = 95
      Height = 23
      Caption = 'Endere'#231'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object TDBEdit
      Left = 10
      Top = 45
      Width = 669
      Height = 21
      Hint = 'Informe'
      DataField = 'NOME'
      DataSource = DS
      TabOrder = 0
    end
    object TDBEdit
      Left = 8
      Top = 104
      Width = 264
      Height = 21
      DataField = 'IDENTIDADE'
      DataSource = DS
      TabOrder = 1
    end
    object TDBEdit
      Left = 301
      Top = 104
      Width = 378
      Height = 21
      DataField = 'CPF'
      DataSource = DS
      TabOrder = 2
    end
    object TDBEdit
      Left = 10
      Top = 160
      Width = 241
      Height = 21
      DataField = 'TELEFONE'
      DataSource = DS
      TabOrder = 3
    end
    object TDBEdit
      Left = 300
      Top = 160
      Width = 379
      Height = 21
      DataField = 'EMAIL'
      DataSource = DS
      TabOrder = 4
    end
    object Panel1: TPanel
      Left = 0
      Top = 208
      Width = 689
      Height = 201
      TabOrder = 5
      object lbl13: TLabel
        Left = 285
        Top = 101
        Width = 23
        Height = 13
        Caption = 'PAIS'
      end
      object lbl12: TLabel
        Left = 232
        Top = 101
        Width = 13
        Height = 13
        Caption = 'UF'
      end
      object lbl8: TLabel
        Left = 506
        Top = 57
        Width = 43
        Height = 13
        Caption = 'NUMERO'
      end
      object lbl6: TLabel
        Left = 14
        Top = 61
        Width = 21
        Height = 13
        Caption = 'RUA'
      end
      object lbl9: TLabel
        Left = 373
        Top = 55
        Width = 75
        Height = 13
        Caption = 'COMPLEMENTO'
      end
      object lbl10: TLabel
        Left = 555
        Top = 57
        Width = 39
        Height = 13
        Caption = 'BAIRRO'
      end
      object lbl11: TLabel
        Left = 14
        Top = 101
        Width = 38
        Height = 13
        Caption = 'CIDADE'
      end
      object lbl7: TLabel
        Left = 14
        Top = 7
        Width = 19
        Height = 13
        Caption = 'CEP'
      end
      object TDBEdit
        Left = 285
        Top = 120
        Width = 264
        Height = 21
        DataField = 'PAIS'
        DataSource = DS
        TabOrder = 0
      end
      object TDBEdit
        Left = 232
        Top = 120
        Width = 30
        Height = 21
        DataField = 'UF'
        DataSource = DS
        TabOrder = 1
      end
      object TDBEdit
        Left = 503
        Top = 74
        Width = 46
        Height = 21
        DataField = 'NUMERO'
        DataSource = DS
        TabOrder = 2
      end
      object TDBEdit
        Left = 14
        Top = 74
        Width = 353
        Height = 21
        DataField = 'RUA'
        DataSource = DS
        TabOrder = 3
      end
      object TDBEdit
        Left = 373
        Top = 74
        Width = 124
        Height = 21
        DataField = 'COMPLEMENTO'
        DataSource = DS
        TabOrder = 4
      end
      object TDBEdit
        Left = 555
        Top = 74
        Width = 121
        Height = 21
        DataField = 'BAIRRO'
        DataSource = DS
        TabOrder = 5
      end
      object TDBEdit
        Left = 14
        Top = 120
        Width = 212
        Height = 21
        DataField = 'CIDADE'
        DataSource = DS
        TabOrder = 6
      end
      object TDBEdit
        Left = 14
        Top = 20
        Width = 212
        Height = 21
        DataField = 'CEP'
        DataSource = DS
        TabOrder = 7
      end
    end
    object btn_novo: TButton
      Left = 386
      Top = 440
      Width = 97
      Height = 41
      Caption = '&Novo'
      TabOrder = 6
      OnClick = btn_novoClick
    end
  end
  object btnSalvar: TButton
    Left = 489
    Top = 440
    Width = 97
    Height = 41
    Caption = '&Salvar'
    TabOrder = 1
    OnClick = btnSalvarClick
  end
  object btn_fechar: TButton
    Left = 592
    Top = 440
    Width = 97
    Height = 41
    Caption = '&Fechar'
    TabOrder = 2
    OnClick = btn_fecharClick
  end
  object CDS: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 232
    Top = 8
    object strngfldCDSNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object strngfldCDSIDENTIDADE: TStringField
      FieldName = 'IDENTIDADE'
    end
    object strngfldCDSCPF: TStringField
      FieldName = 'CPF'
    end
    object strngfldCDSTELEFONE: TStringField
      FieldName = 'TELEFONE'
    end
    object strngfldCDSEMAIL: TStringField
      FieldName = 'EMAIL'
    end
    object strngfldCDSRUA: TStringField
      FieldName = 'RUA'
      Size = 30
    end
    object strngfldCDSCEP: TStringField
      FieldName = 'CEP'
    end
    object intgrfldCDSNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object strngfldCDSCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 15
    end
    object strngfldCDSBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 10
    end
    object strngfldCDSCIDADE: TStringField
      FieldName = 'CIDADE'
    end
    object strngfldCDSUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object strngfldCDSPAIS: TStringField
      FieldName = 'PAIS'
    end
  end
  object DS: TDataSource
    DataSet = CDS
    Left = 273
    Top = 8
  end
end

inherited fTarefa3: TfTarefa3
  Caption = 'fTarefa3'
  ClientHeight = 377
  ClientWidth = 610
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitWidth = 616
  ExplicitHeight = 406
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 88
    Height = 13
    Caption = 'Valores do Projeto'
  end
  object Label2: TLabel
    Left = 478
    Top = 270
    Width = 40
    Height = 13
    Caption = 'Total R$'
  end
  object Label3: TLabel
    Left = 478
    Top = 322
    Width = 82
    Height = 13
    Caption = 'Total Divis'#245'es R$'
  end
  object dbgValores: TDBGrid
    Left = 8
    Top = 30
    Width = 588
    Height = 234
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object BitBtn1: TBitBtn
    Left = 349
    Top = 286
    Width = 120
    Height = 30
    Cursor = crHandPoint
    Caption = 'Obter Total'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 349
    Top = 338
    Width = 120
    Height = 30
    Cursor = crHandPoint
    Caption = 'Obter Total Divis'#245'es'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object edtTotal: TEdit
    Left = 475
    Top = 292
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 3
    Text = 'edtTotal'
  end
  object edtTotDiv: TEdit
    Left = 475
    Top = 344
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 4
    Text = 'Edit1'
  end
end

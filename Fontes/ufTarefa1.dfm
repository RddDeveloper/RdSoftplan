inherited fTarefa1: TfTarefa1
  Caption = 'fTarefa1'
  ClientHeight = 373
  ClientWidth = 610
  OnCreate = FormCreate
  ExplicitWidth = 626
  ExplicitHeight = 412
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 12
    Top = 8
    Width = 38
    Height = 13
    Caption = 'Colunas'
  end
  object Label2: TLabel
    Left = 164
    Top = 8
    Width = 37
    Height = 13
    Caption = 'Tabelas'
  end
  object Label3: TLabel
    Left = 320
    Top = 8
    Width = 49
    Height = 13
    Caption = 'Condi'#231#245'es'
  end
  object Label4: TLabel
    Left = 8
    Top = 231
    Width = 52
    Height = 13
    Caption = 'Sql Gerado'
  end
  object mColunas: TMemo
    Left = 8
    Top = 30
    Width = 133
    Height = 195
    Lines.Strings = (
      'mColunas')
    TabOrder = 0
  end
  object mTabelas: TMemo
    Left = 164
    Top = 30
    Width = 133
    Height = 195
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object mCondicoes: TMemo
    Left = 320
    Top = 30
    Width = 133
    Height = 195
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
  object btnGeraSql: TBitBtn
    Left = 472
    Top = 27
    Width = 120
    Height = 30
    Cursor = crHandPoint
    Caption = 'Gerar Sql'
    TabOrder = 3
    OnClick = btnGeraSqlClick
  end
  object mSql: TMemo
    Left = 8
    Top = 255
    Width = 584
    Height = 106
    Lines.Strings = (
      'mSql')
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 4
  end
  object spSql: TspQuery
    Left = 477
    Top = 64
  end
end

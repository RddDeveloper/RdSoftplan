inherited fTarefa2: TfTarefa2
  Caption = 'fTarefa2'
  ClientHeight = 200
  ClientWidth = 452
  ExplicitWidth = 458
  ExplicitHeight = 229
  PixelsPerInch = 96
  TextHeight = 13
  object lbProcesso1: TLabel
    Left = 16
    Top = 85
    Width = 52
    Height = 13
    Caption = 'Processo 1'
  end
  object lbProcesso2: TLabel
    Left = 16
    Top = 133
    Width = 52
    Height = 13
    Caption = 'Processo 2'
  end
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 41
    Height = 13
    Caption = 'Tempo 1'
  end
  object Label2: TLabel
    Left = 120
    Top = 16
    Width = 41
    Height = 13
    Caption = 'Tempo 2'
  end
  object Button1: TButton
    Left = 305
    Top = 26
    Width = 120
    Height = 30
    Cursor = crHandPoint
    Caption = 'Processar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ProgressBar1: TProgressBar
    Left = 16
    Top = 104
    Width = 409
    Height = 17
    MarqueeInterval = 1
    TabOrder = 1
  end
  object ProgressBar2: TProgressBar
    Left = 16
    Top = 152
    Width = 409
    Height = 17
    MarqueeInterval = 1
    TabOrder = 2
  end
  object nbTempo1: TNumberBox
    Left = 16
    Top = 35
    Width = 73
    Height = 21
    Decimal = 0
    TabOrder = 3
    Value = 1000.000000000000000000
  end
  object nbTempo2: TNumberBox
    Left = 120
    Top = 35
    Width = 73
    Height = 21
    TabOrder = 4
    Value = 1000.000000000000000000
  end
end

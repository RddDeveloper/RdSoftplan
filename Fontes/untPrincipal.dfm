object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Desafio Softplan'
  ClientHeight = 432
  ClientWidth = 708
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 413
    Width = 708
    Height = 19
    Panels = <
      item
        Text = 
          ':: Rafael Dias - ribeirodias2014@gmail.com - (35)9-9992-6847 - J' +
          'ulho 2022'
        Width = 200
      end>
    ExplicitLeft = -87
    ExplicitTop = 402
    ExplicitWidth = 795
  end
  object MainMenu1: TMainMenu
    Left = 216
    Top = 88
    object arefas1: TMenuItem
      Caption = 'Tarefas'
      object arefa11: TMenuItem
        Caption = 'Tarefa 1'
        OnClick = arefa11Click
      end
      object arefa12: TMenuItem
        Caption = 'Tarefa 2'
        OnClick = arefa12Click
      end
      object arefa31: TMenuItem
        Caption = 'Tarefa 3'
        OnClick = arefa31Click
      end
    end
  end
end

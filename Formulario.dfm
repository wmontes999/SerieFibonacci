object FrmFibonacci: TFrmFibonacci
  Left = 0
  Top = 0
  Caption = 'Fibonacci'
  ClientHeight = 103
  ClientWidth = 660
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object LblNombre: TLabel
    Left = 24
    Top = 24
    Width = 41
    Height = 13
    Caption = 'Numero:'
  end
  object LblResultado: TLabel
    Left = 24
    Top = 57
    Width = 3
    Height = 13
  end
  object TxtValor: TEdit
    Left = 80
    Top = 21
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 0
  end
  object BtnGenerar: TButton
    Left = 216
    Top = 19
    Width = 137
    Height = 25
    Caption = 'Generar Numero'
    TabOrder = 1
    OnClick = BtnGenerarClick
  end
end

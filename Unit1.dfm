object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Heran'#231'a'
  ClientHeight = 88
  ClientWidth = 229
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object ButtonDog: TButton
    Left = 24
    Top = 24
    Width = 81
    Height = 41
    Caption = 'Cachorro'
    TabOrder = 0
    OnClick = ButtonDogClick
  end
  object ButtonCat: TButton
    Left = 128
    Top = 24
    Width = 81
    Height = 41
    Caption = 'Gato'
    TabOrder = 1
    OnClick = ButtonCatClick
  end
end

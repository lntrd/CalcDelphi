object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Calculadora'
  ClientHeight = 268
  ClientWidth = 199
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pnlFundo: TPanel
    Left = 0
    Top = 0
    Width = 199
    Height = 268
    Align = alClient
    TabOrder = 0
    object pnlVisor: TPanel
      Left = 1
      Top = 1
      Width = 197
      Height = 40
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object edtVisor: TEdit
        Left = 8
        Top = 10
        Width = 182
        Height = 21
        TabOrder = 0
      end
    end
    object btn_07: TButton
      Left = 9
      Top = 38
      Width = 41
      Height = 41
      Caption = '7'
      TabOrder = 1
      OnClick = ValoresClick
    end
    object btn_08: TButton
      Left = 56
      Top = 38
      Width = 41
      Height = 41
      Caption = '8'
      TabOrder = 2
      OnClick = ValoresClick
    end
    object btn_09: TButton
      Left = 103
      Top = 38
      Width = 41
      Height = 41
      Caption = '9'
      TabOrder = 3
      OnClick = ValoresClick
    end
    object btn_dv: TButton
      Left = 150
      Top = 38
      Width = 41
      Height = 41
      Caption = '/'
      TabOrder = 4
      OnClick = ValoresClick
    end
    object btn_mt: TButton
      Left = 150
      Top = 85
      Width = 41
      Height = 41
      Caption = '*'
      TabOrder = 5
      OnClick = ValoresClick
    end
    object btn_06: TButton
      Left = 103
      Top = 85
      Width = 41
      Height = 41
      Caption = '6'
      TabOrder = 6
      OnClick = ValoresClick
    end
    object btn_05: TButton
      Left = 56
      Top = 85
      Width = 41
      Height = 41
      Caption = '5'
      TabOrder = 7
      OnClick = ValoresClick
    end
    object btn_04: TButton
      Left = 9
      Top = 85
      Width = 41
      Height = 41
      Caption = '4'
      TabOrder = 8
      OnClick = ValoresClick
    end
    object btn_03: TButton
      Left = 103
      Top = 132
      Width = 41
      Height = 41
      Caption = '3'
      TabOrder = 9
      OnClick = ValoresClick
    end
    object btn_02: TButton
      Left = 56
      Top = 132
      Width = 41
      Height = 41
      Caption = '2'
      TabOrder = 10
      OnClick = ValoresClick
    end
    object btn_01: TButton
      Left = 9
      Top = 132
      Width = 41
      Height = 41
      Caption = '1'
      TabOrder = 11
      OnClick = ValoresClick
    end
    object btn_sm: TButton
      Left = 149
      Top = 179
      Width = 41
      Height = 41
      Caption = '+'
      TabOrder = 12
      OnClick = ValoresClick
    end
    object btn_limpa: TButton
      Left = 8
      Top = 223
      Width = 40
      Height = 41
      Caption = 'C'
      TabOrder = 13
      OnClick = ValoresClick
    end
    object btn_00: TButton
      Left = 8
      Top = 179
      Width = 41
      Height = 41
      Caption = '0'
      TabOrder = 14
      OnClick = ValoresClick
    end
    object btn_sb: TButton
      Left = 150
      Top = 132
      Width = 41
      Height = 41
      Caption = '-'
      TabOrder = 15
      OnClick = ValoresClick
    end
    object btn_vg: TButton
      Left = 57
      Top = 179
      Width = 40
      Height = 41
      Caption = ','
      TabOrder = 16
      OnClick = ValoresClick
    end
    object btn_ig: TButton
      Left = 103
      Top = 179
      Width = 41
      Height = 41
      Caption = '='
      TabOrder = 17
      OnClick = ValoresClick
    end
  end
end

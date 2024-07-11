object Form1: TForm1
  Left = 234
  Top = 184
  Caption = 'Form1'
  ClientHeight = 551
  ClientWidth = 585
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 13
  object lbl1: TLabel
    Left = 8
    Top = 16
    Width = 37
    Height = 23
    Caption = 'NIK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 8
    Top = 48
    Width = 58
    Height = 23
    Caption = 'NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 8
    Top = 80
    Width = 47
    Height = 23
    Caption = 'TELP'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 8
    Top = 112
    Width = 62
    Height = 23
    Caption = 'EMAIL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 8
    Top = 144
    Width = 79
    Height = 23
    Caption = 'ALAMAT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 8
    Top = 176
    Width = 109
    Height = 23
    Caption = 'MEMBER    '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 264
    Top = 176
    Width = 115
    Height = 23
    Caption = 'DISKON :    '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl8: TLabel
    Left = 368
    Top = 176
    Width = 18
    Height = 23
    Caption = '0 '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl9: TLabel
    Left = 8
    Top = 504
    Width = 160
    Height = 23
    Caption = 'MASUKAN NAME'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edt1: TEdit
    Left = 104
    Top = 16
    Width = 209
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 104
    Top = 48
    Width = 409
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 104
    Top = 80
    Width = 297
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 104
    Top = 112
    Width = 233
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 104
    Top = 144
    Width = 289
    Height = 21
    TabOrder = 4
  end
  object btn1: TButton
    Left = 8
    Top = 240
    Width = 75
    Height = 33
    Caption = 'BARU'
    TabOrder = 5
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 96
    Top = 240
    Width = 75
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 6
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 192
    Top = 240
    Width = 75
    Height = 33
    Caption = 'EDIT'
    TabOrder = 7
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 288
    Top = 240
    Width = 75
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 8
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 384
    Top = 240
    Width = 75
    Height = 33
    Caption = 'BATAL'
    TabOrder = 9
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 472
    Top = 240
    Width = 75
    Height = 33
    Caption = 'CETAK'
    TabOrder = 10
    OnClick = btn6Click
  end
  object btn7: TButton
    Left = 496
    Top = 501
    Width = 75
    Height = 33
    Caption = 'CARI'
    TabOrder = 11
    OnClick = btn7Click
  end
  object dbgrd1: TDBGrid
    Left = 8
    Top = 296
    Width = 561
    Height = 185
    DataSource = DataModule2.ds1
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object cbb1: TComboBox
    Left = 104
    Top = 176
    Width = 145
    Height = 21
    TabOrder = 13
    OnChange = cbb1Change
    Items.Strings = (
      'yes'
      'no')
  end
  object edt6: TEdit
    Left = 192
    Top = 509
    Width = 289
    Height = 21
    TabOrder = 14
  end
end

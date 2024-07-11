object DataModule2: TDataModule2
  Height = 334
  Width = 109
  PixelsPerInch = 120
  object ds1: TDataSource
    DataSet = zqry1
    Left = 32
    Top = 236
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    Catalog = ''
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 3306
    Database = 'penjualan'
    User = 'root'
    Password = ''
    Protocol = 'mysql'
    LibraryLocation = 'C:\Users\USER\Documents\delphi VISUAL 2\libmysql.dll'
    Left = 36
    Top = 130
  end
  object zqry1: TZQuery
    Connection = con1
    SQL.Strings = (
      'select * from kustomer')
    Params = <>
    Left = 38
    Top = 16
  end
end

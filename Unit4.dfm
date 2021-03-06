object DM1: TDM1
  OldCreateOrder = False
  Left = 200
  Top = 144
  Height = 267
  Width = 589
  object con1: TZConnection
    Protocol = 'mysql'
    HostName = 'localhost'
    Port = 3306
    Database = 'db_sispak'
    User = 'root'
    Connected = True
    Left = 24
    Top = 24
  end
  object Gejala_zq: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tabelgejala order by KodeGejala')
    Params = <>
    Left = 24
    Top = 88
  end
  object Penyakit_zq: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tabelpenyakit order by KodePenyakit')
    Params = <>
    Left = 96
    Top = 88
  end
  object Pertanyaan_zq: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tabelpertanyaan order by KodePertanyaan')
    Params = <>
    Left = 168
    Top = 88
  end
  object Rule_zq: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tabelrule order by KodeRule')
    Params = <>
    Left = 232
    Top = 88
  end
  object pRule_zq: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tabelrule')
    Params = <>
    Left = 296
    Top = 88
    object strngfldRule_zqKodeRule: TStringField
      FieldName = 'KodeRule'
      Required = True
      Size = 6
    end
    object strngfldRule_zqkodepertanyaan1: TStringField
      FieldName = 'kodepertanyaan1'
      Size = 50
    end
    object strngfldRule_zqkodepenyakit: TStringField
      FieldName = 'kodepenyakit'
      Size = 6
    end
    object strngfldRule_zqnamapenyakit: TStringField
      FieldKind = fkLookup
      FieldName = 'namapenyakit'
      LookupDataSet = Penyakit_zq
      LookupKeyFields = 'KodePenyakit'
      LookupResultField = 'NamaPenyakit'
      KeyFields = 'kodepenyakit'
      Size = 25
      Lookup = True
    end
  end
  object Gejala_ds: TDataSource
    DataSet = Gejala_zq
    Left = 24
    Top = 152
  end
  object Penyakit_ds: TDataSource
    DataSet = Penyakit_zq
    Left = 96
    Top = 152
  end
  object Pertanyaan_ds: TDataSource
    DataSet = Pertanyaan_zq
    Left = 168
    Top = 152
  end
  object Rule_ds: TDataSource
    DataSet = Rule_zq
    Left = 232
    Top = 152
  end
  object pRule_ds: TDataSource
    DataSet = pRule_zq
    Left = 296
    Top = 152
  end
  object Akun_zq: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tabelakun')
    Params = <>
    Left = 368
    Top = 88
  end
  object Akun_ds: TDataSource
    DataSet = Akun_zq
    Left = 368
    Top = 152
  end
  object Pasien_zq: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tabelpasien')
    Params = <>
    Left = 440
    Top = 88
  end
  object Paasien_ds: TDataSource
    DataSet = Pasien_zq
    Left = 440
    Top = 152
  end
end

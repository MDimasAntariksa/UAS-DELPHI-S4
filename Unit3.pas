unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TForm3 = class(TForm)
    qckrp: TQuickRep;
    PageHeaderBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    qrlbl1: TQRLabel;
    qrshp1: TQRShape;
    qrshp2: TQRShape;
    qrshp3: TQRShape;
    qrshp4: TQRShape;
    qrshp5: TQRShape;
    qrshp6: TQRShape;
    qrshp7: TQRShape;
    id: TQRDBText;
    qrlbl2: TQRLabel;
    nik: TQRDBText;
    qrlbl3: TQRLabel;
    qrlbl4: TQRLabel;
    telp: TQRDBText;
    qrlbl5: TQRLabel;
    email: TQRDBText;
    qrlbl6: TQRLabel;
    alamat: TQRDBText;
    qrlbl7: TQRLabel;
    member: TQRDBText;
    qrlbl8: TQRLabel;
    nama: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses
  Unit1, Unit2;

{$R *.dfm}

end.

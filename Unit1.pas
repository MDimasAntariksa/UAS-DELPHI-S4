unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Data.DB;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    lbl4: TLabel;
    lbl5: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btn7: TButton;
    dbgrd1: TDBGrid;
    lbl6: TLabel;
    cbb1: TComboBox;
    edt6: TEdit;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    procedure bersih;
    procedure posisiawal;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure cbb1Change(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Unit2, Unit3;

{$R *.dfm}





procedure TForm1.bersih;
begin
  edt1.Clear;
  edt2.Clear;
  edt3.Clear;
  edt4.Clear;
  edt5.Clear;
  edt6.Clear;
  cbb1.ItemIndex := -1;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  edt1.Enabled := True;
  edt2.Enabled := True;
  edt3.Enabled := True;
  edt4.Enabled := True;
  cbb1.Enabled := True;
  edt5.Enabled := True;
  btn2.Enabled := True;
  btn3.Enabled := False;
  btn4.Enabled := False;
  btn7.Enabled := true;
  bersih;

end;

procedure TForm1.btn2Click(Sender: TObject);
begin
   if edt1.Text = '' then
    ShowMessage('NIK Tidak Boleh Kosong!')
  else if edt2.Text = '' then
    ShowMessage('Nama Tidak Boleh Kosong!')
  else if edt3.Text = '' then
    ShowMessage('Telp Tidak Boleh Kosong!')
  else if edt4.Text = '' then
    ShowMessage('Email Tidak Boleh Kosong!')
  else if edt5.Text = '' then
    ShowMessage('Alamat Tidak Boleh Kosong!')
  else if DataModule2.ds1.DataSet.Locate('nik', edt1.Text, []) then
    ShowMessage('NIK ' + edt1.Text + ' Sudah Ada Didalam Sistem')
  else
  begin
    with DataModule2.ds1.DataSet do
    begin
      Append;
      FieldByName('nik').AsString := edt1.Text;
      FieldByName('nama').AsString := edt2.Text;
      FieldByName('telp').AsString := edt3.Text;
      FieldByName('email').AsString := edt4.Text;
      FieldByName('alamat').AsString := edt5.Text;
      FieldByName('member').AsString := cbb1.Text;
      Post;
    end;
    ShowMessage('Data Berhasil Disimpan.');
    posisiawal;
  end;

end;

procedure TForm1.btn3Click(Sender: TObject);
begin
if edt1.Text = '' then
    ShowMessage('NIK Tidak Boleh Kosong!')
  else if edt2.Text = '' then
    ShowMessage('Nama Tidak Boleh Kosong!')
  else if DataModule2.ds1.DataSet.Locate('nik', edt1.Text, []) then
  begin
    with DataModule2.ds1.DataSet do
    begin
      Edit;
      FieldByName('nik').AsString := edt1.Text;
      FieldByName('nama').AsString := edt2.Text;
      FieldByName('telp').AsString := edt3.Text;
      FieldByName('email').AsString := edt4.Text;
      FieldByName('alamat').AsString := edt5.Text;
      FieldByName('member').AsString := cbb1.Text;
      Post;
    end;
    ShowMessage('Data Berhasil Diedit.');
    posisiawal;
  end
  else
    ShowMessage('NIK ' + edt1.Text + ' Tidak Ditemukan.');
end;
procedure TForm1.posisiawal;
begin
  bersih;
  edt1.Enabled := False;
  edt2.Enabled := False;
  edt3.Enabled := False;
  edt4.Enabled := False;
  edt5.Enabled := False;
  edt6.Enabled := True;
  btn2.Enabled := False;
  btn3.Enabled := False;
  btn4.Enabled := False;
  btn7.Enabled := true;
  btn1.Enabled := True;
end;



procedure TForm1.btn4Click(Sender: TObject);
begin
if DataModule2.ds1.DataSet.RecordCount = 0 then
    ShowMessage('Tidak ada data untuk dihapus.')
  else if Application.MessageBox('Apakah Anda yakin ingin menghapus data ini?', 'Konfirmasi', MB_YESNO + MB_ICONQUESTION) = IDYES then
  begin
    DataModule2.ds1.DataSet.Delete;
    ShowMessage('Data Berhasil Dihapus.');
    posisiawal;
  end;

end;

procedure TForm1.btn7Click(Sender: TObject);
begin
with DataModule2.ds1.DataSet do
  begin
    if Locate('nama', edt6.Text, []) then
      ShowMessage('Data Ditemukan.')
    else
      ShowMessage('Data Tidak Ditemukan.');
  end;

end;

procedure TForm1.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm1.dbgrd1CellClick(Column: TColumn);
begin
with DataModule2.ds1.DataSet do
  begin
    edt1.Text := FieldByName('nik').AsString;
    edt2.Text := FieldByName('nama').AsString;
    edt3.Text := FieldByName('telp').AsString;
    edt4.Text := FieldByName('email').AsString;
    cbb1.Text := FieldByName('member').AsString;
    edt5.Text := FieldByName('alamat').AsString;
  end;

  edt1.Enabled := True;
  edt2.Enabled := True;
  edt3.Enabled := True;
  edt4.Enabled := True;
  cbb1.Enabled := True;
  edt5.Enabled := True;
  edt6.Enabled := True;
  btn3.Enabled := True;
  btn4.Enabled := True;
  btn2.Enabled := False;
end;


procedure TForm1.cbb1Change(Sender: TObject);
begin
if cbb1.Text = 'yes' then
    lbl7.Caption := 'Diskon: 10%'
  else if cbb1.Text = 'no' then
    lbl7.Caption := 'Diskon: 5%'
  else
    lbl7.Caption := '';
end;



procedure TForm1.btn6Click(Sender: TObject);
begin
Form3.qckrp.preview;
end;


end.

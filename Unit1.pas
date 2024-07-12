unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractConnection, ZConnection,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TForm1 = class(TForm)
    edtNik: TEdit;
    edtNama: TEdit;
    edtTelp: TEdit;
    edtEmail: TEdit;
    edtAlamat: TEdit;
    edt6: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    cbb1: TComboBox;
    dbgrd1: TDBGrid;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    lbl7: TLabel;
    btn5: TButton;
    btn6: TButton;
    lbl8: TLabel;
    ZQuery1: TZQuery;
    ZConnection1: TZConnection;
    dsDataset1: TDataSource;
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn2Click(Sender: TObject);
begin
 // Pastikan koneksi terhubung
  if not ZConnection1.Connected then
    ZConnection1.Connect;

  // Siapkan query untuk insert data
  ZQuery1.SQL.Text := 'INSERT INTO kustomer (nik, nama, telp, email, alamat, member) ' +
                      'VALUES (:nik, :nama, :telp, :email, :alamat, :member)';

  // Set nilai parameter dari input user
  ZQuery1.Params.ParamByName('nik').AsString := EdtNik.Text;
  ZQuery1.Params.ParamByName('nama').AsString := EdtNama.Text;
  ZQuery1.Params.ParamByName('telp').AsString := EdtTelp.Text;
  ZQuery1.Params.ParamByName('email').AsString := EdtEmail.Text;
  ZQuery1.Params.ParamByName('alamat').AsString := EdtAlamat.Text;
  ZQuery1.Params.ParamByName('member').AsString := cbb1.Text;

  // Eksekusi query
  try
    ZQuery1.ExecSQL;
    ShowMessage('Data berhasil disimpan!');
  except
    on E: Exception do
      ShowMessage('Error: ' + E.Message);
  end;
end;
procedure TForm1.btn3Click(Sender: TObject);
begin
 // Pastikan koneksi terhubung
  if not ZConnection1.Connected then
    ZConnection1.Connect;

  // Siapkan query untuk update data
  ZQuery1.SQL.Text := 'UPDATE kustomer SET nik = :nik, nama = :nama, telp = :telp, email = :email, alamat = :alamat, member = :member ' +
                      'WHERE id = :id';

  // Set nilai parameter dari input user
  ZQuery1.Params.ParamByName('nik').AsString := EdtNik.Text;
  ZQuery1.Params.ParamByName('nama').AsString := EdtNama.Text;
  ZQuery1.Params.ParamByName('telp').AsString := EdtTelp.Text;
  ZQuery1.Params.ParamByName('email').AsString := EdtEmail.Text;
  ZQuery1.Params.ParamByName('alamat').AsString := EdtAlamat.Text;
  ZQuery1.Params.ParamByName('member').AsString := Cbb1.Text;

  // Eksekusi query
  try
    ZQuery1.ExecSQL;
    ShowMessage('Data berhasil diperbarui!');
  except
    on E: Exception do
      ShowMessage('Error: ' + E.Message);
  end;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
 // Pastikan koneksi terhubung
  if not ZConnection1.Connected then
    ZConnection1.Connect;
    
 zquery1.SQL.Clear;
zquery1.SQL.Add('HAPUS from kustomer where id="''"');
zquery1.ExecSQL;
edtNik.Clear;
edtNama.Clear;
edtEmail.Clear;
edtTelp.Clear;
edtAlamat.Clear;
zquery1.SQL.Clear;
zquery1.SQL.Add('select * from kustomer');
zquery1.Open;
ShowMessage('Data satuan berhasil dihapus!');
zquery1.Refresh;
end;
procedure TForm1.btn5Click(Sender: TObject);
begin
edtNik.Clear;
edtNama.Clear;
edtEmail.Clear;
edtTelp.Clear;
edtAlamat.Clear;
end;

end.

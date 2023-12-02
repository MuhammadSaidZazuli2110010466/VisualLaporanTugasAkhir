unit DetailTiket;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids;

type
  TForm5 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edt2: TEdit;
    cbb1: TComboBox;
    lbl3: TLabel;
    b1: TButton;
    b2: TButton;
    b3: TButton;
    b4: TButton;
    b5: TButton;
    b6: TButton;
    ds1: TDataSource;
    con1: TZConnection;
    zqry1: TZQuery;
    frxdbdtst1: TfrxDBDataset;
    frxrprt1: TfrxReport;
    zqry2: TZQuery;
    dg1: TDBGrid;
    cbb2: TComboBox;
    zqry3: TZQuery;
    procedure b1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
    procedure b4Click(Sender: TObject);
    procedure b5Click(Sender: TObject);
    procedure posisiawal;
    procedure editenable;
    procedure editbersih;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
     id: string;
implementation

{$R *.dfm}

procedure TForm5.b1Click(Sender: TObject);
begin
editbersih;
editenable;

b1.Enabled:= false;
b2.Enabled:= True;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= True;
end;

procedure TForm5.b2Click(Sender: TObject);
begin
if (cbb2.Text= '')or (cbb1.Text ='')or(edt2.Text= '')then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
if (zqry1.Locate('nomor_kursi',cbb1.Text,[])) and (zqry1.Locate('harga_tiket',edt2.Text,[])) then
begin
ShowMessage('DATA KELAS SUDAH DIGUNAKAN');
posisiawal;
end else
begin
//simpan
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into tabel_detail_tiket values (null,"'+cbb2.Text+'","'+cbb1.Text+'","'+edt2.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_detail_tiket');
zqry1.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;

end;
end;

procedure TForm5.b3Click(Sender: TObject);
begin

begin
if (cbb2.Text= '')or (cbb1.Text ='')or(edt2.Text= '')then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (cbb2.Text = zqry1.Fields[1].AsString) and (cbb1.Text = zqry1.Fields[2].AsString) and (edt2.Text = zqry1.Fields[3].AsString)then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawal;
end else
begin
id:=dg1.DataSource.DataSet.FieldByName('id_bus').AsString;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
zqry1.SQL.Clear;
zqry1.SQL.Add('Update tabel_detail_tiket set id_bus= "'+cbb2.Text+'",nomor_kursi="'+cbb1.Text+'",harga_tiket="'+edt2.Text+'" where id_tiket="'+id+'"');
zqry1. ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_detail_tiket');
zqry1.Open;

end;
end;
end;

procedure TForm5.b4Click(Sender: TObject);
begin
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dg1.DataSource.DataSet.FieldByName('id_bus').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from tabel_detail_tiket where id_tiket="'+id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_detail_tiket');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');

end;
end;
end;

procedure TForm5.b5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm5.posisiawal;
begin
cbb2.Enabled:= False;
cbb1.Enabled:= False;
edt2.Enabled:= False;

b1.Enabled:= True;
b2.Enabled:= False;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= False;
end;

procedure TForm5.editenable;
begin
cbb2.Enabled:= True;
cbb1.Enabled:= True;
edt2.Enabled:= True;

end;

procedure TForm5.editbersih;
begin
cbb2.Text:= '';
cbb1.Text:= '';
edt2.Clear;
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
zqry2.First;
while not zqry2.Eof do
begin
  cbb1.items.add(zqry2.fieldbyname('nomer_kursi').asstring);
  zqry2.Next;
end;
zqry3.First;
while not zqry3.Eof do
begin
  cbb2.items.add(zqry3.fieldbyname('id_tiket').asstring);
  zqry3.Next;
end;
end;
procedure TForm5.FormShow(Sender: TObject);
begin
posisiawal;
end;

end.


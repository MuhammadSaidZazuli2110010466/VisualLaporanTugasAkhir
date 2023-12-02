unit Bus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frxClass, frxDBSet, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, StdCtrls;

type
  TForm6 = class(TForm)
    lbl2: TLabel;
    lbl3: TLabel;
    b1: TButton;
    edt1: TEdit;
    cbb1: TComboBox;
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
    edt2: TEdit;
    lbl4: TLabel;
    procedure b1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
    procedure b4Click(Sender: TObject);
    procedure b5Click(Sender: TObject);
    procedure posisiawal;
    procedure editbersih;
    procedure editenable;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dg1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
   id: string;
implementation

{$R *.dfm}

procedure TForm6.b1Click(Sender: TObject);
begin
editbersih;
editenable;

b1.Enabled:= false;
b2.Enabled:= True;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= True;
end;

procedure TForm6.b2Click(Sender: TObject);
begin
if (edt1.Text= '')or(cbb1.Text= '')or (edt2.Text ='')then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
if (zqry1.Locate('kelas_bus',edt1.Text,[])) and (zqry1.Locate('harga_tiket',cbb1.Text,[])) then
begin
ShowMessage('DATA KELAS SUDAH DIGUNAKAN');
posisiawal;
end else
begin
//simpan
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into tabel_bus values (null,"'+edt1.Text+'","'+cbb1.Text+'","'+edt2.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_bus');
zqry1.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;

end;
end;

procedure TForm6.b3Click(Sender: TObject);
begin

begin
if (edt1.Text= '')or(cbb1.Text= '')or(edt2.Text= '')then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (cbb1.Text = zqry1.Fields[1].AsString) and (edt1.Text = zqry1.Fields[2].AsString)then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawal;
end else
begin
id:=dg1.DataSource.DataSet.FieldByName('kelas_bus').AsString;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
zqry1.SQL.Clear;
zqry1.SQL.Add('Update tabel_bus set harga_tiket= "'+cbb1.Text+'",nama_supir="'+edt2.Text+'" where kelas_bus="'+id+'"');
zqry1. ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_bus');
zqry1.Open;

end;
end;
end;

procedure TForm6.b4Click(Sender: TObject);
begin
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dg1.DataSource.DataSet.FieldByName('kelas_bus').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from tabel_bus where kelas_bus="'+id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_bus');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');

end;
end;
end;

procedure TForm6.b5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm6.posisiawal;
begin

cbb1.Enabled:= False;
edt2.Enabled:= False;
edt1.Enabled:= False;
b1.Enabled:= True;
b2.Enabled:= False;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= False;
end;

procedure TForm6.editbersih;
begin

cbb1.Text:= '';
edt1.Clear;
edt2.Clear;

end;

procedure TForm6.editenable;
begin

cbb1.Enabled:= True;
edt2.Enabled:= True;
edt1.Enabled:= True;
end;

procedure TForm6.FormCreate(Sender: TObject);
begin
  posisiawal;
zqry2.First;
while not zqry2.Eof do
begin
  cbb1.items.add(zqry2.fieldbyname('harga_tiket').asstring);
  zqry2.Next;
end;
end;


procedure TForm6.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm6.dg1CellClick(Column: TColumn);
begin
editenable;

b1.Enabled:= true;
b2.Enabled:= False;
b3.Enabled:= True;
b4.Enabled:= True;
b5.Enabled:= True;

id:=zqry1.Fields[0].AsString;
edt1.Text:= zqry1.FieldList[1].AsString;
cbb1.Text:= zqry1.FieldList[2].AsString;
edt2.Text:= zqry1.FieldList[3].AsString;
end;

end.

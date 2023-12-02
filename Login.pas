unit Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZDataset, ZAbstractConnection,
  ZConnection, StdCtrls;

type
  TForm1 = class(TForm)
    edt1: TEdit;
    edt2: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    b1: TButton;
    b2: TButton;
    lbl3: TLabel;
    con1: TZConnection;
    zquery1: TZReadOnlyQuery;
    procedure b1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses costumer, berhasil;

{$R *.dfm}

procedure TForm1.b1Click(Sender: TObject);
begin
with zquery1 do
begin
  SQL.Clear;
  SQL.Add('select * from tabel_user where username='+QuotedStr(edt1.Text));
  Open;
end;
//jika tidak ditemukan maka muncul pesan dibawah ini

if zquery1.RecordCount=0 then
Application.MessageBox('Maaf User name yang kalian masukan itu Salah!!!','informasi',MB_OK or MB_ICONINFORMATION)
else
begin
if zquery1.FieldByName('password').AsString <> edt2.Text then
Application.MessageBox('silakan cek password anda dengan benar!!!','error',MB_OK or MB_ICONERROR)else
begin
Hide;
form2.Show;
MessageDlg('anda berhasil login',mtInformation,[mbOK],0);
begin
  hide;
  form2.show;
end;
end;
   end;
end;

procedure TForm1.b2Click(Sender: TObject);
 var Tanya:Integer;
begin
//Keluar dari aplikasih
Tanya:=Application.MessageBox('apah anda yakin ingin keluar','confirmation',MB_YESNO + MB_ICONQUESTION);
if Tanya = 6 then
Application.Terminate;
end;
end.

end.

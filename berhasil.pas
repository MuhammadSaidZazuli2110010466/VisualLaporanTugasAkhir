unit berhasil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    lbl1: TLabel;
    b1: TButton;
    b2: TButton;
    b3: TButton;
    b4: TButton;
    b5: TButton;
    procedure b1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
    procedure b4Click(Sender: TObject);
    procedure b5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Costumer, Tiket, DetailTiket, Bus, Berangkat;

{$R *.dfm}

procedure TForm2.b1Click(Sender: TObject);
begin
form3.showmodal;
end;

procedure TForm2.b2Click(Sender: TObject);
begin
form4.showmodal;
end;

procedure TForm2.b3Click(Sender: TObject);
begin
form5.showmodal;
end;

procedure TForm2.b4Click(Sender: TObject);
begin
form6.showmodal;
end;

procedure TForm2.b5Click(Sender: TObject);
begin
form7.showmodal;
end;

end.

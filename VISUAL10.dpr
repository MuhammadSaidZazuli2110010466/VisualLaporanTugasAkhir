program VISUAL10;

uses
  Forms,
  Login in 'Login.pas' {Form1},
  berhasil in 'berhasil.pas' {Form2},
  Costumer in 'Costumer.pas' {Form3},
  Tiket in 'Tiket.pas' {Form4},
  DetailTiket in 'DetailTiket.pas' {Form5},
  Bus in 'Bus.pas' {Form6},
  Berangkat in 'Berangkat.pas' {Form7};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.

program VISUAL10;

uses
  Forms,
  Login in 'Login.pas' {Form1},
  berhasil in 'berhasil.pas' {Form2},
  Costumer in 'Costumer.pas' {Form3},
  Tiket in 'Tiket.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.

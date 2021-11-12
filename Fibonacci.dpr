program Fibonacci;

uses
  Vcl.Forms,
  Formulario in 'Formulario.pas' {FrmFibonacci};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmFibonacci, FrmFibonacci);
  Application.Run;
end.

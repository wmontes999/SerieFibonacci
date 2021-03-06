unit Formulario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmFibonacci = class(TForm)
    LblNombre: TLabel;
    TxtValor: TEdit;
    BtnGenerar: TButton;
    LblResultado: TLabel;
    procedure BtnGenerarClick(Sender: TObject);
    function Fibonacci(Num:integer):integer;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFibonacci: TFrmFibonacci;

implementation

{$R *.dfm}

function TFrmFibonacci.Fibonacci(Num:integer):integer;
 begin
  if (Num = 1) then Fibonacci:=1
  else
  if (Num = 2) then Fibonacci:=1
  else
   Fibonacci := Fibonacci(Num - 1) + Fibonacci(Num - 2);
 end;

procedure TFrmFibonacci.BtnGenerarClick(Sender: TObject);
var
 Contador:Integer;
 Valor:Integer;
 CadComa,StrValor : string;
begin
  Valor := strtoint(TxtValor.Text);
  if (Valor < 1) or (Valor > 20) then Showmessage('Lo valores deben ser entre 1 y 20') else
   begin
   StrValor:= 'Valores: ';
   for Contador := 1 to Valor do
    begin
     CadComa := ' ,';
     if (Contador = Valor) then
     CadComa := '';
     StrValor := StrValor + inttostr(Fibonacci(Contador)) + CadComa;
    end;
    LblResultado.Caption := StrValor;
  end;
 end;
end.

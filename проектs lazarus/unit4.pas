unit unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  a, b, h, x, y: Double;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  Memo1.Clear;
  a:= StrToFloat(Edit1.Text);
  b:= StrToFloat(Edit2.Text);
  h:= StrToFloat(Edit3.Text);

  x:=a;
  while x <= b do
  begin
       y:= x * x;
       Memo1.Lines.Add(FloatToStr(x) + ':' + floatToStr(y));
       x:= x+h;
  end;
end;

end.


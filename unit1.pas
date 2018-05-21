unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  stav:integer;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Timer1Timer(Sender: TObject);
begin

  case stav of
  0:begin
    shape1.Brush.color:=clred;
    shape2.Brush.color:=clsilver;
    shape3.Brush.color:=clsilver;
  end;
  1:begin
    shape1.Brush.color:=clred;
    shape2.Brush.color:=clyellow;
    shape3.Brush.color:=clsilver;
  end;
  2: begin
    shape1.Brush.color:=clsilver;
    shape2.Brush.color:=clsilver;
    shape3.Brush.color:=clgreen;
  end;

  3:begin
    shape1.Brush.color:=clsilver;
    shape2.Brush.color:=clyellow;
    shape3.Brush.color:=clsilver;
  end;

  end;
  stav:=stav+1;
  stav:=stav mod 4;
end;
initialization
stav:=0;
end.


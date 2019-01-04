unit TestCase1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, fpcunit, testutils, testregistry;

type

  TTestCase1= class(TTestCase)
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure Test2;
    procedure Test1;
  end;

implementation

procedure TTestCase1.Test1;
Var
   a, b, c: integer;
begin
  a:=1;
  b:=2;
  c:=a+b;
  AssertEquals(c, 3);

  Fail('Напишите ваш тест');
end;
    procedure TTestCase1.Test2;
Var
   a, b, c: integer;
begin
  a:=1;
  b:=2;
  c:=a+b;
  AssertEquals(c, 2);

  Fail('Напишите ваш тест');
end;

procedure TTestCase1.SetUp;
begin

end;

procedure TTestCase1.TearDown;
begin

end;

initialization

  RegisterTest(TTestCase1);
end.


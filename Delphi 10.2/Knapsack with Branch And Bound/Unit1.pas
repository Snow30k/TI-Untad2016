unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Memo1: TMemo;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    w1: TEdit;
    p1: TEdit;
    p2: TEdit;
    w2: TEdit;
    p3: TEdit;
    w3: TEdit;
    p4: TEdit;
    w4: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure insertKnapsack;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

const inf = 9999;
var
  n: Integer = 4;
  knapsack: array of array[0..1] of Integer;
  m: Integer;
  solution, newSolution: array of Integer;
  upper, cost: Integer;
  newUpper, newCost, fixWeight, weight: Integer;

procedure TForm1.insertKnapsack;
var
  i: Integer;
  j: Integer;
  editW, editP: TEdit;
begin
  for i := 0 to n-1 do
  begin
    editW := TEdit(FindComponent('w'+IntToStr(i+1)));
    editP := TEdit(FindComponent('p'+IntToStr(i+1)));
    knapsack[i][0] := StrToInt(editW.Text);
    knapsack[i][1] := StrToInt(editP.Text);
  end;
end;

procedure findUpper(x: Integer);
var
  i, diffM, diffC: Integer;

begin
  newUpper := 0;
  newCost := 0;
  fixWeight := 0;
  weight := 0;

  for i := 0 to n-1 do
  begin
    newSolution[i] := 0;
    if (x = i) or (fixWeight >= m) then
      Continue;
    weight := weight + knapsack[i][0];
    if weight <= m then
    begin
      newUpper := newUpper + knapsack[i][1];
      newCost := newCost + knapsack[i][1];
      fixWeight := fixWeight + knapsack[i][0];
    end
    else
    begin
      diffM := m - fixWeight;
      fixWeight := fixWeight + diffM;
      diffC := round((knapsack[i][0] / knapsack[i][1])*diffM);
      if diffC < 1 then
        Continue;
      newCost := newCost + diffC;
    end;
    newSolution[i] := 1;
  end;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
var
  i, j: Integer;
  toStr: string;
begin
  // Tahap Setup
  SetLength(knapsack, n);
  SetLength(solution, n);
  SetLength(newSolution, n);
  insertKnapsack;// Memasukan Nilai dari Edit Ke dalam matrix
  m := StrToInt(Edit1.Text);
  upper := inf;
  cost := inf;

  findUpper(-1);
  upper := newUpper;
  cost := newCost;
  for i := 0 to n-1 do
  begin
    findUpper(i);
    if newCost > cost then
    begin
      upper := newUpper;
      cost := newCost;
      for j := 0 to Length(solution)-1 do
        solution[j] := newSolution[j];
    end;
  end;

  toStr := '';
  weight := 0;

  Memo1.Lines.Append('Solution');
  for j := 0 to Length(solution)-1 do
  begin
    toStr := toStr + IntToStr(solution[j]);
    if solution[j] = 1 then
    begin
      Memo1.Lines.Append('Item'+IntToStr(j+1));
      weight := weight + knapsack[j][0];
    end;
  end;
  Memo1.Lines.Append('');
  Memo1.Lines.Append('Total Profit : '+IntToStr(upper));
  Memo1.Lines.Append('Total Weigth : '+IntToStr(weight));
  Memo1.Lines.Append('');
  Memo1.Lines.Append(toStr);
end;

end.

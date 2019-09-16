unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, StrUtils;

type
  TfrmPrincipal = class(TForm)
    pnlFundo: TPanel;
    pnlVisor: TPanel;
    edtVisor: TEdit;
    btn_07: TButton;
    btn_08: TButton;
    btn_09: TButton;
    btn_dv: TButton;
    btn_mt: TButton;
    btn_06: TButton;
    btn_05: TButton;
    btn_04: TButton;
    btn_sb: TButton;
    btn_03: TButton;
    btn_02: TButton;
    btn_01: TButton;
    btn_sm: TButton;
    btn_limpa: TButton;
    btn_00: TButton;
    btn_vg: TButton;
    btn_ig: TButton;
    procedure ValoresClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    var
      b_virgula : boolean;
      vl1,vl2,c_operador : string;
    procedure pInsereValor(Valor: string);
    procedure pLimpa(b_visor: boolean = true);
    function fCalcula : double;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

function TfrmPrincipal.fCalcula : double;
var
  fValor1 , fValor2 : double;
begin
  Result := 0;
  fValor1 := StrToFloat(vl1);
  fValor2 := StrToFloat(vl2);

  if(c_operador = '/') then
    if(fValor2 = 0) then
    begin
      pLimpa;
      raise Exception.Create('Impossível dividir por zero!')
    end
    else
      Result := fValor1 / fValor2
  else if(c_operador = '*') then
    Result := fValor1 * fValor2
  else if(c_operador = '-') then
    Result := fValor1 - fValor2
  else if(c_operador = '+') then
    Result := fValor1 + fValor2;

  pLimpa(False);
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  pLimpa;
end;

procedure TfrmPrincipal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', ',' , '+', '=', '/', '*', '-', 'C', 'c']) then
    Key := #0
  else
  begin
    pInsereValor(Key);
    Key := #0
  end;
end;

procedure TfrmPrincipal.pInsereValor(Valor: string);
begin
  if (pos(Valor,'/*-+C=') > 0) then
  begin
    if(vl1.IsEmpty) then
    begin
      if(Uppercase(Valor) = 'C')  then
      begin
         pLimpa;
         exit;
      end;
      c_operador := Valor;
      vl1 := edtVisor.Text;
      edtVisor.Text := '';
      b_virgula := false;
    end
    else if Valor = '=' then
    begin
      vl2 := edtVisor.Text;
      edtVisor.Text := FormatFloat('#.###,##',fCalcula)
    end;
  end
  else
  begin
    if((b_virgula) and (Valor = ',')) then
      exit;

    if (edtVisor.Text = '') then
    begin
      if(Valor <> ',') then
        edtVisor.Text := Valor
      else
        Exit;
    end
    else
      edtVisor.Text := edtVisor.Text + Valor;

    if(Valor = ',') then
      b_virgula := true;
  end;
end;

procedure TfrmPrincipal.pLimpa(b_visor: boolean);
begin
  vl1 := '';
  vl2 := '';
  c_operador := '';
  b_virgula := false;
  if(b_visor) then
    edtVisor.Text := '';
end;

procedure TfrmPrincipal.ValoresClick(Sender: TObject);
begin
  pInsereValor(TButton(Sender).Caption);
end;

end.

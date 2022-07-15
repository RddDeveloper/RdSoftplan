unit ufTarefa3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons, Datasnap.DBClient,
  Vcl.Grids, Vcl.DBGrids, untFrmBase;

type
  TfTarefa3 = class(TfrmBase)
    Label1: TLabel;
    dbgValores: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    edtTotal: TEdit;
    edtTotDiv: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    cdsValores  : TClientDataSet;
    dsValores   : TDataSource;
    procedure PopularRegistros;
    function SomarRegistros : string;
    function ObterDivisao   : string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTarefa3: TfTarefa3;

implementation

{$R *.dfm}

procedure TfTarefa3.BitBtn1Click(Sender: TObject);
begin
  edtTotal.Text := SomarRegistros;
end;

procedure TfTarefa3.BitBtn2Click(Sender: TObject);
begin
  edtTotDiv.Text := ObterDivisao;
end;

procedure TfTarefa3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(fTarefa3) then
  begin
    Action := caFree;
    fTarefa3 := nil;
  end;
end;

procedure TfTarefa3.FormCreate(Sender: TObject);
begin
  cdsValores  := TClientDataSet.Create(Self);
  dsValores   := TDataSource.Create(Self);
  dsValores.DataSet := cdsValores;
  cdsValores.FieldDefs.Add('IdProjeto', ftInteger);
  cdsValores.FieldDefs.Add('NomeProjeto',ftString, 30);
  cdsValores.FieldDefs.Add('Valor', ftCurrency);
  cdsValores.CreateDataSet;
  cdsValores.Open;
  dbgValores.DataSource := dsValores;
  edtTotal.Text   := '0,00';
  edtTotDiv.Text  := '0,00';

  PopularRegistros;
end;

procedure TfTarefa3.FormDestroy(Sender: TObject);
begin
  cdsValores.Close;
  cdsValores.Free;
  dsValores.Free;
end;

function TfTarefa3.ObterDivisao: string;
var
  fDivisor, fDividendo, fSoma : Currency;
begin
  fDivisor  := 0;
  fDividendo:= 0;
  fSoma     := 0;
  cdsValores.DisableControls;
  try
    cdsValores.First;
    while not cdsValores.Eof do
    begin
      fDivisor  := cdsValores.Fields.Fields[2].AsCurrency;

      cdsValores.Next;

      if cdsValores.Eof then
        Continue;

      fDividendo:= cdsValores.Fields.Fields[2].AsCurrency;

      fSoma := fSoma + (fDividendo / fDivisor);
    end;
  finally
    cdsValores.EnableControls;
    Result := FormatFloat('#0.00', fSoma);
  end;
end;

procedure TfTarefa3.PopularRegistros;
var
  i : Integer;
begin
  Randomize;
  cdsValores.EmptyDataSet;
  for I := 1 to 10 do
  begin
    cdsValores.Append;
    cdsValores.Fields.Fields[0].AsInteger := i;
    cdsValores.Fields.Fields[1].AsString  := 'Projeto '+i.ToString;
    cdsValores.Fields.Fields[2].AsCurrency:= Random(100);  //(i * 10);
    cdsValores.Post;
  end;
end;

function TfTarefa3.SomarRegistros: string;
var
  fValor : Currency;
begin
  fValor := 0;
  cdsValores.DisableControls;
  try
    cdsValores.First;
    while not cdsValores.Eof do
    begin
      fValor := fValor + cdsValores.Fields.Fields[2].AsCurrency;
      cdsValores.Next;
    end;
  finally
    cdsValores.EnableControls;
    Result := FormatFloat('#0.00', fValor);
  end;
end;

end.

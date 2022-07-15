unit ufTarefa1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untFrmBase, Vcl.StdCtrls, Vcl.Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uspQuery;

type
  TfTarefa1 = class(TfrmBase)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    mColunas: TMemo;
    mTabelas: TMemo;
    mCondicoes: TMemo;
    btnGeraSql: TBitBtn;
    mSql: TMemo;
    spSql: TspQuery;
    Label4: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnGeraSqlClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTarefa1: TfTarefa1;

implementation

{$R *.dfm}

procedure TfTarefa1.btnGeraSqlClick(Sender: TObject);
var
  i : Integer;
  sSql : string;
begin
  sSql := EmptyStr;
  spSql.spColunas.AddStrings(mColunas.Lines);
  spSql.spTabela.AddStrings(mTabelas.Lines);
  spSql.spCondicoes.AddStrings(mCondicoes.Lines);

  spSql.GeraSql;

  mSql.Lines.Clear;
  for I := 0 to Pred(spSql.sql.Count) do
    sSql := sSql + concat(spSql.sql.Strings[i], ' ');
    mSql.Lines.Add(sSql);
end;

procedure TfTarefa1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(fTarefa1) then
  begin
    Action := cafree;
    fTarefa1 := nil;
  end;
end;

procedure TfTarefa1.FormCreate(Sender: TObject);
begin
  mTabelas.Lines.Clear;
  mColunas.Lines.Clear;
  mCondicoes.Lines.Clear;
  mSql.Lines.Clear;
end;

end.

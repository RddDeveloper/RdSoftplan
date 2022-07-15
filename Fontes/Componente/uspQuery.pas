unit uspQuery;

interface

uses
  Data.DB, System.Classes, System.SysUtils, Vcl.Dialogs,
  FireDAC.Comp.Client, FireDAC.DApt;

type
  TspQuery = class(TFDQuery)
  private
    FspCondicoes: TStringList;
    FspColunas: TStringList;
    FspTabela: TStringList;
    Fsql: TStringList;
    procedure Setsql(const Value: TStringList);
    procedure SetspColunas(const Value: TStringList);
    procedure SetspCondicoes(const Value: TStringList);
    procedure SetspTabela(const Value: TStringList);
  published
    property sql : TStringList read Fsql write Setsql;
    property spCondicoes: TStringList read FspCondicoes write SetspCondicoes;
    property spColunas: TStringList read FspColunas write SetspColunas;
    property spTabela: TStringList read FspTabela write SetspTabela;
  public
    procedure GeraSql;

    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

  end;

implementation

{ TspQuery }

constructor TspQuery.Create(AOwner: TComponent);
begin
  inherited;
  FspTabela   := TStringList.Create;
  FspColunas  := TStringList.Create;
  FspCondicoes:= TStringList.Create;
  Fsql        := TStringList.Create;
end;

destructor TspQuery.Destroy;
begin
  Fsql.Free;
  FspTabela.Free;
  FspColunas.Free;
  FspCondicoes.Free;
  inherited;
end;

procedure TspQuery.GeraSql;
var
  i : Integer;
begin
  Fsql.Clear;
  try
    try
      if FspTabela.Count > 1 then
        raise Exception.Create('Não é permitido mais de uma tabela na consulta');
      if FspTabela.Count <= 0 then
        raise Exception.Create('Não é permitido consulta sem a informação de tabela');
      if FspColunas.Count <= 0 then
        raise Exception.Create('Não é permitido consulta sem a informação dos campos');

      Fsql.Add('SELECT ');
      for I := 0 to Pred(FspColunas.Count) do
      begin
        if i = Pred(FspColunas.Count) then
          Fsql.Add(FspColunas.Strings[i])
        else
          Fsql.Add(Concat(FspColunas.Strings[i] ,','));
      end;
      Fsql.Add(' FROM ');
      Fsql.Add(FspTabela.Strings[0]);

      if FspCondicoes.Count >= 1 then begin
        Fsql.Add('WHERE ');
        for I := 0 to Pred(FspCondicoes.Count) do
        begin
          Fsql.Add(FspCondicoes.Strings[i]);
          if I < Pred(FspCondicoes.Count) then
            Fsql.Add(' AND ');
        end;
      end;
    except on e:Exception do
      begin
        MessageDlg(e.message,  mtError, [mbOK], 0);
      end;
    end;
  finally
    FspTabela.Clear;
    FspColunas.Clear;
    FspCondicoes.Clear;
  end;
end;

procedure TspQuery.SetspColunas(const Value: TStringList);
begin
  FspColunas := Value;
end;

procedure TspQuery.SetspCondicoes(const Value: TStringList);
begin
  FspCondicoes := Value;
end;

procedure TspQuery.SetspTabela(const Value: TStringList);
begin
  FspTabela := Value;
end;

procedure TspQuery.Setsql(const Value: TStringList);
begin
  Fsql := Value;
end;

end.

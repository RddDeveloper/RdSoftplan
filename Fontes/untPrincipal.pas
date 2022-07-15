unit untPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    arefas1: TMenuItem;
    arefa11: TMenuItem;
    arefa12: TMenuItem;
    arefa31: TMenuItem;
    StatusBar1: TStatusBar;
    procedure arefa11Click(Sender: TObject);
    procedure arefa31Click(Sender: TObject);
    procedure arefa12Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses ufTarefa1, ufTarefa3, ufTarefa2;

procedure TfrmPrincipal.arefa11Click(Sender: TObject);
begin
  if not Assigned(fTarefa1) then
    Application.CreateForm(TfTarefa1, fTarefa1);
  fTarefa1.Show;
end;

procedure TfrmPrincipal.arefa12Click(Sender: TObject);
begin
  if not Assigned(fTarefa2) then
    Application.CreateForm(TfTarefa2, fTarefa2);
  fTarefa2.Show;
end;

procedure TfrmPrincipal.arefa31Click(Sender: TObject);
begin
  if not Assigned(fTarefa3) then
    Application.CreateForm(TfTarefa3, fTarefa3);
  fTarefa3.Show;
end;

end.

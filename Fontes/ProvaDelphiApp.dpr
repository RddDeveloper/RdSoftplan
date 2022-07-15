program ProvaDelphiApp;

uses
  Vcl.Forms,
  untPrincipal in 'untPrincipal.pas' {frmPrincipal},
  uspQuery in 'Componente\uspQuery.pas',
  untFrmBase in 'untFrmBase.pas' {frmBase},
  ufTarefa1 in 'ufTarefa1.pas' {fTarefa1},
  ufTarefa3 in 'ufTarefa3.pas' {fTarefa3},
  ufTarefa2 in 'ufTarefa2.pas' {fTarefa2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.

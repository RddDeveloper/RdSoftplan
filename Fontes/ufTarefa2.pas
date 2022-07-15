unit ufTarefa2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untFrmBase, Vcl.StdCtrls, Vcl.NumberBox,
  Vcl.ComCtrls;

type
  TfTarefa2 = class(TfrmBase)
    lbProcesso1: TLabel;
    lbProcesso2: TLabel;
    Button1: TButton;
    ProgressBar1: TProgressBar;
    ProgressBar2: TProgressBar;
    nbTempo1: TNumberBox;
    nbTempo2: TNumberBox;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    procedure Processo1(pTempo : integer);
    procedure Processo2(pTempo : Integer);
    procedure ThreadEnd(Sender: TObject);
//    procedure ProcessarBarras(pIdBarra, pTempo : Integer);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTarefa2: TfTarefa2;

implementation

{$R *.dfm}

procedure TfTarefa2.Button1Click(Sender: TObject);
begin
   Processo1(nbTempo1.ValueInt);

   Processo2(nbTempo2.ValueInt);
end;

procedure TfTarefa2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(fTarefa2) then
  begin
    Action := caFree;
    fTarefa2 := nil;
  end;
end;

procedure TfTarefa2.Processo1(pTempo : integer);
var
   vT : TThread;
begin
   vt := TThread.CreateAnonymousThread(
      procedure
      var
         i : Integer;
      begin
         for i := 0 to 100 do
         begin
            Sleep(pTempo);

            TThread.Synchronize(nil, procedure
               begin
                  ProgressBar1.Position := i;
                  lbProcesso1.Caption := 'Contador: '+i.ToString;
               end
            )
         end;
         lbProcesso1.Caption := 'Finalizou processo 1';
      end
   );
   vT.OnTerminate := ThreadEnd;
   vT.Start;
end;

procedure TfTarefa2.Processo2(pTempo : Integer);
var
   vT : TThread;
begin
   vt := TThread.CreateAnonymousThread(
      procedure
      var
         i : Integer;
      begin
         for i := 0 to 100 do
         begin
            Sleep(pTempo);

            TThread.Synchronize(nil, procedure
               begin
                  ProgressBar2.Position := i;
                  lbProcesso2.Caption := 'Contador: '+i.ToString;
               end
            )
         end;
         lbProcesso2.Caption := 'Finalizou processo 2';
      end
   );
   vT.OnTerminate := ThreadEnd;
   vT.Start;
end;

procedure TfTarefa2.ThreadEnd(Sender : TObject);
begin
   if Assigned(TThread(Sender).FatalException) then
      ShowMessage(Exception(TThread(Sender).FatalException).Message);
end;

end.

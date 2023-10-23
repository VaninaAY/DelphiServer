unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin,
  System.Win.ScktComp, System.Math, System.NetEncoding, IdCoderMIME, thread;

type
  TfrmMain = class(TForm)
    edtCountFlows: TSpinEdit;
    btnStart: TButton;
    btnStop: TButton;
    btnSend: TButton;
    ClientSocket1: TClientSocket;
    btnStopSend: TButton;
    Label2: TLabel;
    Label3: TLabel;
    procedure btnStartClick(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
    procedure btnSendClick(Sender: TObject);
    procedure btnStopSendClick(Sender: TObject);
  private
    MyT : array of TMyThread;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}



procedure TfrmMain.btnStartClick(Sender: TObject);
begin
  ClientSocket1.Host := '127.0.0.1';
  ClientSocket1.Port := 11111;
  ClientSocket1.Active := True;
end;

procedure TfrmMain.btnStopClick(Sender: TObject);
begin
  ClientSocket1.Active := False;
end;


procedure TfrmMain.btnStopSendClick(Sender: TObject);
var i: integer;
begin
  for i:=0 to edtCountFlows.Value - 1 do
  begin
     MyT[i].Terminate;
  end;

  edtCountFlows.ReadOnly := False;
end;

procedure TfrmMain.btnSendClick(Sender: TObject);
var i: integer;
begin
  for i:=0 to edtCountFlows.Value - 1 do
  begin

    SetLength(MyT, i + 1);
    MyT[i] := TMyThread.Create(true);
    MyT[i].Priority := tpNormal;
    MyT[i].FreeOnTerminate :=  True;
    MyT[i].Resume;

  end;
  edtCountFlows.ReadOnly := True;
end;

end.

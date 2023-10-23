unit thread;

interface

uses
  System.Classes;

type
  TMyThread = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
    procedure SendData;
  public
    base640: string;
    Data: string;
  end;

implementation
uses uMain,  System.NetEncoding, System.Math, Winapi.Windows, Winapi.Messages, System.SysUtils,
  System.Variants, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin,
  System.Win.ScktComp, IdCoderMIME;



procedure TMyThread.Execute;
var
  DataLen: Integer;
  Encoder: TBase64Encoding;

  bytes: TBytes;
  byte_str :  TBytes ;
begin
while not Terminated do
  begin
    DataLen := RandomRange(500, 5000) ;
    SetLength(Data, DataLen);
    Data := '';
    for var i := 0 to DataLen - 1 do
      Data := Data + IntToStr(Random(10));
    Encoder := TBase64Encoding.Create;
    base640 := TNetEncoding.Base64.Encode(Data);
    Synchronize(SendData);
    Sleep(Random(1000) + 1000);
    Application.ProcessMessages;

  end;
end;

procedure TMyThread.SendData;
var
  Encoder: TBase64Encoding;
begin
   frmMain.ClientSocket1.Socket.SendText(base640);
   Sleep(10)
end;

end.

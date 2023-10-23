program Server_fin;

uses
  Vcl.Forms,
  Server_f in 'Server_f.pas' {Server};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TServer, Server);
  Application.Run;
end.

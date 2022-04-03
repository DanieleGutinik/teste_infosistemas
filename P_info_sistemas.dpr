program P_info_sistemas;

uses
  Forms,
  U_info_sistemas in 'U_info_sistemas.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

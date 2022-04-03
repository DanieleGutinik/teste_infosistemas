unit U_info_sistemas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, DB, DBClient, Mask;

type
  TForm1 = class(TForm)
    CDS: TClientDataSet;
    DS: TDataSource;
    strngfldCDSNOME: TStringField;
    strngfldCDSIDENTIDADE: TStringField;
    strngfldCDSCPF: TStringField;
    strngfldCDSTELEFONE: TStringField;
    strngfldCDSEMAIL: TStringField;
    strngfldCDSRUA: TStringField;
    strngfldCDSCEP: TStringField;
    intgrfldCDSNUMERO: TIntegerField;
    strngfldCDSCOMPLEMENTO: TStringField;
    strngfldCDSBAIRRO: TStringField;
    strngfldCDSCIDADE: TStringField;
    strngfldCDSUF: TStringField;
    strngfldCDSPAIS: TStringField;
    pnl_cliente: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    Panel1: TPanel;
    lbl13: TLabel;
    lbl12: TLabel;
    lbl8: TLabel;
    lbl6: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl7: TLabel;
    btn_novo: TButton;
    btnSalvar: TButton;
    btn_fechar: TButton;
    lbl_endereco: TLabel;
    procedure btn_novoClick(Sender: TObject);
    procedure btn_fecharClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.btnSalvarClick(Sender: TObject);
var
varCdsClone: TClientDataSet;
varI: Integer;
begin
  //CRIA UMA VARIAVEL DE TABELA TEMPORARIA NA MEMÓRIA,
  //PARA RECEBER OS DADOS DO RESISTRO A SER CLONADO
  varCdsClone := TClientDataSet.Create(Self);

  try
    //CLONA O REGISTRO PARA VARIAVEL CRIA ACIMA
    varCdsClone.CloneCursor(TClientDataSet(CDS),True);

    CDS.Append;

    //FAZ UM LOOP PARA PROCESSAR TODOS OS CAMPPOS DA SUA TABELA ORIGINAL.
    for varI := 0 to CDS.fieldCount - 1 do
    begin
      //VERIFICA SE O TIPO CAMPO É DO TIPO DATA, PARA QUE NÃO PEGUE VALORES
      //DE CAMPOS DO TIPO CALCULADO
      if(CDS.Fields[varI].FieldKind = fkData) then

      // DIZ QUE O CAMPO DE SUA TABELA ORIGINAL, VAI RECEBER O CAMPO DA
      //TABELA TEMPORÁRIA QUE FOI CLONADA.
      CDS.Fields[varI].Value := varCdsClone.FieldByName(CDS.Fields[varI].FieldName).Value;

    end;

  finally
    //FECHA A TABELA TEMPORÁRIA CLONADA
    varCdsClone.Close;

    // LIEBERA A VAR DA TABELA TEMPORÁRIA CLONADA DA MEMÓRIA
    varCdsClone.Free;

    //SALVA OS REGISTROS NA TABELA TEMPORÁRIA NA MEMÓRIA PARA O DISCO.
    CDS.SaveToFile('E:\Projeto_Delphi_Info_Sistemas\cliente\Cli_temp.xml');

    //CARREGA O ARQUIVO .XML, PARA MEMÓRIA.
    CDS.LoadFromFile('E:\Projeto_Delphi_Info_Sistemas\cliente\Cli_temp.xml');


  end;

end;

procedure TForm1.btn_novoClick(Sender: TObject);
begin
  //CRIA TABELA TEMPORÁRIA NA MEMÓRIA
  CDS.CreateDataSet;

  //ABRE A TABELA DEPOIS DE CRIADA
  CDS.Open;

end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TForm1.btn_fecharClick(Sender: TObject);
begin

  //APAGA TODOS OS REGISTROS DA TABELA TEMPORÁRIA NA MEMORIA.
  CDS.EmptyDataSet;

  //FECHA A TABELA TEMPORÁRIA DA MEMÓRIA
  CDS.Close;

  //FECHA O SISTEMA
  Close;
end;

end.

unit udmClientes;

interface

uses
  System.SysUtils, System.Classes, udmDatos, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Data.DB, Datasnap.DBClient, Datasnap.Provider;

type
  TdmClientes = class(TdmDatos)
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmClientes: TdmClientes;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmClientes.DataModuleCreate(Sender: TObject);
begin
  inherited;
  //
end;

initialization
  RegisterClass(TdmClientes);

end.

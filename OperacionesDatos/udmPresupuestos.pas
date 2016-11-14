unit udmPresupuestos;

interface

uses
  System.SysUtils, System.Classes, udmDatos, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Data.DB, Datasnap.DBClient, Datasnap.Provider,
  udmDetalles;

type
  TdmPresupuestos = class(TdmDetalles)
    cdsDatosID_PRESUPUESTOS: TWideStringField;
    cdsDatosFECHA: TDateTimeField;
    cdsDatosID_CLIENTES: TWideStringField;
    cdsDatosNOMBRE: TWideStringField;
    cdsDatosDIRECCION: TWideStringField;
    cdsDatosCODIGO_POSTAL: TWideStringField;
    cdsDatosCIUDAD: TWideStringField;
    cdsDatosPROVINCIA: TWideStringField;
    cdsDatosNIF: TWideStringField;
    cdsDatosCONRE: TFloatField;
    cdsDatosCONIRPF: TFloatField;
    cdsDatosSINIVA: TFloatField;
    cdsDatosPAGADO: TFloatField;
    cdsDatosDESCUENTO: TFloatField;
    cdsDatosIRPF: TFloatField;
    cdsDatosBASE_IMPONIBLE1: TFloatField;
    cdsDatosIVA1: TFloatField;
    cdsDatosRE1: TFloatField;
    cdsDatosBASE_IMPONIBLE2: TFloatField;
    cdsDatosIVA2: TFloatField;
    cdsDatosRE2: TFloatField;
    cdsDatosBASE_IMPONIBLE3: TFloatField;
    cdsDatosIVA3: TFloatField;
    cdsDatosRE3: TFloatField;
    cdsDatosID_FORMAS_PAGO: TWideStringField;
    cdsDatosNUMERO_CUENTA: TWideStringField;
    cdsDatosTOTAL: TFloatField;
    cdsDatosOBSERVACIONES: TWideMemoField;
    cdsDatosTRASPASADO: TFloatField;
    cdsDatosTARIFA: TIntegerField;
    cdsDatosID_COMERCIALES: TWideStringField;
    cdsDatosCOMISION: TFloatField;
    cdsDatosBIC: TWideStringField;
    cdsDatosTOTAL_IVA1: TFloatField;
    cdsDatosTOTAL_IVA2: TFloatField;
    cdsDatosTOTAL_IVA3: TFloatField;
    cdsDatosTOTAL_RE1: TFloatField;
    cdsDatosTOTAL_RE2: TFloatField;
    cdsDatosTOTAL_RE3: TFloatField;
    cdsDatosTOTAL_IRPF: TFloatField;
    cdsDatosTOTAL_DESCUENTO: TFloatField;
    cdsDatosTOTAL_PENDIENTE: TFloatField;
    cdsDatosID_USUARIO: TWideStringField;
    dsProductos: TDataSource;
    dspProductos: TDataSetProvider;
    cdsProductos: TClientDataSet;
    qryProductos: TZQuery;
    cdsDatosqryDetalles: TDataSetField;
    cdsDetallesID_PRESUPUESTOS_DATOS: TWideStringField;
    cdsDetallesID_PRESUPUESTOS: TWideStringField;
    cdsDetallesID_PRODUCTOS: TWideStringField;
    cdsDetallesCANTIDAD: TFloatField;
    cdsDetallesDESCRIPCION: TWideStringField;
    cdsDetallesPRECIO: TFloatField;
    cdsDetallesDESCUENTO: TFloatField;
    cdsDetallesIVA: TFloatField;
    cdsDetallesPOSICION: TFloatField;
    cdsDetallesLOTE: TWideStringField;
    cdsDetallesIMPORTE: TFloatField;
    cdsDetallesPRODUCTOS: TStringField;
    cdsDetallesSUBTOTAL: TFloatField;
    procedure cdsDetallesCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPresupuestos: TdmPresupuestos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmPresupuestos.cdsDetallesCalcFields(DataSet: TDataSet);
begin
  cdsDetallesSUBTOTAL.Value:= cdsDetallesPRECIO.Value *
    cdsDetallesCANTIDAD.Value;
end;

initialization
  RegisterClass(TdmPresupuestos);

end.

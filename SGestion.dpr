program SGestion;

uses
  Vcl.Forms,
  ufrmMain in 'ufrmMain.pas' {frmMain},
  udmBase in 'udmBase.pas' {dmBase: TDataModule},
  ufrmCatalogo in 'Compartidos\ufrmCatalogo.pas' {frmCatalogo},
  ufrmFamilias in 'Catalogos\ufrmFamilias.pas' {frmFamilias},
  ufrmBancos in 'Catalogos\ufrmBancos.pas' {frmBancos},
  ufrmProductos in 'Catalogos\ufrmProductos.pas' {frmProductos},
  udmDatos in 'Compartidos\udmDatos.pas' {dmDatos: TDataModule},
  ufrmPresupuestos in 'Operaciones\ufrmPresupuestos.pas' {frmPresupuestos},
  udmFamilias in 'CatalogosDatos\udmFamilias.pas' {dmFamilias: TDataModule},
  udmBancos in 'CatalogosDatos\udmBancos.pas' {dmBancos: TDataModule},
  udmProductos in 'CatalogosDatos\udmProductos.pas' {dmProductos: TDataModule},
  udmPresupuestos in 'OperacionesDatos\udmPresupuestos.pas' {dmPresupuestos: TDataModule},
  udmDetalles in 'Compartidos\udmDetalles.pas' {dmDetalles: TDataModule},
  ufrmOperacion in 'Compartidos\ufrmOperacion.pas' {frmOperacion},
  udmUsuarios in 'udmUsuarios.pas' {dmUsuarios: TDataModule},
  ufrmUsuarios in 'ufrmUsuarios.pas' {frmUsuarios},
  udmClientes in 'CatalogosDatos\udmClientes.pas' {dmClientes: TDataModule},
  ufrmClientes in 'Catalogos\ufrmClientes.pas' {frmClientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmBase, dmBase);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.

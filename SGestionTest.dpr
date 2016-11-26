program SGestionTest;

uses
  Vcl.Forms,
  TestFrameWork,
  GUITestRunner,
  ufrmMain in 'ufrmMain.pas' {frmMain},
  uTestCasesBancos in 'Test\uTestCasesBancos.pas',
  ufrmBancos in 'Catalogos\ufrmBancos.pas' {frmBancos},
  udmDatos in 'Compartidos\udmDatos.pas' {dmDatos: TDataModule},
  udmDetalles in 'Compartidos\udmDetalles.pas' {dmDetalles: TDataModule},
  ufrmCatalogo in 'Compartidos\ufrmCatalogo.pas' {frmCatalogo},
  ufrmOperacion in 'Compartidos\ufrmOperacion.pas' {frmOperacion},
  uTestCasesFamilias in 'Test\uTestCasesFamilias.pas',
  ufrmFamilias in 'Catalogos\ufrmFamilias.pas' {frmFamilias},
  udmBancos in 'CatalogosDatos\udmBancos.pas' {dmBancos: TDataModule},
  udmFamilias in 'CatalogosDatos\udmFamilias.pas' {dmFamilias: TDataModule},
  udmBase in 'udmBase.pas' {dmBase: TDataModule},
  uTestCasesUsuarios in 'Test\uTestCasesUsuarios.pas',
  uTestCaseClientes in 'Test\uTestCaseClientes.pas',
  udmUsuarios in 'udmUsuarios.pas' {dmUsuarios: TDataModule},
  ufrmUsuarios in 'ufrmUsuarios.pas' {frmUsuarios},
  ufrmClientes in 'Catalogos\ufrmClientes.pas' {frmClientes},
  udmClientes in 'CatalogosDatos\udmClientes.pas' {dmClientes: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  GUITestRunner.RunRegisteredTests;
end.

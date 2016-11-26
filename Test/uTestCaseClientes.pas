unit uTestCaseClientes;

interface

uses
  TestFrameWork, Vcl.Forms, DB, SysUtils, udmBase, ufrmMain, ufrmCatalogo;

type
  TTestCaseClientes = class(TTestCase)
  const
    CATALOGO = 'Clientes';
  private
    frmCatalogo: TfrmCatalogo;
    dtsCatalogo: TDataSet;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestMenu;
    procedure TestData;
    procedure TestNuevo;
    procedure TestModifica;
    procedure TestBusca;
    procedure TestCancela;
    procedure TestElimina;
  end;

implementation

procedure TTestCaseClientes.SetUp;
begin
  dmBase:= TdmBase.Create(Application);
  frmMain:= TfrmMain.Create(Application);
  frmMain.actClientes.Execute;
  frmCatalogo:= TfrmCatalogo(Application.FindComponent('frm' + CATALOGO));
  dtsCatalogo:= frmCatalogo.grdCatalogo.DataSource.DataSet;
end;

procedure TTestCaseClientes.TearDown;
begin
  FreeAndNil(frmCatalogo);
  FreeAndNil(frmMain);
  FreeAndNil(dmBase);
end;

procedure TTestCaseClientes.TestMenu;
begin
  Check(Assigned(frmCatalogo), 'Catalogo ' + CATALOGO + ' no asignado');
end;

procedure TTestCaseClientes.TestData;
begin
  Check(Assigned(frmCatalogo.grdCatalogo.DataSource), 'Catalogo ' + CATALOGO + ' sin datos');
end;

procedure TTestCaseClientes.TestNuevo;
begin
  dtsCatalogo.Insert;
  dtsCatalogo.FieldByName('NOMBRE').Value:= 'Primero';
  dtsCatalogo.Post;
  Check(dtsCatalogo.Locate('NOMBRE', 'Primero', []), 'Registro no guardado');
end;

procedure TTestCaseClientes.TestModifica;
begin
  dtsCatalogo.Edit;
  dtsCatalogo.FieldByName('NOMBRE').Value:= 'Movido';
  dtsCatalogo.Post;
  Check(dtsCatalogo.Locate('NOMBRE', 'Movido', []), 'Registro no modificado');
end;

procedure TTestCaseClientes.TestBusca;
begin
  Check(dtsCatalogo.Locate('NOMBRE', 'Movido', []), 'Registro no encontrado');
end;

procedure TTestCaseClientes.TestCancela;
begin
  dtsCatalogo.Edit;
  dtsCatalogo.FieldByName('NOMBRE').Value:= 'Cambiado';
  dtsCatalogo.Cancel;
  Check(dtsCatalogo.Locate('NOMBRE', 'Movido', []), 'Registro no cancelado');
end;

procedure TTestCaseClientes.TestElimina;
begin
  dtsCatalogo.Delete;
  Check(not dtsCatalogo.Locate('NOMBRE', 'Movido', []), 'Registro no eliminado');
end;

initialization
  TestFramework.RegisterTest(TTestCaseClientes.Suite);

end.

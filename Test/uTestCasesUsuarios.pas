unit uTestCasesUsuarios;

interface

uses
  TestFrameWork, Vcl.Forms, DB, SysUtils, udmBase, ufrmMain, ufrmCatalogo;

type
  TTestCaseUsuarios = class(TTestCase)
  const
    CATALOGO = 'Usuarios';
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

procedure TTestCaseUsuarios.SetUp;
begin
  dmBase:= TdmBase.Create(Application);
  frmMain:= TfrmMain.Create(Application);
  frmMain.actUsuarios.Execute;
  frmCatalogo:= TfrmCatalogo(Application.FindComponent('frm' + CATALOGO));
  dtsCatalogo:= frmCatalogo.grdCatalogo.DataSource.DataSet;
end;

procedure TTestCaseUsuarios.TearDown;
begin
  FreeAndNil(frmCatalogo);
  FreeAndNil(frmMain);
  FreeAndNil(dmBase);
end;

procedure TTestCaseUsuarios.TestMenu;
begin
  Check(Assigned(frmCatalogo), 'Catalogo ' + CATALOGO + ' no asignado');
end;

procedure TTestCaseUsuarios.TestData;
begin
  Check(Assigned(frmCatalogo.grdCatalogo.DataSource), 'Catalogo ' + CATALOGO + ' sin datos');
end;

procedure TTestCaseUsuarios.TestNuevo;
begin
  dtsCatalogo.Insert;
  dtsCatalogo.FieldByName('NOMBRE').Value:= 'Primero';
  dtsCatalogo.Post;
  Check(dtsCatalogo.Locate('NOMBRE', 'Primero', []), 'Registro no guardado');
end;

procedure TTestCaseUsuarios.TestModifica;
begin
  dtsCatalogo.Edit;
  dtsCatalogo.FieldByName('NOMBRE').Value:= 'Movido';
  dtsCatalogo.Post;
  Check(dtsCatalogo.Locate('NOMBRE', 'Movido', []), 'Registro no modificado');
end;

procedure TTestCaseUsuarios.TestBusca;
begin
  Check(dtsCatalogo.Locate('NOMBRE', 'Movido', []), 'Registro no encontrado');
end;

procedure TTestCaseUsuarios.TestCancela;
begin
  dtsCatalogo.Edit;
  dtsCatalogo.FieldByName('NOMBRE').Value:= 'Cambiado';
  dtsCatalogo.Cancel;
  Check(dtsCatalogo.Locate('NOMBRE', 'Movido', []), 'Registro no cancelado');
end;

procedure TTestCaseUsuarios.TestElimina;
begin
  dtsCatalogo.Delete;
  Check(not dtsCatalogo.Locate('NOMBRE', 'Movido', []), 'Registro no eliminado');
end;

initialization
  TestFramework.RegisterTest(TTestCaseUsuarios.Suite);

end.

unit ufrmPresupuestos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmOperacion, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.DBActns, System.Actions, Vcl.ActnList, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask, ufrmCatalogo;

type
  TfrmPresupuestos = class(TfrmOperacion)
    edtNombre: TDBEdit;
    lblNombre: TLabel;
    btnInforme: TToolButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPresupuestos: TfrmPresupuestos;

implementation

{$R *.dfm}

uses udmPresupuestos;

initialization
  RegisterClass(TfrmPresupuestos);

end.

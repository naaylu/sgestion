unit ufrmProductos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCatalogo, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.DBActns, System.Actions, Vcl.ActnList, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmProductos = class(TfrmCatalogo)
    edtNombre: TDBEdit;
    lblNombre: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProductos: TfrmProductos;

implementation

{$R *.dfm}

uses udmProductos;

initialization
  RegisterClass(TfrmProductos);

end.

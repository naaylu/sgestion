unit ufrmUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCatalogo, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.DBActns, System.Actions, Vcl.ActnList, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.ToolWin;

type
  TfrmUsuarios = class(TfrmCatalogo)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUsuarios: TfrmUsuarios;

implementation

{$R *.dfm}

initialization
  RegisterClass(TfrmUsuarios);

end.

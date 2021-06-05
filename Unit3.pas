unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, SMDBCtrl, Grids, DBGrids, SMDBGrid, StdCtrls, Buttons,
  jpeg;

type
  TTabelRule = class(TForm)
    btn1: TBitBtn;
    smdbgrd1: TSMDBGrid;
    smdbnvgtr1: TSMDBNavigator;
    img1: TImage;
    procedure btn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TabelRule: TTabelRule;

implementation
uses Unit2, Unit4;
{$R *.dfm}

procedure TTabelRule.btn1Click(Sender: TObject);
begin
  FormTabel.Show;
  TabelRule.Close;
end;

procedure TTabelRule.FormActivate(Sender: TObject);
begin
  DM1.TabelAktif(True)
end;

end.

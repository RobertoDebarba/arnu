{ <description>

  Copyright (C) <2013> <Jonathan Eli Suptitz, Roberto Luiz Debarba> <jonny.suptitz@gmail.com, roberto.debarba@gmail.com>

  Este arquivo é parte do programa ARNU.

  ARNU é um software livre; você pode redistribuir e/ou modificá-los
  sob os termos da GNU Library General Public License como publicada pela Free
  Software Foundation; ou a versão 3 da Licença, ou (a sua escolha) qualquer
  versão posterior.

  Este código é distribuído na esperança de que seja útil, mas SEM
  QUALQUER GARANTIA; nem mesmo a garantia implícita de COMERCIABILIDADE ou
  ADEQUAÇÃO A UMA FINALIDADE PARTICULAR. Veja a licença GNU General Public
  License para maiores detalhes.

  Você deve ter recebido uma cópia da licença GNU Library General Public
  License juntamente com esta biblioteca; senão, escreva a Free Software
  Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
}

unit Unormas;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfrmNormas }

  TfrmNormas = class(TForm)
    ButtonVoltar: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure ButtonVoltarClick(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmNormas: TfrmNormas;

implementation

{$R *.lfm}

{ TfrmNormas }

procedure TfrmNormas.ButtonVoltarClick(Sender: TObject);
begin
  frmNormas.Close;
end;

procedure TfrmNormas.Label1Click(Sender: TObject);
begin

end;

end.


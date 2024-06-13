//------------------------------------------------------------------------------------------------------------
//********* Sobre ************
//Autor: Gisele de Melo
//Esse código foi desenvolvido com o intuito de aprendizado para o blog codedelphi.com, portanto não me
//responsabilizo pelo uso do mesmo.
//
//********* About ************
//Author: Gisele de Melo
//This code was developed for learning purposes for the codedelphi.com blog, therefore I am not responsible for
//its use.
//------------------------------------------------------------------------------------------------------------

unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
 TAnimal = class
  private
    FNome: String;
  public
    constructor Create(Nome: String);
    procedure EmitirSom; virtual;
    property Nome: String read FNome write FNome;
  end;

  TCachorro = class(TAnimal)
  public
    constructor Create(Nome: String);
    procedure EmitirSom; override;
  end;

  TGato = class(TAnimal)
  public
    constructor Create(Nome: String);
    procedure EmitirSom; override;
  end;

  TForm1 = class(TForm)
    ButtonDog: TButton;
    ButtonCat: TButton;
    procedure ButtonDogClick(Sender: TObject);
    procedure ButtonCatClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

constructor TAnimal.Create(Nome: String);
begin
  FNome := Nome;
end;

procedure TAnimal.EmitirSom;
begin
  ShowMessage('Som do animal');
end;

constructor TCachorro.Create(Nome: String);
begin
  inherited Create(Nome);
end;

procedure TCachorro.EmitirSom;
begin
  inherited EmitirSom;
  ShowMessage('Latido');
end;

constructor TGato.Create(Nome: String);
begin
  inherited Create(Nome);
end;

procedure TGato.EmitirSom;
begin
  inherited EmitirSom;
  ShowMessage('Miau');
end;

procedure TForm1.ButtonDogClick(Sender: TObject);
var
  Cachorro: TCachorro;
begin
  Cachorro := TCachorro.Create('Rex');
  try
    Cachorro.EmitirSom;
  finally
    Cachorro.Free;
  end;
end;

procedure TForm1.ButtonCatClick(Sender: TObject);
var
  Gato: TGato;
begin
  Gato := TGato.Create('Mimi');
  try
    Gato.EmitirSom;
  finally
    Gato.Free;
  end;
end;

end.

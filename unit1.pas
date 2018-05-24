unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  Menus, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    Label1: TLabel;
    ListeSemestre: TRadioGroup;   //Liste semestre
    ListeUETC: TRadioGroup;   //Liste UE TC
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure ComboBox5Change(Sender: TObject);

  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ComboBox1Change(Sender: TObject);
begin //GESTION UE
  case ComboBox1.ItemIndex of
       0: begin
          ListeUETC.Visible:=True ;
          ListeSemestre.Visible:=False; //TC
       end ;
       1: ; //ISI
       2: ; //RT
       3: ; //A2I
       4: ; //MM
       5: ; //MTE
       6: ; //GM
       7: ; //GI
  end;
end;

procedure TForm1.ComboBox2Change(Sender: TObject);
begin  //GESTION ENSEIGNANTS
    case ComboBox1.ItemIndex of
       0: ; //TC
       1: ; //ISI
       2: ; //RT
       3: ; //A2I
       4: ; //MM
       5: ; //MTE
       6: ; //GM
       7: ; //GI
  end;
end;

procedure TForm1.ComboBox3Change(Sender: TObject);
begin  //VISUALISATION REPARTITION ETU
    ListeSemestre.Visible:= True;
    ListeUETC.Visible:=False;
    case ComboBox1.ItemIndex of
       0: ; //TC
       1: ; //ISI
       2: ; //RT
       3: ; //A2I
       4: ; //MM
       5: ; //MTE
       6: ; //GM
       7: ; //GI
  end;
end;

procedure TForm1.ComboBox4Change(Sender: TObject);
begin  //GESTION DU SEMESTRE
    ListeSemestre.Visible:= True;
    ListeUETC.Visible:=False;
    case ComboBox1.ItemIndex of
       0: ; //TC
       1: ; //ISI
       2: ; //RT
       3: ; //A2I
       4: ; //MM
       5: ; //MTE
       6: ; //GM
       7: ; //GI
  end;
end;

procedure TForm1.ComboBox5Change(Sender: TObject);
begin  //STATISTIQUE DE FLUX
    ListeSemestre.Visible:= True;
    ListeUETC.Visible:=False;
    case ComboBox1.ItemIndex of
       0: ; //TC
       1: ; //ISI
       2: ; //RT
       3: ; //A2I
       4: ; //MM
       5: ; //MTE
       6: ; //GM
       7: ; //GI
  end;
end;

end.


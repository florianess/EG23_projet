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
    ListeUEGI: TRadioGroup;
    ListeUEMTE: TRadioGroup;
    ListeUEGM: TRadioGroup;
    ListeUEISI: TRadioGroup;
    ListeUERT: TRadioGroup;
    ListeUEA2I: TRadioGroup;
    ListeUEMM: TRadioGroup;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure ComboBox5Change(Sender: TObject);
    procedure ListeUEGIClick(Sender: TObject);

  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure Clear(); //On fait disparaitre toutes les RadioGroup
begin

     Form1.ListeSemestre.Visible:=False;
     Form1.ListeUETC.Visible:=False;
     Form1.ListeUEGI.Visible:=False;
     Form1.ListeUEGM.Visible:=False;
     Form1.ListeUEISI.Visible:=False;
     Form1.ListeUERT.Visible:=False;
     Form1.ListeUEMTE.Visible:=False;
     Form1.ListeUEA2I.Visible:=False;
     Form1.ListeUEMM.Visible:=False;

end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin //GESTION UE
  ComboBox2.Text:='Gestion des enseignants';
  ComboBox3.Text:='Visualisation de la répartition des étudiants';
  ComboBox4.Text:='Gestion du semestre';
  ComboBox5.Text:='Statistique des flux';
  case ComboBox1.ItemIndex of
       0: begin
          Clear();
          ListeUETC.Visible:=True ; //TC
       end ;
       1: begin
          Clear();
          ListeUEISI.Visible:=True;
       end; //ISI
       2: Clear(); //RT
       3: ; //A2I
       4: ; //MM
       5: ; //MTE
       6: ; //GM
       7: ; //GI
  end;
end;

procedure TForm1.ComboBox2Change(Sender: TObject);
begin  //GESTION ENSEIGNANTS
  ComboBox1.Text:='Gestion des UE';
  ComboBox3.Text:='Visualisation de la répartition des étudiants';
  ComboBox4.Text:='Gestion du semestre';
  ComboBox5.Text:='Statistique des flux';
    case ComboBox3.ItemIndex of
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
  ComboBox1.Text:='Gestion des UE';
  ComboBox2.Text:='Gestion des enseignants';
  ComboBox4.Text:='Gestion du semestre';
  ComboBox5.Text:='Statistique des flux';
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
  ComboBox1.Text:='Gestion des UE';
  ComboBox2.Text:='Gestion des enseignants';
  ComboBox3.Text:='Visualisation de la répartition des étudiants';
  ComboBox5.Text:='Statistique des flux';
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
  ComboBox1.Text:='Gestion des UE';
  ComboBox2.Text:='Gestion des enseignants';
  ComboBox3.Text:='Visualisation de la répartition des étudiants';
  ComboBox4.Text:='Gestion du semestre';
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

procedure TForm1.ListeUEGIClick(Sender: TObject);
begin

end;

end.


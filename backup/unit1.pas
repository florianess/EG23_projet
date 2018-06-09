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
    TriStatistique: TComboBox;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Label13: TLabel;
    NameFlux: TLabel;
    Image3: TImage;
    Label12: TLabel;
    StatistiqueFlux: TPanel;
    TriGestion: TComboBox;
    GestionEtudiantISI: TPanel;
    Semestre: TComboBox;
    Image1: TImage;
    Image2: TImage;
    Titre: TLabel;
    RepartitionISI: TPanel;
    Resultat: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    NomUE: TLabel;
    ListeSemestre: TRadioGroup;   //Liste Semestre
    ListeUETC: TRadioGroup;  //Liste UE TC
    ListeUEGI: TRadioGroup;  //Liste UE GI
    ListeUEMTE: TRadioGroup; //Liste UE MTE
    ListeUEGM: TRadioGroup;  //Liste UE GM
    ListeUEISI: TRadioGroup; //Liste UE ISI
    ListeUERT: TRadioGroup;  //Liste UE RT
    ListeUEA2I: TRadioGroup; //Liste UE A2I
    ListeUEMM: TRadioGroup;  //Liste UE MM
    NF16: TPanel;
    Shape1: TShape;
    FondBleuClair: TShape;
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure ComboBox5Change(Sender: TObject);
    procedure ListeUEISIClick(Sender: TObject);

  private

  public

  end;

var
  Form1: TForm1;
  indexSemestre : integer;

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
     Form1.FondBleuClair.Visible:=False;
     Form1.NF16.Visible:=False;
     Form1.RepartitionISI.Visible:=False;
     Form1.GestionEtudiantISI.Visible:=False;
     Form1.StatistiqueFlux.Visible:=False;

end;



procedure TForm1.ComboBox1Change(Sender: TObject); //GESTION UE
begin
  ComboBox2.Text:='Gestion des enseignants';
  ComboBox3.Text:='Visualisation de la répartition des étudiants';
  ComboBox4.Text:='Gestion du semestre';
  ComboBox5.Text:='Statistique des flux';
  Clear();
  FondBleuClair.Visible:=True;
  case ComboBox1.ItemIndex of
       0: begin
          ListeUETC.Visible:=True ;
       end; //TC
       1: begin
          ListeUEISI.Visible:=True;
       end; //ISI
       2: begin
          ListeUERT.Visible:=True;
       end; //RT
       3: begin
          ListeUEA2I.Visible:=True;
       end; //A2I
       4: begin
          ListeUEMM.Visible:=True;
       end; //MM
       5: begin
          ListeUEMTE.Visible:=True;
       end; //MTE
       6: begin
          ListeUEGM.Visible:=True;
       end; //GM
       7: begin
          ListeUEGI.Visible:=True;
       end; //GI
  end;
end;

procedure TForm1.ListeUEISIClick(Sender: TObject); // Affichage de la fiche de l'UE NF16
begin
  case ListeUEISI.ItemIndex of
       0: begin
          Clear();
          ListeUEISI.Visible:=True;
          FondBleuClair.Visible:=True;
          NF16.Visible:=True;
          end;
       else ShowMessage('Nous n avons pas encore d informations sur cette UE');
  end;
end;



procedure TForm1.ComboBox2Change(Sender: TObject); //GESTION ENSEIGNANTS
begin
  ComboBox1.Text:='Gestion des UE';
  ComboBox3.Text:='Visualisation de la répartition des étudiants';
  ComboBox4.Text:='Gestion du semestre';
  ComboBox5.Text:='Statistique des flux';

  Clear();
    case ComboBox2.ItemIndex of
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




procedure TForm1.ComboBox3Change(Sender: TObject); //VISUALISATION REPARTITION ETU
begin
  ComboBox1.Text:='Gestion des UE';
  ComboBox2.Text:='Gestion des enseignants';
  ComboBox4.Text:='Gestion du semestre';
  ComboBox5.Text:='Statistique des flux';

  Clear();
    case ComboBox3.ItemIndex of
       1: RepartitionISI.Visible:=True; //ISI
       else ShowMessage('Nous n avons pas encore d informations sur la répartition demandée');
  end;
end;




procedure TForm1.ComboBox4Change(Sender: TObject);
begin  //GESTION DU SEMESTRE
  ComboBox1.Text:='Gestion des UE';
  ComboBox2.Text:='Gestion des enseignants';
  ComboBox3.Text:='Visualisation de la répartition des étudiants';
  ComboBox5.Text:='Statistique des flux';

  Clear();
  case ComboBox4.ItemIndex of
       1: GestionEtudiantISI.Visible:=True ; //ISI
       else ShowMessage('Nous n avons pas encore d informations sur la gestion de ce cursus');
  end;
end;




procedure TForm1.ComboBox5Change(Sender: TObject); //STATISTIQUE DE FLUX
begin
  ComboBox1.Text:='Gestion des UE';
  ComboBox2.Text:='Gestion des enseignants';
  ComboBox3.Text:='Visualisation de la répartition des étudiants';
  ComboBox4.Text:='Gestion du semestre';

  Clear();
    case ComboBox5.ItemIndex of
       1: StatistiqueFlux.Visible:=True; //ISI
       else ShowMessage('Nous n avons pas encore les statistiques demandées');
  end;
end;
end.


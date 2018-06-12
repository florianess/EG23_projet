unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  Menus, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    A2Ibu: TRadioButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    GestUE: TButton;
    GestEns: TButton;
    GIbu: TRadioButton;
    GMbu: TRadioButton;
    GroupBox1: TGroupBox;
    Image10: TImage;
    Image8: TImage;
    Image9: TImage;
    ISIbu: TRadioButton;
    Label10: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    MTEbu: TRadioButton;
    NameEns: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    RepEtu: TButton;
    GestSeme: TButton;
    RTbu: TRadioButton;
    ScrollBar1: TScrollBar;
    ScrollBar2: TScrollBar;
    StatsFlux: TButton;
    TCbu: TRadioButton;
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
    TriPole: TComboBox;
    procedure GestEnsClick(Sender: TObject);
    procedure GestSemeClick(Sender: TObject);
    procedure GestUEClick(Sender: TObject);
    procedure GIbuChange(Sender: TObject);
    procedure GMbuChange(Sender: TObject);
    procedure GroupBox1ChangeBounds(Sender: TObject);
    procedure GroupBox1Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure ISIbuChange(Sender: TObject);
    procedure ListeUEA2IClick(Sender: TObject);
    procedure ListeUEISIClick(Sender: TObject);
    procedure MTEbuChange(Sender: TObject);
    procedure NameFluxClick(Sender: TObject);
    procedure RepEtuClick(Sender: TObject);
    procedure RTbuChange(Sender: TObject);
    procedure A2IbuChange(Sender: TObject);
    procedure StatistiqueFluxClick(Sender: TObject);
    procedure StatsFluxClick(Sender: TObject);
    procedure TCbuChange(Sender: TObject);

  private

  public

  end;

var
  Form1: TForm1;
  indexSemestre : integer;
  cursus: String = 'TC';

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
     Form1.Panel1.Visible:=False;
     Form1.Panel2.Visible:=False;
     Form1.Panel3.Visible:=False;
     Form1.Button4.Visible:=False;
     Form1.NameEns.Visible:=False;
     Form1.TriPole.Visible:=False;
     Form1.ScrollBar2.Visible:=False;

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

procedure TForm1.MTEbuChange(Sender: TObject);
begin
  if Form1.MTEbu.Checked then cursus:='MTE';
end;

procedure TForm1.NameFluxClick(Sender: TObject);
begin

end;

procedure TForm1.RepEtuClick(Sender: TObject);
begin
  Clear();
    case cursus of
       'ISI': RepartitionISI.Visible:=True; //ISI
       else ShowMessage('Nous n avons pas encore d informations sur la répartition demandée');
  end;
end;

procedure TForm1.RTbuChange(Sender: TObject);
begin
    if Form1.RTbu.Checked then cursus:='RT';
     if Form1.MTEbu.Checked then cursus:='MTE';
     if Form1.GMbu.Checked then cursus:='GM';
     if Form1.GIbu.Checked then cursus:='GI';
end;

procedure TForm1.A2IbuChange(Sender: TObject);
begin
     if Form1.A2Ibu.Checked then cursus:='A2I';
end;

procedure TForm1.StatistiqueFluxClick(Sender: TObject);
begin

end;

procedure TForm1.StatsFluxClick(Sender: TObject);
begin
  Clear();
    case cursus of
       'ISI': StatistiqueFlux.Visible:=True; //ISI
       else ShowMessage('Nous n avons pas encore les statistiques demandées');
  end
end;

procedure TForm1.TCbuChange(Sender: TObject);
begin
   if TCbu.Checked then cursus:='TC';
end;








procedure TForm1.GestEnsClick(Sender: TObject);
begin
  Clear();
  Form1.Panel1.Visible:=True;
     Form1.Panel2.Visible:=True;
     Form1.Panel3.Visible:=True;
     Form1.Button4.Visible:=True;
     Form1.NameEns.Visible:=True;
     Form1.TriPole.Visible:=True;
end;

procedure TForm1.GestSemeClick(Sender: TObject);
begin
  Clear();
  case cursus of
       'ISI': GestionEtudiantISI.Visible:=True ; //ISI
       else ShowMessage('Nous n avons pas encore d informations sur la gestion de ce cursus');
  end;
end;

procedure TForm1.GestUEClick(Sender: TObject);
begin
  Clear();
  FondBleuClair.Visible:=True;
  case cursus of
       'TC': begin
          ScrollBar2.Visible:=True;
          ListeUETC.Visible:=True ;
       end; //TC
       'ISI': begin
          ScrollBar2.Visible:=True;
          ListeUEISI.Visible:=True;
       end; //ISI
       'RT': begin
          ListeUERT.Visible:=True;
       end; //RT
       'A2I': begin
          ListeUEA2I.Visible:=True;
       end; //A2I
       'MTE': begin
          ScrollBar2.Visible:=True;
          ListeUEMTE.Visible:=True;
       end; //MTE
       'GM': begin
          ScrollBar2.Visible:=True;
          ListeUEGM.Visible:=True;
       end; //GM
       'GI': begin
          ListeUEGI.Visible:=True;
       end; //GI
  end;
end;



procedure TForm1.GIbuChange(Sender: TObject);
begin
     if Form1.GIbu.Checked then cursus:='GI';
end;

procedure TForm1.GMbuChange(Sender: TObject);
begin
     if Form1.GMbu.Checked then cursus:='GM';
end;

procedure TForm1.GroupBox1ChangeBounds(Sender: TObject);
begin


end;

procedure TForm1.GroupBox1Click(Sender: TObject);
begin

end;

procedure TForm1.Image7Click(Sender: TObject);
begin

end;

procedure TForm1.ISIbuChange(Sender: TObject);
begin
  if ISIbu.Checked then cursus:='ISI';
end;

procedure TForm1.ListeUEA2IClick(Sender: TObject);
begin

end;


end.


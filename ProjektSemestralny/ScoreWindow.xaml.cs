using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace ProjektSemestralny
{
    /// <summary>
    /// Logika interakcji dla klasy ScoreWindow.xaml
    /// </summary>
    public partial class ScoreWindow : Window
    {
        DatabaseEntities db = new DatabaseEntities();

        bool stopInsert = false;

        public ScoreWindow()
        {
            InitializeComponent();
            ComboBoxes();
        }

        private void ComboBoxes()
        {
            TurnamentComboBox.ItemsSource = db.Turnament.Select(u => u.TurnamentName).ToList();
            CompetitionComboBox.ItemsSource = db.Competitions.Select(u => u.CompetitionName).ToList();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            MainWindow mainWindow = new MainWindow();
            mainWindow.Show();
            this.Close();
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            Score score = new Score();

            if (TurnamentComboBox.SelectedItem == null)
            {
                stopInsert = true;
                MessageBox.Show("Nazwa zawodów nie może pozostać pusta", "Uwaga");
            }
            else
            {
                stopInsert = false;
                score.Turnament = Convert.ToInt32(db.Turnament
                                .Where(s => s.TurnamentName == TurnamentComboBox.SelectedItem.ToString())
                                .Select(u => u.Id)
                                .SingleOrDefault());
            }

            if (CompetitionComboBox.SelectedItem == null)
            {
                stopInsert = true;
                MessageBox.Show("Nazwa zawodów nie może pozostać pusta", "Uwaga");
            }
            else
            {
                stopInsert = false;
                score.Competition = Convert.ToString(db.Competitions
                .Where(s => s.CompetitionName == CompetitionComboBox.SelectedItem.ToString())
                .Select(u => u.Cut)
                .SingleOrDefault());
            }
            
            if (PlayerTextBox.Text == "")
            {
                stopInsert = true;
                MessageBox.Show("Konkurencja nie może pozostać pusty", "Uwaga");
            }
            else
            {
                stopInsert = false;
                score.Player = Convert.ToInt32(PlayerTextBox.Text.Trim());
            }

            if (ScoreTextBox.Text == "")
            {
                stopInsert = true;
                MessageBox.Show("Wyniku nie może pozostać pusty", "Uwaga");  
            }
            else
            {
                int playerScore = Convert.ToInt32(ScoreTextBox.Text.Trim());
                score.PlayerScore = playerScore;
                stopInsert = false;
                if (TimeTextBox.Text != "")
                {
                    decimal playerTime = Convert.ToDecimal(TimeTextBox.Text);
                    score.Time = playerTime;
                    if (playerTime != 0)
                    {
                        score.FinalScore = playerScore / playerTime;
                    }
                    else
                        score.FinalScore = 0;
                }
            }

            if (XTextBox.Text != "")
            {
                score.X = Convert.ToInt32(XTextBox.Text.Trim());
            }

            if (stopInsert == false)
            {
                db.Score.Add(score);
                db.SaveChanges();
                this.scoreDataGrid.ItemsSource = db.Score.ToList();
            }     
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            ProjektSemestralny.DatabaseDataSet databaseDataSet = ((ProjektSemestralny.DatabaseDataSet)(this.FindResource("databaseDataSet")));
            // Załaduj dane do tabeli Score. Możesz modyfikować ten kod w razie potrzeby.
            ProjektSemestralny.DatabaseDataSetTableAdapters.ScoreTableAdapter databaseDataSetScoreTableAdapter = new ProjektSemestralny.DatabaseDataSetTableAdapters.ScoreTableAdapter();
            databaseDataSetScoreTableAdapter.Fill(databaseDataSet.Score);
            System.Windows.Data.CollectionViewSource scoreViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("scoreViewSource")));
            scoreViewSource.View.MoveCurrentToFirst();
        }
    }
}
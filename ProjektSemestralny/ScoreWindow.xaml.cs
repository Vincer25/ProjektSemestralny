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

            score.Turnament = Convert.ToInt32(db.Turnament
                .Where(s => s.TurnamentName == TurnamentComboBox.SelectedItem.ToString())
                .Select(u => u.Id)
                .SingleOrDefault());

            score.Competition = Convert.ToString(db.Competitions
                .Where(s => s.CompetitionName == CompetitionComboBox.SelectedItem.ToString())
                .Select(u => u.Cut)
                .SingleOrDefault());

            int playerNumber = Convert.ToInt32(PlayerTextBox.Text.Trim());
            int playerScore = Convert.ToInt32(ScoreTextBox.Text.Trim());
            int playerX = Convert.ToInt32(XTextBox.Text.Trim());
            decimal playerTime = Convert.ToDecimal(TimeTextBox.Text);

            score.Player = playerNumber;
            score.PlayerScore = playerScore;
            score.X = playerX;
            score.Time = playerTime;

            if (playerTime != 0)
            {
                score.FinalScore = playerScore / Convert.ToInt32(playerTime);
            }
            else
                score.FinalScore = playerScore;

            db.Score.Add(score);
            db.SaveChanges();
            this.scoreDataGrid.ItemsSource = db.Score.ToList();
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

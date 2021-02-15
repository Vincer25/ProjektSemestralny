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
    /// Logika interakcji dla klasy CompetitionWindow.xaml
    /// </summary>
    public partial class CompetitionWindow : Window
    {
        DatabaseEntities db = new DatabaseEntities();

        public CompetitionWindow()
        {
            InitializeComponent();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            MainWindow mainWindow = new MainWindow();
            mainWindow.Show();
            this.Close();
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            Competitions competitions = new Competitions();

            competitions.Cut = ShortBox.Text.Trim();
            competitions.CompetitionName = NameBox.Text.Trim();

            db.Competitions.Add(competitions);
            db.SaveChanges();
            this.competitionsDataGrid.ItemsSource = db.Competitions.ToList();

            ShortBox.Text = "";
            NameBox.Text = "";
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {

            ProjektSemestralny.DatabaseDataSet databaseDataSet = ((ProjektSemestralny.DatabaseDataSet)(this.FindResource("databaseDataSet")));
            // Załaduj dane do tabeli Competitions. Możesz modyfikować ten kod w razie potrzeby.
            ProjektSemestralny.DatabaseDataSetTableAdapters.CompetitionsTableAdapter databaseDataSetCompetitionsTableAdapter = new ProjektSemestralny.DatabaseDataSetTableAdapters.CompetitionsTableAdapter();
            databaseDataSetCompetitionsTableAdapter.Fill(databaseDataSet.Competitions);
            System.Windows.Data.CollectionViewSource competitionsViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("competitionsViewSource")));
            competitionsViewSource.View.MoveCurrentToFirst();
        }
    }
}

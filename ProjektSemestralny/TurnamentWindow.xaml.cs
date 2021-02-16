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
    /// Logika interakcji dla klasy TurnamentWindow.xaml
    /// </summary>
    public partial class TurnamentWindow : Window
    {
        DatabaseEntities db = new DatabaseEntities();

        public TurnamentWindow()
        {
            InitializeComponent();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            if (TurnamentNameBox.Text == "" || TurnamentDateBox.Text == "")
            {
                MessageBox.Show("Pole nie może pozostać puste", "Uwaga");
            }
            else
            {
                Turnament turnament = new Turnament();
                turnament.TurnamentName = TurnamentNameBox.Text.Trim();
                turnament.TurnamentDate = TurnamentDateBox.SelectedDate.Value;
                db.Turnament.Add(turnament);
                db.SaveChanges();
                this.turnamentDataGrid.ItemsSource = db.Turnament.ToList();
                TurnamentNameBox.Text = "";
                TurnamentDateBox.Text = "";
            }
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            MainWindow mainWindow = new MainWindow();
            mainWindow.Show();
            this.Close();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            ProjektSemestralny.DatabaseDataSet databaseDataSet = ((ProjektSemestralny.DatabaseDataSet)(this.FindResource("databaseDataSet")));
            // Załaduj dane do tabeli Turnament. Możesz modyfikować ten kod w razie potrzeby.
            ProjektSemestralny.DatabaseDataSetTableAdapters.TurnamentTableAdapter databaseDataSetTurnamentTableAdapter = new ProjektSemestralny.DatabaseDataSetTableAdapters.TurnamentTableAdapter();
            databaseDataSetTurnamentTableAdapter.Fill(databaseDataSet.Turnament);
            System.Windows.Data.CollectionViewSource turnamentViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("turnamentViewSource")));
            turnamentViewSource.View.MoveCurrentToFirst();
        }
    }
}
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Documents;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.IO;
using System.Globalization;
using System.Collections.ObjectModel;
using System.Text.RegularExpressions;
using Autodesk.Revit.DB;
using Autodesk.Revit.UI;
using Autodesk.Revit.ApplicationServices;


namespace LEDEL_BIM.MainWindow
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class SecondaryWindow : Window
    {
        string fp = "Testing secondary window.";
        public SecondaryWindow(string fp)
        {
            MessageBox.Show(fp);
        }
    }
    public partial class MainWindow : Window
    {
        internal static double defaultLoadFromValue = 0;
        internal static double defaultLoadToValue = 5000;
        internal static double defaultFluxFromValue = 0;
        internal static double defaultFluxToValue = 1000000;
        internal static string defaultFamilyName = "Наименование светильника";
        internal static string defaultCategoryName = "Категория светильника";
        internal static string defaultLoadFrom = "Напряжение В, от";
        internal static string defaultLoadTo = "Напряжение В, до";
        internal static string defaultFluxFrom = "Световой поток лк, от";
        internal static string defaultFluxTo = "Световой поток лк, до";
        internal static string defaultTemperature = "Цветовая температура";
        internal static string defaultPhotometricWeb = "Тип КСС";

        public static LightingFixtureType lft;
        // double loadFromValue;
        // double loadToValue;
        string familyName = defaultFamilyName;
        InsertFamilyType ift;
        ExternalEvent TypeInserting;

        public MainWindow()
        {
            InitializeComponent();
            ShowTree();
        }
        private void ShowTree()
        {
            List<LightingFixtureFamily> families = ListGetter();
            namesList.ItemsSource = families;
            treeViewLFF.ItemsSource = families;
        }
        private void ShowUpdatedTree()
        {
            List<LightingFixtureFamily> families = ListGetter();

            List<LightingFixtureFamily> filteredFamilies = new List<LightingFixtureFamily>();
            foreach (LightingFixtureFamily family in families)
            {
                List<LightingFixtureType> temporaryTypeList = Utility.Filters.SearchList(family.FamilyTypes,
                    namesList.Text,
                    typeList.Text,
                    GetDoubleValue(this.loadFrom.Text, defaultLoadFromValue),
                    GetDoubleValue(this.loadTo.Text, defaultLoadToValue),
                    GetDoubleValue(this.fluxFrom.Text, defaultFluxFromValue),
                    GetDoubleValue(this.fluxTo.Text, defaultFluxToValue),
                    colorTemperatureList.Text);

                if (temporaryTypeList.Count > 0)
                {
                    filteredFamilies.Add(new LightingFixtureFamily(family.FamilyName, family.FamilyPath, temporaryTypeList));
                }
            }
            treeViewLFF.ItemsSource = filteredFamilies;
        }


        private void Button_Click(object sender, RoutedEventArgs e)
        {
            ShowUpdatedTree();
        }

        private void InsertButton_Click(object sender, RoutedEventArgs e)
        {
            lft = (LightingFixtureType)treeViewLFF.SelectedItem;
            ift = new InsertFamilyType();
            MessageBox.Show($"Светильник {lft.FamilyTypeName}, находящийся в {lft.Family.FamilyPath} будет вставлен в проект.");
            MessageBox.Show(File.Exists(lft.Family.FamilyPath).ToString());
            TypeInserting = ExternalEvent.Create(ift);
            Close();
            TypeInserting.Raise();
        }
        private void NumberValidationTextBox(object sender, TextCompositionEventArgs e)
        {
            Regex regex = new Regex("[^0-9]+");
            e.Handled = regex.IsMatch(e.Text);
        }

        public void TextBox_GotFocus(object sender, RoutedEventArgs e)
        {
            System.Windows.Controls.TextBox tb = (System.Windows.Controls.TextBox)sender;
            tb.Text = string.Empty;
          //  tb.GotFocus -= TextBox_GotFocus;
        }

        private double GetDoubleValue(string valueAsString, double defaultValue)
        {
            double result;
            if (Double.TryParse(valueAsString, out result) == true)
            {
                result = Double.Parse(valueAsString);
            }
            else
            {
                result = defaultValue;
            }
            return result;
        }
        private void ComboBox_GotFocus(object sender, RoutedEventArgs e)
        {
            System.Windows.Controls.ComboBox cb = (System.Windows.Controls.ComboBox)sender;
            cb.Text = string.Empty;
          //  cb.GotFocus -= ComboBox_GotFocus;
        }
        private void ComboBox_GotFocus2(object sender, RoutedEventArgs e)
        {
            System.Windows.Controls.ComboBox cb = (System.Windows.Controls.ComboBox)sender;
            string temp = cb.Text;
            cb.Text = string.Empty;
            cb.GotFocus -= ComboBox_GotFocus;
        }
        private List<LightingFixtureFamily> ListGetter()
        {
            string[] filePaths = Directory.GetFiles(@"C:\Users\Admin\Desktop\REVIT_BIM\Revit Family Types", "*.txt");
        //    List<LightingFixtureFamily> families = new List<LightingFixtureFamily>();
            List<LightingFixtureFamily> families = APIUtility.FamilyParser.RetriveAllFamiliesFromFolder(filePaths);

            return families;
        }

        private List<string> TypeNameGetter(List<LightingFixtureType> types)
        {
            List<string> typeNames = new List<string>();
            foreach (LightingFixtureType type in types)
            {
                typeNames.Add(type.FamilyTypeName);
            }
            return typeNames;
        }

        private void colorTemperatureList_LostFocus(object sender, RoutedEventArgs e)
        {
            if (colorTemperatureList.Text == "")
                colorTemperatureList.Text = "Цветовая температура";
            else
                Button_Click(sender, e);
        }

        private void treeViewLFF_SelectedItemChanged(object sender, RoutedPropertyChangedEventArgs<object> e)
        {
            object obj = (object)treeViewLFF.SelectedItem;
            if (obj is LightingFixtureType)
            {
                insertButton.IsEnabled = true;
            }

        }

        private void defaultFiltersButton_Click(object sender, RoutedEventArgs e)
        {
            namesList.Text = defaultFamilyName;
            typeList.Text = defaultCategoryName;
            loadFrom.Text = defaultLoadFrom;
            loadTo.Text = defaultLoadTo;
            fluxFrom.Text = defaultFluxFrom;
            fluxTo.Text = defaultFluxTo;
            colorTemperatureList.Text = defaultTemperature;
            photometricWebList.Text = defaultPhotometricWeb;
            ShowUpdatedTree();
        }
    }
}
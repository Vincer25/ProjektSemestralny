﻿#pragma checksum "..\..\TurnamentWindow.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "F81DAB6532AD3937B4C2C298DBF24C0E9D0A3C1EB8D43E87074B8751D9989AD7"
//------------------------------------------------------------------------------
// <auto-generated>
//     Ten kod został wygenerowany przez narzędzie.
//     Wersja wykonawcza:4.0.30319.42000
//
//     Zmiany w tym pliku mogą spowodować nieprawidłowe zachowanie i zostaną utracone, jeśli
//     kod zostanie ponownie wygenerowany.
// </auto-generated>
//------------------------------------------------------------------------------

using ProjektSemestralny;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace ProjektSemestralny {
    
    
    /// <summary>
    /// TurnamentWindow
    /// </summary>
    public partial class TurnamentWindow : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 14 "..\..\TurnamentWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock TurnamentNameBlock;
        
        #line default
        #line hidden
        
        
        #line 15 "..\..\TurnamentWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock TurnamentDateBlock;
        
        #line default
        #line hidden
        
        
        #line 16 "..\..\TurnamentWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox TurnamentNameBox;
        
        #line default
        #line hidden
        
        
        #line 17 "..\..\TurnamentWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DatePicker TurnamentDateBox;
        
        #line default
        #line hidden
        
        
        #line 18 "..\..\TurnamentWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid turnamentDataGrid;
        
        #line default
        #line hidden
        
        
        #line 20 "..\..\TurnamentWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGridTextColumn turnamentNameColumn;
        
        #line default
        #line hidden
        
        
        #line 21 "..\..\TurnamentWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGridTemplateColumn turnamentDateColumn;
        
        #line default
        #line hidden
        
        
        #line 30 "..\..\TurnamentWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button BackButton;
        
        #line default
        #line hidden
        
        
        #line 42 "..\..\TurnamentWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button SendButton;
        
        #line default
        #line hidden
        
        
        #line 54 "..\..\TurnamentWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button UpdateButton;
        
        #line default
        #line hidden
        
        
        #line 66 "..\..\TurnamentWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button DeleteButton;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/ProjektSemestralny;component/turnamentwindow.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\TurnamentWindow.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            
            #line 8 "..\..\TurnamentWindow.xaml"
            ((ProjektSemestralny.TurnamentWindow)(target)).Loaded += new System.Windows.RoutedEventHandler(this.Window_Loaded);
            
            #line default
            #line hidden
            return;
            case 2:
            this.TurnamentNameBlock = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 3:
            this.TurnamentDateBlock = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 4:
            this.TurnamentNameBox = ((System.Windows.Controls.TextBox)(target));
            return;
            case 5:
            this.TurnamentDateBox = ((System.Windows.Controls.DatePicker)(target));
            return;
            case 6:
            this.turnamentDataGrid = ((System.Windows.Controls.DataGrid)(target));
            return;
            case 7:
            this.turnamentNameColumn = ((System.Windows.Controls.DataGridTextColumn)(target));
            return;
            case 8:
            this.turnamentDateColumn = ((System.Windows.Controls.DataGridTemplateColumn)(target));
            return;
            case 9:
            this.BackButton = ((System.Windows.Controls.Button)(target));
            
            #line 30 "..\..\TurnamentWindow.xaml"
            this.BackButton.Click += new System.Windows.RoutedEventHandler(this.Back_Button_Click);
            
            #line default
            #line hidden
            return;
            case 10:
            this.SendButton = ((System.Windows.Controls.Button)(target));
            
            #line 42 "..\..\TurnamentWindow.xaml"
            this.SendButton.Click += new System.Windows.RoutedEventHandler(this.Send_Button_Click);
            
            #line default
            #line hidden
            return;
            case 11:
            this.UpdateButton = ((System.Windows.Controls.Button)(target));
            
            #line 54 "..\..\TurnamentWindow.xaml"
            this.UpdateButton.Click += new System.Windows.RoutedEventHandler(this.Update_Button_Click);
            
            #line default
            #line hidden
            return;
            case 12:
            this.DeleteButton = ((System.Windows.Controls.Button)(target));
            
            #line 66 "..\..\TurnamentWindow.xaml"
            this.DeleteButton.Click += new System.Windows.RoutedEventHandler(this.Delete_Button_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}


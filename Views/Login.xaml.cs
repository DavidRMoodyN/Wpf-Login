using System;
using System.Windows;
using System.Windows.Input;
using WpfLogin.Controllers;

namespace WpfLogin.Views
{
    public partial class Login:Window
    {
        private LoginController _Controller;

        public Login() {
            InitializeComponent();
            InitComponet();
        }

        public void InitComponet() {
            _Controller = new LoginController(this);
            NameSingUp.KeyDown += new KeyEventHandler(_Controller._KeyDownTextBox);
            NameLoginIn.KeyDown += new KeyEventHandler(_Controller._KeyDownTextBox);
            ButtonExit.Click += new RoutedEventHandler(_Controller.ButtonRoutedEventArgs);
            ButtonLogin.Click += new RoutedEventHandler(_Controller.ButtonRoutedEventArgs);
            ButtonSingUp.Click += new RoutedEventHandler(_Controller.ButtonRoutedEventArgs);
            ButtonRegistro.Click += new RoutedEventHandler(_Controller.ButtonRoutedEventArgs);
            ButtonVolverLogin.Click += new RoutedEventHandler(_Controller.ButtonRoutedEventArgs);
        }

        private void GridPrincipalMouseDown(object sender,MouseButtonEventArgs e) => DragMove();
    }
}

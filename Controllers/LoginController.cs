using System;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;
using WpfLogin.Views;
using WpfLogin.Models;
using System.Windows.Input;
using WpfLogin.Core;

namespace WpfLogin.Controllers
{
    class LoginController
    {
        private Login loginView;
        private List<UserModel> listUserModel;

        public LoginController(Login loginView) {
            this.loginView = loginView;
            listUserModel = new List<UserModel>();
            loginView.NameLoginIn.Focus();
        }

        public void ButtonRoutedEventArgs(object sender,RoutedEventArgs e) {
            switch(((Button)sender).Name) {
                case "ButtonLogin": {
                        if(!ValidationUser(GetDataUser(false))) {
                            loginView.IncorrectLoginIn.Text = "Completar campos!";
                            return;
                        }
                        if(ValidateExistenceUser(GetDataUser(false))) {
                            listUserModel.Clear();
                            loginView.Hide();
                            MainWindow mainWindow = new MainWindow();
                            mainWindow.ShowDialog();
                            loginView.Close();
                        } else loginView.IncorrectLoginIn.Text = "Usuario No Existe!";
                        break;
                    }
                case "ButtonVolverLogin": GridLoginVisiblility(); break;
                case "ButtonRegistro": GridRegiterVisiblility(); break;
                case "ButtonSingUp": ButtonSingUP(); break;
                default: loginView.Close(); break;
            }
        }

        public void _KeyDownTextBox(object sender,KeyEventArgs e) {
            switch(((TextBox)sender).Name) {
                case "NameSingUp":
                    if(e.Key == Key.Enter) loginView.PasswordSingUp.Focus();
                    break;
                case "NameLoginIn":
                    if(e.Key == Key.Enter) loginView.PasswordLoginIn.Focus();
                    break;
            }
        }

        public bool ValidateExistenceUser(UserModel user) {
            CargarUser();
            return listUserModel.Contains(user);
        }

        private bool ValidationUser(UserModel e) {
            return e.name.Length > 0 && e.password.Length > 0;
        }

        private void _MouseDown(object sender,MouseButtonEventArgs e) => loginView.DragMove();

        public UserModel GetDataUser(bool v) {
            if(v) {
                return new UserModel() {
                    name = loginView.NameSingUp.Text.Trim().Replace(" ",""),
                    password = loginView.PasswordSingUp.Password.Trim().Replace(" ",""),
                };
            }
            return new UserModel() {
                name = loginView.NameLoginIn.Text.Trim().Replace(" ",""),
                password = loginView.PasswordLoginIn.Password.Trim().Replace(" ",""),
            };
        }

        public void GridRegiterVisiblility() {
            loginView.GridLogin.Visibility = Visibility.Collapsed;
            loginView.GridRegister.Visibility = Visibility.Visible;
            loginView.NameSingUp.Focus();
        }

        public void GridLoginVisiblility() {
            loginView.GridRegister.Visibility = Visibility.Collapsed;
            loginView.GridLogin.Visibility = Visibility.Visible;
            ClearFields();
            listUserModel.Clear();
        }

        private void ButtonSingUP() {
            if(!ValidationUser(GetDataUser(true))) {
                loginView.IncorrectSingUp.Text = "Completar Campos!";
                return;
            }
            if(ValidateExistenceUser(GetDataUser(true))) {
                loginView.IncorrectSingUp.Text = "Usuario Existente!";
                return;
            } else {
                UserFile.Save(ListDataUser(),true);
                GridLoginVisiblility();
            }
        }

        private void ClearFields() {
            loginView.NameLoginIn.Clear();
            loginView.NameSingUp.Clear();
            loginView.PasswordLoginIn.Clear();
            loginView.PasswordSingUp.Clear();
            loginView.IncorrectSingUp.Text = "";
            loginView.IncorrectLoginIn.Text = "";
        }

        private List<UserModel> ListDataUser() {
            listUserModel = new List<UserModel>();
            listUserModel.Add(GetDataUser(true));
            return listUserModel;
        }

        public void CargarUser() {
            foreach(var v in UserFile.Open()) {
                listUserModel.Add(new UserModel() {
                    name = v.name,password = v.password
                });
            }
        }
    }
}

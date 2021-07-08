using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Windows;
using WpfLogin.Models;

namespace WpfLogin.Core
{
    public class UserFile
    {
        private static string pathSource = @"Login\Usuarios";
        private static DirectoryInfo folderSource = new DirectoryInfo(pathSource);

        public static List<UserModel> Open() {
            string contenido;
            List<UserModel> listUserModel = new();
            if(DestinationFolder() && RegistryNumbre() > 0) {
                try {
                    StreamReader stream = new StreamReader(pathSource + @"\Usuarios.txt");
                    while((contenido = stream.ReadLine()) != null) {
                        string[] liniSeparator = contenido.Split(',');
                        listUserModel.Add(new UserModel() {
                            name = liniSeparator[0],
                            password = liniSeparator[1],
                        });
                    }
                    stream.Close();
                } catch {
                }
            }
            return listUserModel;
        }

        public static void Save(List<UserModel> obj,bool v) {
            DestinationFolder();
            StreamWriter stream = new StreamWriter(pathSource + @"\Usuarios.txt",v);
            foreach(var u in obj) {
                stream.WriteLine(u.name + "," + u.password);
            }
            stream.Flush(); stream.Close();
        }

        public static int RegistryNumbre() {
            return folderSource.GetFiles().Length;
        }

        public static bool DestinationFolder() {
            if(!folderSource.Exists) {
                folderSource.Create();
                return false;
            }
            return true;
        }
    }
}

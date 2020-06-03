using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DataBase_FinalProjects.Libs
{
    public class Username
    {
        private static string _username = "";
        public static string username
        {
            get { return _username; }
            set { _username = value; }
        }

        private static int _permission = -1;  // -1 là không có quyền, 0 là quyền Staff, 1 là quyền admin
        public static int permission
        {
            get { return _permission; }
            set { _permission = value; }
        }

        private static int _iddepartment = -1; // không có phòng nào được chọn
        public static int iddepartment
        {
            get { return _iddepartment; }
            set { _iddepartment = value; }
        }


        private static string _namedepartment = "";
        public static string namedepartment
        {
            get { return _namedepartment; }
            set { _namedepartment = value; }
        }
    }
}
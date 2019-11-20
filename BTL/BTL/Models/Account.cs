using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL.Models
{
    public class Account
    {
        public String UserNamre { get; set; }
        public String Password { get; set; }
        public String Address { get; set; }
        public String DataOfBirth { get; set; }
        public Boolean Gender { get; set; }
        public Boolean  Role { get; set; }

        public Account(string userNamre, string password, string address, string dataOfBirth, bool gender, Boolean role)
        {
            UserNamre = userNamre;
            Password = password;
            Address = address;
            DataOfBirth = dataOfBirth;
            Gender = gender;
            Role = role;
        }

        public Account()
        {
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GameSnipeWebsite.Models
{
    public class Employee
    {
        private int employeeId;
        private string displayName;
        private string firstName;
        private string lastName;
        private string email;
        private string password;
        private string address;
        private string phoneNumber;

        public int EmployeeId { get => employeeId; set => employeeId = value; }
        public string DisplayName { get => displayName; set => displayName = value; }
        public string FirstName { get => firstName; set => firstName = value; }
        public string LastName { get => lastName; set => lastName = value; }
        public string Email { get => email; set => email = value; }
        public string Password { get => password; set => password = value; }
        public string Address { get => address; set => address = value; }
        public string PhoneNumber { get => phoneNumber; set => phoneNumber = value; }
    }
}
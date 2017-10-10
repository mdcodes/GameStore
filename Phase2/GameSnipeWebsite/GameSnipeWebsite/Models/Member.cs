using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GameSnipeWebsite.Models
{
    public class Member
    {
        private int memberId;
        private string userName;
        private string firstName;
        private string lastName;
        private char gender;
        private DateTime birthDate;
        private string email;
        private string billingAddress;
        private string shippingAddress;
        private string phoneNumber;
        private int favPlatform;
        private int favCategory;
        private bool verified;

        public Member() { }

        public Member(int memberId, string userName, string firstName, string lastName, char gender, DateTime birthDate, string email, string billingAddress, string shippingAddress, string phoneNumber, int favPlatform, int favCategory, bool verified)
        {
            this.memberId = memberId;
            this.userName = userName;
            this.firstName = firstName;
            this.lastName = lastName;
            this.gender = gender;
            this.birthDate = birthDate;
            this.email = email;
            this.billingAddress = billingAddress;
            this.shippingAddress = shippingAddress;
            this.phoneNumber = phoneNumber;
            this.favPlatform = favPlatform;
            this.favCategory = favCategory;
            this.verified = verified;
        }

        public int Id { get => memberId; set => memberId = value; }
        public string UserName { get => userName; set => userName = value; }
        public string FirstName { get => firstName; set => firstName = value; }
        public string LastName { get => lastName; set => lastName = value; }
        public char Gender { get => gender; set => gender = value; }
        public DateTime BirthDate { get => birthDate; set => birthDate = value; }
        public string Email { get => email; set => email = value; }
        public string BillingAddress { get => billingAddress; set => billingAddress = value; }
        public string ShippingAddress { get => shippingAddress; set => shippingAddress = value; }
        public string PhoneNumber { get => phoneNumber; set => phoneNumber = value; }
        public int FavPlatform { get => favPlatform; set => favPlatform = value; }
        public int FavCategory { get => favCategory; set => favCategory = value; }
        public bool Verified { get => verified; set => verified = value; }
    }
}
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace RADwebApp.Models
{
    public class Employee
    {
        [Required(ErrorMessage = "You cannot leave the first name blank.")]
        [StringLength(50, ErrorMessage = "First name cannot be more than 50 characters long.")]
        public string empFirst { get; set; }

        [Required(ErrorMessage = "You cannot leave the first name blank.")]
        [StringLength(100, ErrorMessage = "Last name cannot be more than 100 characters long.")]
        public string empLast { get; set; }        

        [Required(ErrorMessage = "Employee must have a position.")]
        public int posID { get; set; }
    }
}
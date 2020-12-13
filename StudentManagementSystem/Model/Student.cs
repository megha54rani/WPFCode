using System;

namespace StudentManagementSystem.Model
{
    /// <summary>
    /// Defines student structure
    /// </summary>
    public class Student
    {
        #region constructor

        public Student(string photo,string name, int age, Stream dept, DateTime doj, int dueFee, int totalFee)
        {
            this.Photo = photo;
            this.Name = name;
            this.Age = age;
            this.Department = dept;
            this.DateOfJoining = doj;
            this.DueFee = dueFee;
            this.TotalFee = totalFee;
        }

        #endregion

        #region properties

        /// <summary>
        /// Student image
        /// </summary>
        public string Photo { get; set; }

        /// <summary>
        /// Student name
        /// </summary>
        /// 

        public string Name { get; set; }

        /// <summary>
        /// Student Age
        /// </summary>
        public int Age { get; set; }

        /// <summary>
        /// student stream/department
        /// </summary>
        public Stream Department { get; set; }

        /// <summary>
        /// student joining date
        /// </summary>
        public DateTime DateOfJoining { get; set; }

        /// <summary>
        /// Due fee
        /// </summary>
        public int DueFee { get; set; }

        /// <summary>
        /// total fee
        /// </summary>
        public int TotalFee { get; set; }

        #endregion

        /// <summary>
        /// Enum defines different streams
        /// </summary>
        public enum Stream
        {
            Arts,
            Commerce,
            Science
        }

    }
}

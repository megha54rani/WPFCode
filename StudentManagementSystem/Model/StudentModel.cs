using StudentManagementSystem.ViewModel;
using System;
using System.Collections.Generic;
using static StudentManagementSystem.Model.Student;

namespace StudentManagementSystem.Model
{
    public class StudentModel : ViewModelBase
    {
        #region Constructor
        private StudentModel()
        {
            LoadStudentCollection();
        }
        #endregion

        #region properties

        private List<Student> _studentList;
        public List<Student> StudentList
        {
            get
            {
                return _studentList;
            }
            set
            {
                _studentList = value;
                OnPropertyChanged("StudentList");
            }
        }

        #endregion

        #region methods
        private static StudentModel _studenModel;

        /// <summary>
        /// Create an instance of the StudentModel object or returns the already created instance of it
        /// </summary>
        /// <returns></returns>
        public static StudentModel GetInstance()
        {
            if(_studenModel == null)
            {
                _studenModel = new StudentModel();
            }
            return _studenModel;
        }

        public void LoadStudentCollection()
        {
            _studentList = new List<Student>();
            _studentList.Add(new Student(@"/Images/Jack.jpg","Jack", 23, Stream.Arts, new DateTime(2019, 2, 20), 500 , 5000));
            _studentList.Add(new Student(@"/Images/Dom.jpg", "Dom", 33, Stream.Science, new DateTime(2019, 2, 20), 2000 , 5000));         
        }
        #endregion
    }
}

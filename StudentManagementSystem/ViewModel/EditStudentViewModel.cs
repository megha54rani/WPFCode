using GalaSoft.MvvmLight.Command;
using GalaSoft.MvvmLight.Messaging;
using StudentManagementSystem.Model;
using System.Windows;
using static StudentManagementSystem.Model.Student;

namespace StudentManagementSystem.ViewModel
{
    /// <summary>
    /// Edit Student ViewModel
    /// </summary>
    public class EditStudentViewModel : ViewModelBase
    {

        #region Constructor
        public EditStudentViewModel(Student studentDetails)
        {
            this.Photo = studentDetails.Photo;
            _name = studentDetails.Name;
            _age = studentDetails.Age;
            _department = studentDetails.Department;
            _dateOfJoining = studentDetails.DateOfJoining.ToShortDateString();
            _dueFee = studentDetails.DueFee;
            _totalFee = studentDetails.TotalFee;
        }
        #endregion

        #region properties

        /// <summary>
        /// Student image
        /// </summary>
        public string Photo
        {
            get; set;
        }

        private string _name;
        /// <summary>
        /// Student name
        /// </summary>
        /// 

        public string Name
        {
            get
            {
                return _name;
            }
            set
            {
                _name = value;
                OnPropertyChanged("Name");
            }
        }

        private int _age;
        /// <summary>
        /// Student Age
        /// </summary>
        public int Age
        {
            get
            {
                return _age;
            }
            set
            {
                if (_age > 0)
                {
                    if (value >= 22 && value <= 35)
                    {
                        _age = value;
                        OnPropertyChanged("Age");
                    }
                    else
                    {
                        MessageBox.Show("Age should be between 22 years to 35 years");
                    }
                }
            }
        }

        private Stream _department;
        /// <summary>
        /// student stream/department
        /// </summary>
        public Stream Department
        {
            get
            {
                return _department;
            }
            set
            {
                _department = value;
                OnPropertyChanged("Department");
            }
        }

        private string _dateOfJoining;
        /// <summary>
        /// student joining date
        /// </summary>
        public string DateOfJoining
        {
            get
            {
                return _dateOfJoining;
            }
            set
            {
                _dateOfJoining = value;
                OnPropertyChanged("DateOfJoining");
            }
        }

        private int _dueFee;
        /// <summary>
        /// Due fee
        /// </summary>
        public int DueFee
        {
            get
            {
                return _dueFee;
            }
            set
            {
                _dueFee = value;
                OnPropertyChanged("DueFee");
            }
        }

        private int _totalFee;
        /// <summary>
        /// total fee
        /// </summary>
        public int TotalFee
        {
            get
            {
                return _totalFee;
            }
            set
            {
                _totalFee = value;
                OnPropertyChanged("TotalFee");
            }
        }

        #endregion

        #region Commands

        private RelayCommand _cancelCommand;
        public RelayCommand CancelCommand
        {
            get { return _cancelCommand ?? (_cancelCommand = new RelayCommand(CancelEditWindow)); }
        }

        private RelayCommand<object> _updateCommand;
        public RelayCommand<object> UpdateCommand
        {
            get { return _updateCommand ?? (_updateCommand = new RelayCommand<object>(UpdateDetails)); }
        }

        private RelayCommand _increaseAgeCommand;
        public RelayCommand IncreaseAgeCommand
        {
            get { return _increaseAgeCommand ?? (_increaseAgeCommand = new RelayCommand(IncreaseAge)); }
        }

        private RelayCommand _decreaseAgeCommand;

        public RelayCommand DecreaseAgeCommand
        {
            get { return _decreaseAgeCommand ?? (_decreaseAgeCommand = new RelayCommand(DecreaseAge)); }
        }

        #endregion

        #region methods
        /// <summary>
        /// Close Edit details window
        /// </summary>
        private void CancelEditWindow()
        {
            for (int intCounter = App.Current.Windows.Count - 1; intCounter >= 0; intCounter--)
                if (App.Current.Windows[intCounter].DataContext == this)
                {
                    App.Current.Windows[intCounter].Close();
                }
        }

        /// <summary>
        /// Update student details
        /// </summary>
        private void UpdateDetails(object updatedstudent)
        {
            bool isfound=false;

            //Getting updated values
            var photoPropertyInfo = updatedstudent.GetType().GetProperty("Photo");
            string photoValue = photoPropertyInfo.GetValue(updatedstudent, null).ToString();

            var namePropertyInfo = updatedstudent.GetType().GetProperty("Name");
            string nameValue = namePropertyInfo.GetValue(updatedstudent, null).ToString();

            var agePropertyInfo = updatedstudent.GetType().GetProperty("Age");
            int ageValue = (int)agePropertyInfo.GetValue(updatedstudent, null);            

            var dueFeePropertyInfo = updatedstudent.GetType().GetProperty("DueFee");
            int dueFeeValue = (int)dueFeePropertyInfo.GetValue(updatedstudent, null);

            var totalFeePropertyInfo = updatedstudent.GetType().GetProperty("TotalFee");
            int totalFeeValue = (int)totalFeePropertyInfo.GetValue(updatedstudent, null);

            // Student student=  StudentModel.GetInstance().StudentList.Find(x => x.Photo == value);

            foreach (Student student in StudentModel.GetInstance().StudentList)
            {
                if (student.Photo == photoValue)
                {
                    student.Name = nameValue;
                    student.Age = ageValue;
                    student.DueFee = dueFeeValue;
                    student.TotalFee = totalFeeValue;
                    isfound = true;
                }
                if(isfound)
                {
                    break;
                }
            }
            Messenger.Default.Send(new NotificationMessage("StudentCollectionUpdated"));
            CancelEditWindow();
        }

        /// <summary>
        /// Increases age value by 1
        /// </summary>
        private void IncreaseAge()
        {
            this.Age++;
            OnPropertyChanged("Age");
        }

        /// <summary>
        /// Decreases age value by 1
        /// </summary>
        private void DecreaseAge()
        {
            this.Age--;
        }
        #endregion

    }
}

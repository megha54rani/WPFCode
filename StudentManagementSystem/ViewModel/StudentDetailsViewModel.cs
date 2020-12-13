using GalaSoft.MvvmLight.Command;
using GalaSoft.MvvmLight.Messaging;
using StudentManagementSystem.Model;
using StudentManagementSystem.View;
using System.Collections.Generic;

namespace StudentManagementSystem.ViewModel
{
    /// <summary>
    /// Student Details ViewModel
    /// </summary>
    public class StudentDetailsViewModel : ViewModelBase
    {
        #region constructor
        public StudentDetailsViewModel()
        {
            StudentModel = StudentModel.GetInstance();
            Messenger.Default.Register<NotificationMessage>(this, MessageNotificationRecived);
        }
        #endregion

        #region Properties
        public StudentModel StudentModel
        {
            get;
        }

        public List<Student> StudentList
        {
            get { return StudentModel.StudentList; }
            
        }

        #endregion

        #region Commands

        private RelayCommand<Student> _editDetailsCommand;

        /// <summary>
        /// Edit detail button clicked
        /// </summary>
        public RelayCommand<Student> EditDetailsCommand
        {
            get
            {              
                 return _editDetailsCommand ?? (_editDetailsCommand = new RelayCommand<Student>(EditDetails));
            }
        }

        #endregion

        #region Methods

        public void  EditDetails(Student studentDetails)
        {
            EditStudentView editStudentView = new EditStudentView();
            EditStudentViewModel editStudentViewModel = new EditStudentViewModel(studentDetails);
            editStudentView.DataContext = editStudentViewModel;

            //Displaying view
            editStudentView.Show();
        }

        private void MessageNotificationRecived(NotificationMessage msg)
        {
            if (msg.Notification == "StudentCollectionUpdated")
            {
                OnPropertyChanged("StudentList");
            }
        }

        #endregion
        }
}

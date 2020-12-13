using System.ComponentModel;

namespace StudentManagementSystem.ViewModel
{
    /// <summary>
    /// Base class for all viewmodels
    /// </summary>
    public class ViewModelBase : INotifyPropertyChanged
    {
        #region INotifyPropertyChanged Members

        public event PropertyChangedEventHandler PropertyChanged;

        /// <summary>
        /// Method to trigger the event, that a property has changed
        /// </summary>
        /// <param name="propertyName">Name of the property, which was changed</param>
        public void OnPropertyChanged(string propertyName)
        {
            PropertyChangedEventHandler handler = PropertyChanged;
            if (handler != null)
            {
                handler(this, new PropertyChangedEventArgs(propertyName));
            }
        }

        #endregion
    }
}

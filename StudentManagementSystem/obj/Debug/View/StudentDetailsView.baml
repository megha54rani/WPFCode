   M S B A M L   `   `   `  ����R  NStudentManagementSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:StudentManagementSystem.ViewStudentManagementSystem.View  5   	   U/clr-namespace:StudentManagementSystem.ViewModel!StudentManagementSystem.ViewModel  5   	   -    'StudentManagementSystem.View.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   <local*clr-namespace:StudentManagementSystem.View     5   	   E	viewmodel/clr-namespace:StudentManagementSystem.ViewModel     5   	     � Title$  
MainWindow��5	   	   $	��200��6   $	��550��6)    � 
ResizeMode$ NoResize=�5
   	    � DataContext 5      ?   9StudentManagementSystem.ViewModel.StudentDetailsViewModel  5   
   .��5      &   System.Windows.Controls.DataGrid  -   5        $��studentDetailsDataGrid��5   '   $��86��6   $��5q�6      	RowHeight$ 30Q�5   D   $
��Left=�6S      
IsReadOnly .    AutoGenerateColumns .  ��6   �� *StudentList+ �� IsAsync .    Columns 5   
   4  .System.Windows.Controls.DataGridTemplateColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Image��6%   	   CellTemplate	 5      �� 5      .R�5      �� ��6    �� *Photo+5      5      0  *System.Windows.Controls.DataGridTextColumn  5      $
 Name��6!   1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 6/   �� *Name+  5      $	 Age��6!   
 6.   �� *Age+  5      $ Stream��6!   
 61   �� *
Department+  5      $ Date Of Joining��6!   
 6:   �� *DateOfJoining+  5      $ Due Fee (Rs)��6!   
 67   �� *DueFee+  5      $ Tota lFee (Rs)��6!   
 69   �� *
TotalFee+  5       	 5!      �� 5"      .R�5#      �� $��30��6!   $��25��6,   ��5$   !   ��  �� Path$$ DataContext.EditDetailsCommand� �� RelativeSource ��  �� AncestorType" � �� Mode$ FindAncestor=���5&   !   �� .��5'      �� $��/Images/Data-Edit.png��6$   5(      5)      5+      5-      5.      
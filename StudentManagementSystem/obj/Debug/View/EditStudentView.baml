   M S B A M L   `   `   `  ����R  NStudentManagementSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:StudentManagementSystem.ViewStudentManagementSystem.View  5   	   2    ,StudentManagementSystem.View.EditStudentView   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   <local*clr-namespace:StudentManagementSystem.View     5   	     � Title$  EditStudentWindow��5   	   $	��350��6#   $	��700��60   
����  �$��1q�6O    � 
ResizeMode$ NoResize=�5	   	    � 	Resources 5
       �� 
TargetType   
LabelStyle �� Property �� Value  	TextStyle��%  &	        &	 r     �� 5   
   " ��6   .�5      ��  � ��$ SemiBold"�6+   �� 5       � ��$ 12(�6)   5      �� 5   
   " ��6   .�5      ��  � ��$	 Top=�62   �� 5       � ��
 �����6+   �� 5       � ��$ 35��6'   5      5      .��5      � $��10q�6    � ColumnDefinitions 5   
   �� 5      $
��auto �6   �� 5      $	��25* �6   �� 5      $	��10* �6    � RowDefinitions 5   
   �� 5      $��40 �6   �� 5       $��40 �6   �� 5!      $��40 �6   �� 5"      $��40 �6   �� 5#      $��40 �6   �� 5$      $��40 �6   �� 5%      $��60 �6   .+�5)   
   �� $��0��6   $��0��6   $
��Name��6-   #��[  6<   �� 5*   
   $��1��6   $��0��6   $	��Age��6-   #��[  6;   �� 5+   
   $��2��6   $��0��6   $��stream��6-   #��[  6>   �� 5,   
   $��3��6   $��0��6   $��Date Of Joining��6-   #��[  6G   �� 5-   
   $��4��6   $��0��6   $��Due Fee��6-   #��[  6?   �� 5.   
   $��5��6   $��0��6   $��	Total Fee��6-   #��[  6A   �� 52   
   -   5        $��nameTextBox��52      $��0��6&   $��1��63   #��[ 6�   ��6C   �� *Name+ �� Mode$ TwoWay=�	 �� UpdateSourceTrigger$	 PropertyChanged=�6�   �� 53   
   $��1��6   $��1��6"   
 �� Orientation$
 
Horizontal=�62   .+�54      �� -   5        $��
ageTextBox��54   )    �� 
IsReadOnly . #��[ 6�   $	��370��6�   ��6<   �� *Age+$ TwoWay=�$	 PropertyChanged=�6�   �� 55      $��5��6   �� 56      $
 Vertical=�6   .+�57      �� -   5         ��Name$ upButton��57      $��˄��6,   $��20��68   ��6C   �� *IncreaseAgeCommand+�� 58      -   5        $ 
downButton��58      $��˅��6.   $��20��6:   ��6E   �� *DecreaseAgeCommand+59      5:      �� 5<   
   -   5        $��streamTextBox��5<       . $��2��69   $��1��6F   #��[ 6�   ��6V   �� *
Department+$ TwoWay=�$	 PropertyChanged=�6�   �� 5=   
   -   5        $��
dojTextBox��5=       . $��3��66   $��1��6C   #��[ 6�   ��6S   �� *DateOfJoining+$ TwoWay=�$	 PropertyChanged=�6�   �� 5>   
   -   5        $��dueFeeTextBox��5>      $��4��6'   $��1��64   #��[ 6�   ��6D   �� *DueFee+$ TwoWay=�$	 PropertyChanged=�6�   �� 5?   
   -   5        $��totalFeeTextBox��5?      $��5��6)   $��1��66   #��[ 6�   ��6F   �� *
TotalFee+$ TwoWay=�$	 PropertyChanged=�6�   � 5A   
   $��2��6   $��3��6   .+�5B      �� $��Center=�6.   ��6   �� *Photo+6.   5C      �� 5F   
   $��35��6   $��6��6!   $��1��6.   $��2��6>   $
 
Horizontal=�6R   $��Center=�6k   .+�5G      �� $��Update��6   $��75��6&   ��61   �� *UpdateCommand+��6S   �� �� 5H      $��15��6   �� 5I      $��Close��6   $��75��6&   ��61   �� *CancelCommand+5J      5K      5M      
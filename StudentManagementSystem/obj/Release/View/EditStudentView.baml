   M S B A M L   `   `   `  ���� R  NStudentManagementSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:StudentManagementSystem.ViewStudentManagementSystem.View  2    ,StudentManagementSystem.View.EditStudentView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     <local*clr-namespace:StudentManagementSystem.View       � Title$  EditStudentWindow��$	��350��$	��700��
����  �$��1q� � 
ResizeMode$ NoResize=� � 	Resources  �� 
TargetType   
LabelStyle �� Property �� Value  	TextStyle��%�   &	        &	 ?     �� " ��.���  � ��$ SemiBold"���  � ��$ 12(��� " ��.���  � ��$	 Top=���  � ��
 �������  � ��$ 35��.��� $��10q� � ColumnDefinitions �� $
��auto ��� $	��25* ��� $	��10* � � RowDefinitions �� $��40 ��� $��40 ��� $��40 ��� $��40 ��� $��40 ��� $��40 ��� $��60 �.+��� $��0��$��0��$
��Name��#��[  �� $��1��$��0��$	��Age��#��[  �� $��2��$��0��$��stream��#��[  �� $��3��$��0��$��Date Of Joining��#��[  �� $��4��$��0��$��Due Fee��#��[  �� $��5��$��0��$��	Total Fee��#��[  �� -   $��nameTextBox��$��0��$��1��#��[ ���� *Name+ �� Mode$ TwoWay=�	 �� UpdateSourceTrigger$	 PropertyChanged=��� $��1��$��1��
 �� Orientation$
 
Horizontal=�.+��� -   $��
ageTextBox�� �� 
IsReadOnly . #��[ $	��370������ *Age+$ TwoWay=�$	 PropertyChanged=��� $��5���� $
 Vertical=�.+��� -    ��Name$ upButton��$��˄��$��20������ *IncreaseAgeCommand+�� -   $ 
downButton��$��˅��$��20������ *DecreaseAgeCommand+�� -   $��streamTextBox��$��2��$��1��#��[ ���� *
Department+$ TwoWay=�$	 PropertyChanged=��� -   $��
dojTextBox��$��3��$��1��#��[ ���� *DateOfJoining+$ TwoWay=�$	 PropertyChanged=��� -   $��dueFeeTextBox��$��4��$��1��#��[ ���� *DueFee+$ TwoWay=�$	 PropertyChanged=��� -   $��totalFeeTextBox��$��5��$��1��#��[ ���� *
TotalFee+$ TwoWay=�$	 PropertyChanged=�� $��2��$��3��.+��� $��Center=����� *Photo+�� $��35��$��6��$��1��$��2��$
 
Horizontal=�$��Center=�.+��� $��Update��$��75������ *UpdateCommand+�� $��15���� $��Close��$��75������ *CancelCommand+
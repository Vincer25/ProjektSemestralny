   M S B A M L   `   `   `  ����M  IProjektSemestralny, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:ProjektSemestralnyProjektSemestralny  5   	   (    "ProjektSemestralny.TurnamentWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:ProjektSemestralny     5   	   -   5          � Title$(  "Turnament Manager - Lista Zawodów��5   	   $	��600��63   $
��1000��6@    � 	Resources 5	      (   "ProjektSemestralny.DatabaseDataSet   databaseDataSet  turnamentViewSource �� Source �� Source��%Z   &	        &	      7     5
   
   6    �� 5   
    6;   �� *	Turnament+8   5      .��5      �  � DataContext# [ 6   ���	#FF0F0F2D.+�5   
   �� -   5         ��Name$ TurnamentNameBlock��5      $
��Left=�60   $��311,349,0,0q�6K   $
��Wrap=�6`   $��Nazwa Zawodów��6t   $	��Top=�6�   $��28��6�   $	��134��6�   $
��Bold"�6�   $��16(�6�   
�������6�   �� 5   
   -   5        $ TurnamentDateBlock��5      $
��Left=�60   $��311,399,0,0q�6K   $
��Wrap=�6`   $	��Top=�6t   $��28��6�   $	��134��6�   $
��Bold"�6�   $��16(�6�    J� RenderTransformOrigin$ 4.291,-2.911&�6�   
��������� 6�   $
�Data��6  �� 6  $�	 Zawodów��6  6&  �� 5   
   -   5         ��Name$ TurnamentNameBox��5      $
��Left=�6,   $��28��6G   $��450,349,0,0q�6S    �� TextWrapping$
 Wrap=�6h   $	��Top=�6|   $	��224��6�   $��16(�6�   ���	#FF0F0F2D��6�   Z� 	 �� SelectionBrush	 6�   Z� 6�   (  "System.Windows.Controls.DatePicker  5   
   -   5        
  Name$
 TurnamentDateBox��5      $
��Left=�6/   $��450,399,0,0q�6J   $	��Top=�6_   $	��224��6w   $��28��6�   ���	#FF0F0F2D$
��Bold"�6�   ��6�   Z� 6�   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ turnamentDataGrid��5         AutoGenerateColumns .     EnableRowVirtualization . $��10,10,10,245.5q�6�      RowDetailsVisibilityMode$ VisibleWhenSelected=�6�      CanUserAddRows .  
����������	#FF0F0F2D��6i   �� ��6	  Z�    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      -   5        turnamentNameColumn��,  &System.Windows.Controls.DataGridColumn   Header$ Nazwa Zawodów��5   d      Width5  /System.Windows.Controls.DataGridLengthConverter$	 250 6{   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6B   �� *TurnamentName+6{   4  .System.Windows.Controls.DataGridTemplateColumn  5      -   5        turnamentDateColumn��$ Data Zawodów��5   F   $	 200 6\      CellTemplate 5      �� 5      .R�5           SelectedDate 6)   �� *TurnamentDate+ �� Mode$ TwoWay=� �� NotifyOnValidationError .  �� ValidatesOnExceptions . 5      5      5      �� 5   
   -	   5         ��Name$ 
BackButton��5      $��Powrót��6%   $
��Left=�66   $��50��6Q   $��
90,480,0,0q�6]   $	��Top=�6q   $	��125��6�   $
��Bold"�6�   $��18(�6�   ���	#FFFF4C70
����������	#FF0F0F2D��5      �� 5        �� 
TargetType" ��6"   .R�5!      ��  �� CornerRadius$ 20��5"      #��z��5#      ._�5$      �� $��Center=�6+   $��Center=�5%      5&      5'      5)      �� 5*   
   -
   5        $ 
SendButton��5*      $��Wyślij��6%   $
��Left=�66   $��50��6Q   $��320,480,0,0q�6]   $	��Top=�6r   $	��125��6�   $
��Bold"�6�   $��18(�6�   ���	#FF289DFF���	#FF0F0F2D���	#FF0F0F2D��5+      �� 5,      " ��6"   .R�5-      �� $ 20��5.      #��z��5/      ._�50      �� $��Center=�6+   $��Center=�51      52      53      55      �� 56   
   -   5        $ UpdateButton��56      $��
Aktualizuj��6'   $
��Left=�6<   $��50��6W   $��549,480,0,0q�6c   $	��Top=�6x   $	��125��6�   $
��Bold"�6�   $��18(�6�   ���	#FF289DFF���	#FF0F0F2D���	#FF0F0F2D��57      �� 58      " ��6"   .R�59      �� $ 20��5:      #��z��5;      ._�5<      �� $��Center=�6+   $��Center=�5=      5>      5?      5A      �� 5B   
   -   5        $ DeleteButton��5B      $��Usuń��6'   $��50��66   $��780,480,90,0q�6B   $	��Top=�6X   $
��Bold"�6�   $��18(�6�   ���	#FFFF4C70
����������	#FF0F0F2D��5C      �� 5D      " ��6"   .R�5E      �� $ 20��5F      #��z��5G      ._�5H      �� $��Center=�6+   $��Center=�5I      5J      5K      5M      5N      5O      
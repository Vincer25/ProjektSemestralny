   M S B A M L   `   `   `  ����M  IProjektSemestralny, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:ProjektSemestralnyProjektSemestralny  5   	   *    $ProjektSemestralny.CompetitionWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:ProjektSemestralny     5   	   -   5          � Title$+  %Turnament Manager - Lista Konkurencji��5   	   $	��600��67   $
��1000��6D    � 	Resources 5	      (   "ProjektSemestralny.DatabaseDataSet   databaseDataSet  competitionsViewSource �� Source �� Source��%]   &	        &	      7     5
   
   6    �� 5   
    6>   �� *Competitions+8   5      .��5      �  � DataContext# [ 6   ���	#FF0F0F2D.+�5   
   �� -   5         ��Name$ 
ShortBlock��5      $
��Left=�6(   $��298,368,0,0q�6C   $
��Wrap=�6X   $��Skrót konkurencji��6l   $	��Top=�6�   $��28��6�   $	��141��6�   $
��Bold"�6�   $��16(�6�   
�������6�   �� 5   
   -   5        $ 	NameBlock��5      $
��Left=�6'   $��298,400,0,0q�6B   $
��Wrap=�6W   $��Nazwa Konkurencji��6k   $	��Top=�6�   $��28��6�   $	��158��6�   $
��Bold"�6�   $��16(�6�   
�������6�   �� 5   
   -   5         ��Name$ ShortBox��5      $
��Left=�6$   $��28��6?   $��465,368,0,0q�6K    �� TextWrapping$
 Wrap=�6`   $	��Top=�6t   $	��228��6�   $��16(�6�   ���	#FF0F0F2D��6�   Z�  �� SelectionBrush 6�   Z� �� 5   
   -   5        $ NameBox��5      $
��Left=�6#   $��28��6>   $��465,400,0,0q�6J   $
 Wrap=�6_   $	��Top=�6s   $	��228��6�   $��16(�6�   ���	#FF0F0F2D��6�   Z�  6�   Z� 6�   &   System.Windows.Controls.DataGrid  5   
   -   5        	  Name$	 competitionsDataGrid��5      
   AutoGenerateColumns
 .     EnableRowVirtualization . $��10,10,10,243.5q�6�      RowDetailsVisibilityMode$ VisibleWhenSelected=�6�      CanUserAddRows .  ���	#FF0F0F2D
���������6l   �� ��6�   Z�    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      -   5        	cutColumn��,  &System.Windows.Controls.DataGridColumn   Header$ Skrót��5   P      Width5  /System.Windows.Controls.DataGridLengthConverter$ 50 6_   1  +System.Windows.Controls.DataGridBoundColumn   Binding 68   �� *Cut+6_     5      -   5        competitionNameColumn��$ Nazwa Konkurencji��5   h   $	 200 6�    6D   �� *CompetitionName+6�   5      �� 5   
   -	   5         ��Name$ 
BackButton��5      $��Powrót��6%   $
��Left=�66   $��50��6Q   $��
90,484,0,0q�6]   $	��Top=�6q   $	��125��6�   $
��Bold"�6�   $��18(�6�   ���	#FFFF4C70
����������	#FF0F0F2D��5      �� 5       �� 
TargetType" ��6"   .R�5      ��  �� CornerRadius$ 20��5      #��z��5      ._�5      �� $��Center=�6+   $��Center=�5      5       5!      5#      �� 5$   
   -
   5        $ 
SendButton��5$      $��Wyślij��6%   $
��Left=�66   $��50��6Q   $��314,484,0,0q�6]   $	��Top=�6r   $	��125��6�   $
��Bold"�6�   $��18(�6�   ���	#FF289DFF���	#FF0F0F2D���	#FF0F0F2D��5%      �� 5&      " ��6"   .R�5'      �� $ 20��5(      #��z��5)      ._�5*      �� $��Center=�6+   $��Center=�5+      5,      5-      5/      �� 50   
   -   5        $ UpdateButton��50      $��
Aktualizuj��6'   $
��Left=�6<   $��50��6W   $��545,484,0,0q�6c   $	��Top=�6x   $	��125��6�   $
��Bold"�6�   $��18(�6�   ���	#FF289DFF���	#FF0F0F2D���	#FF0F0F2D��51      �� 52      " ��6"   .R�53      �� $ 20��54      #��z��55      ._�56      �� $��Center=�6+   $��Center=�57      58      59      5;      �� 5<   
   -   5        $ DeleteButton��5<      $��Usuń��6'   $��50��66   $��769,484,90,0q�6B   $	��Top=�6X   $
��Bold"�6�   $��18(�6�   ���	#FFFF4C70
����������	#FF0F0F2D��5=      �� 5>      " ��6"   .R�5?      �� $ 20��5@      #��z��5A      ._�5B      �� $��Center=�6+   $��Center=�5C      5D      5E      5G      5H      5I      
   M S B A M L   `   `   `  ���� M  IProjektSemestralny, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:ProjektSemestralnyProjektSemestralny  *    $ProjektSemestralny.CompetitionWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     2local clr-namespace:ProjektSemestralny     -     � Title$+  %Turnament Manager - Lista Konkurencji��$	��600��$
��1000�� � 	Resources (   "ProjektSemestralny.DatabaseDataSet   databaseDataSet  competitionsViewSource �� Source �� Source��%A   &	        &	      7     ��  �� *Competitions+8   .���  � DataContext# [ ���	#FF0F0F2D.+��� -    ��Name$ 
ShortBlock��$
��Left=�$��298,368,0,0q�$
��Wrap=�$��Skrót konkurencji��$	��Top=�$��28��$	��141��$
��Bold"�$��16(�
��������� -   $ 	NameBlock��$
��Left=�$��298,400,0,0q�$
��Wrap=�$��Nazwa Konkurencji��$	��Top=�$��28��$	��158��$
��Bold"�$��16(�
��������� -    ��Name$ ShortBox��$
��Left=�$��28��$��465,368,0,0q� �� TextWrapping$
 Wrap=�$	��Top=�$	��228��$��16(����	#FF0F0F2D��Z�  �� SelectionBrush Z� �� -   $ NameBox��$
��Left=�$��28��$��465,400,0,0q�$
 Wrap=�$	��Top=�$	��228��$��16(����	#FF0F0F2D��Z�  Z� &   System.Windows.Controls.DataGrid  -   	  Name$	 competitionsDataGrid��
   AutoGenerateColumns
 .     EnableRowVirtualization . $��10,10,10,243.5q�   RowDetailsVisibilityMode$ VisibleWhenSelected=�   CanUserAddRows .  ���	#FF0F0F2D
����������� ��Z�    Columns 0  *System.Windows.Controls.DataGridTextColumn  -   	cutColumn��,  &System.Windows.Controls.DataGridColumn   Header$ Skrót��   Width5  /System.Windows.Controls.DataGridLengthConverter$ 50 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *Cut+  -   competitionNameColumn��$ Nazwa Konkurencji��$	 200  �� *CompetitionName+�� -	    ��Name$ 
BackButton��$��Powrót��$
��Left=�$��50��$��
90,484,0,0q�$	��Top=�$	��125��$
��Bold"�$��18(����	#FFFF4C70
����������	#FF0F0F2D����  �� 
TargetType" ��.R���  �� CornerRadius$ 20��#��z��._��� $��Center=�$��Center=��� -
   $ 
SendButton��$��Wyślij��$
��Left=�$��50��$��314,484,0,0q�$	��Top=�$	��125��$
��Bold"�$��18(����	#FF289DFF���	#FF0F0F2D���	#FF0F0F2D���� " ��.R��� $ 20��#��z��._��� $��Center=�$��Center=��� -   $ UpdateButton��$��
Aktualizuj��$
��Left=�$��50��$��545,484,0,0q�$	��Top=�$	��125��$
��Bold"�$��18(����	#FF289DFF���	#FF0F0F2D���	#FF0F0F2D���� " ��.R��� $ 20��#��z��._��� $��Center=�$��Center=��� -   $ DeleteButton��$��Usuń��$��50��$��769,484,90,0q�$	��Top=�$
��Bold"�$��18(����	#FFFF4C70
����������	#FF0F0F2D���� " ��.R��� $ 20��#��z��._��� $��Center=�$��Center=�
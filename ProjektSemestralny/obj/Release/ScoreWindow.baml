   M S B A M L   `   `   `  ���� M  IProjektSemestralny, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:ProjektSemestralnyProjektSemestralny  $    ProjektSemestralny.ScoreWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     2local clr-namespace:ProjektSemestralny     -     � Title$(  "Turnament Manager - Lista Wyników��$	��600��$
��1000�� � 	Resources (   "ProjektSemestralny.DatabaseDataSet   databaseDataSet  scoreViewSource �� Source �� Source��%:   &	        &	      7     ��  �� *Score+8   .���  � DataContext# [ ���	#FF0F0F2D.+��� -    ��Name$ TurnamentNameBlock��$
��Left=�$��101,347,0,0q�$
��Wrap=�$��Nazwa Zawodów��$	��Top=�$��28��$	��133��$
��Bold"�$��16(�
��������� -   $ CompetitionNameBlock��$
��Left=�$��101,391,0,0q�$
��Wrap=�$	��Top=�$��28��$	��133��$
��Bold"�$��16(�
��������� $�Konkurencja���� �� �� -   $ PlayerNumberBlock��$
��Left=�$��101,437,0,0q�$
��Wrap=�$��Numer Startowy��$	��Top=�$��28��$	��133��$
��Bold"�$��16(�
��������� -   $ 
ScoreBlock��$
��Left=�$��573,347,0,0q�$
��Wrap=�$	��Top=�$��28��$	��133��$
��Bold"�$��16(�
��������� $�Wynik���� �� �� -   $ XBlock��$
��Left=�$��573,391,0,0q�$
��Wrap=�$	��Top=�$��28��$	��133��$
��Bold"�$��16(�$��X��
��������� -   $ 	TimeBlock��$
��Left=�$��573,437,0,0q�$
��Wrap=�$	��Top=�$��28��$	��133��$
��Bold"�$��16(�
��������� $
�Czas���� �� �� �� �� -    ��Name$ TurnamentComboBox��$
��Left=�$��28��$��262,347,0,0q�$	��Top=�$	��228�����	#FF0F0F2D��Z� �� -	   $ CompetitionComboBox��$
��Left=�$��28��$��262,391,0,0q�$	��Top=�$	��228�����	#FF0F0F2D��Z� �� -
    ��Name$ ScoreTextBox��$
��Left=�$��28��$��644,347,0,0q� �� TextWrapping$
 Wrap=�$	��Top=�$	��228��$��16(����	#FF0F0F2D��Z� 	 �� SelectionBrush	 Z� �� -   $ XTextBox��$
��Left=�$��28��$��644,391,0,0q�$
 Wrap=�$	��Top=�$	��228��$��16(�
 J� RenderTransformOrigin$
 
0.555,0.48&����	#FF0F0F2D��Z� 	 Z� �� -   $ PlayerTextBox��$
��Left=�$��28��$��262,437,0,0q�$
 Wrap=�$	��Top=�$	��228��$��16(����	#FF0F0F2D��Z� 	 Z� �� -   $ TimeTextBox��$
��Left=�$��28��$��644,437,0,0q�$
 Wrap=�$	��Top=�$	��228��$��16(����	#FF0F0F2D��Z� 	 Z� &   System.Windows.Controls.DataGrid  -     Name$ scoreDataGrid��   AutoGenerateColumns .     EnableRowVirtualization . $��10,10,10,254.5q�   RowDetailsVisibilityMode$ VisibleWhenSelected=�   CanUserAddRows .  
����������	#FF0F0F2D���� ��Z�    Columns 0  *System.Windows.Controls.DataGridTextColumn  -   idColumn��,  &System.Windows.Controls.DataGridColumn   Header$ Id��   
IsReadOnly .    Width5  /System.Windows.Controls.DataGridLengthConverter$ SizeToHeader 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *Id+  -   turnamentColumn��$ Zawody��$	 120  �� *	Turnament+  -   competitionColumn��$ Konkurencja��$ SizeToHeader  �� *Competition+  -   playerColumn��$ Numer Startowy��$ SizeToHeader  �� *Player+  -   playerScoreColumn��$ Punkty��$ 50  �� *PlayerScore+  -   xColumn��$ X��$ 50  �� *X+  -   
timeColumn��$
 Czas��$ 50  �� *Time+  -   finalScoreColumn��$ Factor��$	 100  �� *
FinalScore+�� -    ��Name$ 
BackButton��$��Powrót��$
��Left=�$��50��$��
90,496,0,0q�$	��Top=�$	��125��$
��Bold"�$��18(����	#FFFF4C70
����������	#FF0F0F2D����  �� 
TargetType" ��.R���  �� CornerRadius$ 20��#��z��._��� $��Center=�$��Center=��� -   $ 
SendButton��$��Wyślij��$
��Left=�$��50��$��311,496,0,0q�$	��Top=�$	��125��$
��Bold"�$��18(����	#FF289DFF���	#FF0F0F2D���	#FF0F0F2D���� " ��.R��� $ 20��#��z��._��� $��Center=�$��Center=��� -   $ UpdateButton��$��
Aktualizuj��$
��Left=�$��50��$��543,496,0,0q�$	��Top=�$	��125��$
��Bold"�$��18(����	#FF289DFF���	#FF0F0F2D���	#FF0F0F2D���� " ��.R��� $ 20��#��z��._��� $��Center=�$��Center=��� -   $ DeleteButton��$��Usuń��$��50��$��780,496,90,0q�$	��Top=�$
��Bold"�$��18(����	#FFFF4C70
����������	#FF0F0F2D���� " ��.R��� $ 20��#��z��._��� $��Center=�$��Center=�
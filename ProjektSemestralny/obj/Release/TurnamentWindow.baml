   M S B A M L   `   `   `  ���� M  IProjektSemestralny, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:ProjektSemestralnyProjektSemestralny  (    "ProjektSemestralny.TurnamentWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     2local clr-namespace:ProjektSemestralny     -     � Title$(  "Turnament Manager - Lista Zawodów��$	��600��$
��1000�� � 	Resources (   "ProjektSemestralny.DatabaseDataSet   databaseDataSet  turnamentViewSource �� Source �� Source��%>   &	        &	      7     ��  �� *	Turnament+8   .���  � DataContext# [ ���	#FF0F0F2D.+��� -    ��Name$ TurnamentNameBlock��$
��Left=�$��311,349,0,0q�$
��Wrap=�$��Nazwa Zawodów��$	��Top=�$��28��$	��134��$
��Bold"�$��16(�
��������� -   $ TurnamentDateBlock��$
��Left=�$��311,399,0,0q�$
��Wrap=�$	��Top=�$��28��$	��134��$
��Bold"�$��16(� J� RenderTransformOrigin$ 4.291,-2.911&�
��������� $
�Data���� $�	 Zawodów���� -    ��Name$ TurnamentNameBox��$
��Left=�$��28��$��450,349,0,0q� �� TextWrapping$
 Wrap=�$	��Top=�$	��224��$��16(����	#FF0F0F2D��Z� 	 �� SelectionBrush	 Z� (  "System.Windows.Controls.DatePicker  -   
  Name$
 TurnamentDateBox��$
��Left=�$��450,399,0,0q�$	��Top=�$	��224��$��28�����	#FF0F0F2D$
��Bold"���Z� &   System.Windows.Controls.DataGrid  -     Name$ turnamentDataGrid��   AutoGenerateColumns .     EnableRowVirtualization . $��10,10,10,245.5q�   RowDetailsVisibilityMode$ VisibleWhenSelected=�   CanUserAddRows .  
����������	#FF0F0F2D���� ��Z�    Columns 0  *System.Windows.Controls.DataGridTextColumn  -   turnamentNameColumn��,  &System.Windows.Controls.DataGridColumn   Header$ Nazwa Zawodów��   Width5  /System.Windows.Controls.DataGridLengthConverter$	 250 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *TurnamentName+4  .System.Windows.Controls.DataGridTemplateColumn  -   turnamentDateColumn��$ Data Zawodów��$	 200    CellTemplate �� .R�     SelectedDate �� *TurnamentDate+ �� Mode$ TwoWay=� �� NotifyOnValidationError .  �� ValidatesOnExceptions . �� -	    ��Name$ 
BackButton��$��Powrót��$
��Left=�$��50��$��
90,480,0,0q�$	��Top=�$	��125��$
��Bold"�$��18(����	#FFFF4C70
����������	#FF0F0F2D����  �� 
TargetType" ��.R���  �� CornerRadius$ 20��#��z��._��� $��Center=�$��Center=��� -
   $ 
SendButton��$��Wyślij��$
��Left=�$��50��$��320,480,0,0q�$	��Top=�$	��125��$
��Bold"�$��18(����	#FF289DFF���	#FF0F0F2D���	#FF0F0F2D���� " ��.R��� $ 20��#��z��._��� $��Center=�$��Center=��� -   $ UpdateButton��$��
Aktualizuj��$
��Left=�$��50��$��549,480,0,0q�$	��Top=�$	��125��$
��Bold"�$��18(����	#FF289DFF���	#FF0F0F2D���	#FF0F0F2D���� " ��.R��� $ 20��#��z��._��� $��Center=�$��Center=��� -   $ DeleteButton��$��Usuń��$��50��$��780,480,90,0q�$	��Top=�$
��Bold"�$��18(����	#FFFF4C70
����������	#FF0F0F2D���� " ��.R��� $ 20��#��z��._��� $��Center=�$��Center=�
   M S B A M L   `   `   `  ���� M  IProjektSemestralny, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:ProjektSemestralnyProjektSemestralny  %    ProjektSemestralny.PlayerWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     2local clr-namespace:ProjektSemestralny     -     � Title$+  %Turnament Manager - Lista Zawodników��$	��600��$
��1000�� � 	Resources (   "ProjektSemestralny.DatabaseDataSet   databaseDataSet  playersViewSource �� Source �� Source��%<   &	        &	      7     ��  �� *	Players+8   .���  � DataContext# [ ���	#FF0F0F2D.+��� -    ��Name$ PlayerNameBlock��$
��Left=�$��
90,327,0,0q�$
��Wrap=�$��Imię��$	��Top=�$��28��$	��100��$
��Bold"�$��16(�
��������� -   $ PlayerSecondNameBlock��$
��Left=�$��
90,371,0,0q�$
��Wrap=�$��Nazwisko��$	��Top=�$��28��$	��100��$
��Bold"�$��16(�
��������� -   $ 	ClubBlock��$
��Left=�$��
90,418,0,0q�$
��Wrap=�$	��Top=�$��28��$	��100��$
��Bold"�$��16(�
��������� $
�Klub���� �� �� -   $ LicenseBlock��$
��Left=�$��524,327,0,0q�$
��Wrap=�$	��Top=�$��28��$	��124��$
��Bold"�$��16(�
��������� $�Numer Licencji���� �� �� -   $ PhoneNumberBlock��$
��Left=�$��524,372,0,0q�$
��Wrap=�$	��Top=�$��42��$	��124��$
��Bold"�$��16(�
��������� $�Numer Telefonu���� �� �� -   $ 
EmailBlock��$
��Left=�$��524,419,0,0q�$
��Wrap=�$��E-mail��$	��Top=�$��28��$	��100��$
��Bold"�$��16(�
��������� -    ��Name$ PlayerEmailBox��$
��Left=�$��28��$��666,419,0,0q� �� TextWrapping$
 Wrap=�$	��Top=�$	��228��$��16(����	#FF0F0F2D �� SelectionBrush Z� �� -	   $ PlayerPhoneNumberBox��$
��Left=�$��28��$��666,372,0,0q�$
 Wrap=�$	��Top=�$	��228��$��16(����	#FF0F0F2D Z� �� -
   $ PlayerLicenseBox��$
��Left=�$��28��$��666,327,0,0q�$
 Wrap=�$	��Top=�$	��228��$��16(����	#FF0F0F2D Z� �� -   $ PlayerClubBox��$
��Left=�$��28��$��216,418,0,0q�$
 Wrap=�$	��Top=�$	��228��$��16(����	#FF0F0F2D��Z�  Z� �� -   $ PlayerSecondNameBox��$
��Left=�$��28��$��216,371,0,0q�$
 Wrap=�$	��Top=�$	��228��$��16(����	#FF0F0F2D��Z�  Z� �� -   $ PlayerNameBox��$
��Left=�$��28��$��216,327,0,0q�$
 Wrap=�$	��Top=�$	��228��$��16(����	#FF0F0F2D��Z�  Z� &   System.Windows.Controls.DataGrid  -   	  Name$	 playersDataGrid��
   AutoGenerateColumns
 .     EnableRowVirtualization . $��10,10,10,274.5q�   RowDetailsVisibilityMode$ VisibleWhenSelected=�   CanUserAddRows .  ���	#FF0F0F2D
����������� ��Z�    Columns 0  *System.Windows.Controls.DataGridTextColumn  -   idColumn��,  &System.Windows.Controls.DataGridColumn   Header$ Numer Startowy��   
IsReadOnly .    Width5  /System.Windows.Controls.DataGridLengthConverter$ SizeToHeader 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *Id+  -   playerNameColumn��$ Imię��$	 100  �� *
PlayerName+  -   playerSecondnameColumn��$ Nazwisko��$	 200  �� *PlayerSecondname+  -   
clubColumn��$
 Klub��$	 100  �� *Club+  -   licenseNumberColumn��$ Numer Licencji��$	 100  �� *LicenseNumber+  -   phoneNumberColumn��$ Numer Telefonu��$	 100  �� *PhoneNumber+  -   emailColumn��$ E-mail��$	 200  �� *Email+�� -    ��Name$ 
BackButton��$��Powrót��$
��Left=�$��50��$��
90,484,0,0q�$	��Top=�$	��125��$
��Bold"�$��18(����	#FFFF4C70
����������	#FF0F0F2D����  �� 
TargetType" ��.R���  �� CornerRadius$ 20��#��z��._��� $��Center=�$��Center=��� -   $ 
SendButton��$��Wyślij��$
��Left=�$��50��$��306,484,0,0q�$	��Top=�$	��125��$
��Bold"�$��18(����	#FF289DFF���	#FF0F0F2D���	#FF0F0F2D���� " ��.R��� $ 20��#��z��._��� $��Center=�$��Center=��� -   $ UpdateButton��$��
Aktualizuj��$
��Left=�$��50��$��543,484,0,0q�$	��Top=�$	��125��$
��Bold"�$��18(����	#FF289DFF���	#FF0F0F2D���	#FF0F0F2D���� " ��.R��� $ 20��#��z��._��� $��Center=�$��Center=��� -   $ DeleteButton��$��Usuń��$��50��$��769,484,90,0q�$	��Top=�$
��Bold"�$��18(����	#FFFF4C70
����������	#FF0F0F2D���� " ��.R��� $ 20��#��z��._��� $��Center=�$��Center=�
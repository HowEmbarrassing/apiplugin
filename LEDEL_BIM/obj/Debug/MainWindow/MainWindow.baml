   M S B A M L   `   `   `  ����D  @LEDEL_BIM, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:LEDEL_BIM.MainWindowLEDEL_BIM.MainWindow  5      %    LEDEL_BIM.MainWindow.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      4local"clr-namespace:LEDEL_BIM.MainWindow     5        � SizeToContent$  Width=�5   7    � WindowStyle$ ThreeDBorderWindow=�5	   	    � 
ResizeMode$ 	CanResize=�6*   
�������$��1q�6Y    � 	Resources 5
       �� 
TargetType �� Property �� Value �� 
TargetType �� CornerRadius   FilterFields	 �� 	Resources  Buttons  Headers  FieldHeaders��%T  '��       &	  �     &	 +    &	 �    &	 i    �� 5   
   " ��6   .�5      ��  � �� 5      �� 5      " ��6&   .R�5      �� $ 5��6!   5      5      5      �� 5   
   .�5      ��  � ��$ 0,0,0,0q�6/   �� 5       � ��$	 162��61   �� 5       � ��$	 140��61   �� 5       � ��$ 25��6/   �� 5       � ��$
 Left=�6<   �� 5       � ��$ Center=�6:   �� 5       � ��$ 14(�61   	 5      ���� 5      '��       " ��6   .�5      ��  �@��CornerRadius$ 0��65   5       5!      5"      �� 5$   
   .�5%      ��  � ��$ 	0,15,0,15q�6/   �� 5&       � ��$	 118��6.   �� 5'       � ��$ 25��6/   �� 5(       � ��$ Center=�6<   �� 5)       � ��$ Bottom=�6:   	 5*      ���� 5+      '��       " ��6   .�5,      ��  �@��CornerRadius$ 4��65   5-      5.      5/      �� 51   
   .�52      ��  � ��$ Center=�6<   �� 53       � ��$ Center=�6:   �� 54       � ��$ 20(�61   �� 55       � ��$ DemiBold"�63   �� 56       � ��$ Revit_HEB_DWG)�63   57      �� 58   
   .�59      ��  � ��$
 Left=�6<   �� 5:       � y�$ Hidden=�63   �� 5;       � ��$ 5,0,0,0q�6/   �� 5<       � ��$ Bottom=�6:   5=      5>      .��5?      � 
 � ColumnDefinitions
 5@   
   �� 5A      $��20 �6   �� 5B      $��0.25* �6   �� 5C      $��0.25* �6   �� 5D      $
��0.5* �6   �� 5E      $��20 �6    � RowDefinitions 5G   
   �� 5H      $��10 �6   �� 5I      $
��0.2* �6   �� 5J      $��0.15* �6   �� 5K      $
��0.2* �6   �� 5L      $��0.15* �6   �� 5M      $
��0.2* �6   �� 5N      $��0.15* �6   �� 5O      $
��0.2* �6   �� 5P      $��0.15* �6   �� 5Q      $
��0.2* �6   �� 5R      $��0.15* �6   �� 5S      $
��0.2* �6   �� 5T      $
��0.3* �6   �� 5U      $��10 �6   .+�5X   
   �� $%��Выбор параметров��6   $��1��6,   $��1��6<   $��2��6I   #��[ 5Y      �� 5[   
   -   5        $��	namesList��5\      $��1��5[      $��3��6#    �� Text$5 /Наименование светильника��5\   $   #��[  5]      $	��234��5^        �� IsTextSearchCaseSensitive .   �� IsTextSearchEnabled .  w� TextPath$ 
FamilyName��5a   .   $��2��5b       �� 
IsEditable . ��5c      �� 5d      .R�5e      �� ��6    ��  �� Path$ 
FamilyName�5f      5h      �� 5j   
   -   5        $��typeList��5k      $��1��5j      $��5��6#   $/ )Категория светильника��5k   #   $	��234��5l      #��[  5m      $��2��5o       . .@�5p      �� Архитектурные6'   �� 5q      Бытовые6!   �� 5r      Офисные6!   �� 5s      <:Для образовательных учреждений68   �� 5t      Прожекторы6$   �� 5u      Промышленные6&   �� 5v      Торговые6"   �� 5w      Уличные6!   5x      �� 5z   
   -   5        $��loadFrom��5z      $��1��6#   $��7��63   #��[  5{      $	��160��68   $	��160��6G   $	��160��6V    �� 	MaxLength$ 6��5~      .��6    Мощность Вт, от5�      �� 5�   
   -   5        $��loadTo��5�      $��2��6!   $��7��61   $��0,0,20,0q�6>   #��[  5�      $	��160��68   $	��160��6G   $	��160��6V   $ 6��5�      .��6    Мощность Вт, до5�      �� 5�   
   -   5        $��fluxFrom��5�      $��1��6#   $��9��63   #��[  5�      $	��160��68   $	��160��6G   $	��160��6V   $ 6��5�      .��6    (&Световой поток лм, от5�      �� 5�   
   -   5        $��fluxTo��5�      $��2��6!   $��9��61   $��0,0,20,0q�6>   #��[  5�      $	��160��68   $	��160��6G   $	��160��6V   $ 6��5�      .��6    (&Световой поток лм, до5�      �� 5�   
   -   5        $��colorTemperatureList��5�      $��1��5�      $��11��6#   #��[  61   $	��162��5�      $- 'Цветовая температура��5�   /   $	��200��6K   $	��200��6Z    .   .  . .@�5�      �� 3000K6   �� 5�      4000K6   �� 5�      5000K6   �� 5�      5700K6   5�      �� 5�   
   -   5        $��photometricWebList��5�      $��2��5�      $��11��6#   $��0,0,0,0q�61   #��[  5�      $ Тип КСС��5�   -   $��Center=�5�      $��80��60   $��80��6>    . .@�5�      �� Г306   �� 5�      Г606   �� 5�      Д6   �� 5�      К86   �� 5�      К156   �� 5�      Ш36   �� 5�      
Ш3-К156    �� 5�      Ш76   �� 5�      Ш86   �� 5�      Ш8М6   �� 5�      Ш96   �� 5�      Ш136   �� 5�      Ш226   �� 5�      Ш236   5�      �� 5�   
   $��3��6   $��1��6$   $��2��61   #��[ 5�      $)��#Подбор светильника��65   R� 5�   
   -	   5         R�Name$ treeViewLFF��5�      $	��280��5�      $��3��5�      $��2��6#   $��10��60   $��15,0,0,0q�6B    5�       �� Color��%�  (��       5�   "   * SystemColors.HighlightBrushKey+)(�� (     5�   "   *$"SystemColors.HighlightTextBrushKey+)(�� K     5�   "   *1/SystemColors.InactiveSelectionHighlightBrushKey+)(�� t     5�   "   *53SystemColors.InactiveSelectionHighlightTextBrushKey+)�� 5�      $ 
WhiteSmoke��5�      �� 5�      $ Black��5�      �� 5�      $ Transparent��5�      �� 5�      $ Black��5�      5�      ��5�      �� 5�      FamilyTemplate�� �� ItemsSource 6C   �� $ FamilyTypes�.R�5�      ��  ��Name$ FamilyPanel��6!   -
   5        $��0,0,0,10q�5�   6    �� Orientation$ Vertical=�5�   !   $	��238��68   .+�5�      �� $��Uniform=�6?   $��60��6Q   $��Center=�6]   ��6    �� *FamilyImage+6]   �� 5�      $��DemiBold"�6@   $��Center=�6V   ��6$   �� *
FamilyName+6V   �� 5�      $��FamilyDescription��6$   $
��Left=�5�   $   $y�	Collapsed=�6?   $
��Wrap=�6V   ��5�   =   �� *Description+5�   V   5�       �� ItemTemplate 5�      �� 5�      .R�5�      �� -   5        $ Vertical=�5�   )   .+�5�   "   �� ��6,   �� *FamilyTypeName+�� 5�   "   $��typeInfo��6,   $��15,0,0,0q�6<   $��DemiBold"�6N   $
��Wrap=�6d   $y�	Collapsed=�6x   ��5�   &   `� 5�   *    �� StringFormat$� �Полная мощность: {0} Вт
Световой поток: {1} лм
Цветовая температура: {2} K
Кривая сил света: {3}��67   .1�5�   .   �� $ ApparentLoad�66   �� 5�   .   $ 	LightFlux�66   �� 5�   .   $ TemperatureColor�66   �� 5�   .   $ PhotometricWeb�66   5�   +   5�   #   5�      5�      5�      5�      �� 5�   
   -   5         ��Name$ applyButton��5�      $��Применить��6&   #��[ 5�      $��1��5�      $��12��6!   5�      �� 5�   
   -   5        $ defaultFiltersButton��5�      $%��Сбросить фильтры��6/   #��[ 5�      $��2��5�      $��12��6!   {�. 5�   "   �� 5�   
   -   5        $ insertButton��5�      $+��%Вставить светильник��6'   #��[ 5�      $��3��5�      $��12��6!   {�.  $	��200��5�      5�      �� 5�   
   -   5         ��Name$ NameTextBlock��5�   E   $��1��6   $��2��6$   $��2��61   #��[ 5�      $5��/Наименование светильника��6:   �� 5�   
   -   5        $ CategoryTextBlock��5�   E   $��1��6   $��4��6$   $��2��61   #��[ 5�      $/��)Категория светильника��6:   �� 5   
   -   5        $ loadFromTextBlock��5   1   $��1��6   $��6��6$   #��[ 5     $!��Мощность Вт, от��6:   �� 5  
   -   5        $ loadToTextBlock��5  1   $��2��6   $��6��6$   #��[ 5     $!��Мощность Вт, до��6:   �� 5  
   -   5        $ fluxFromTextBlock��5  1   $��1��6   $��8��6$   $
��Left=�5     $y�Hidden=�6/   #��[ 5     $��5,0,0,0q�5     $,��&Световой поток лм, от��6%   �� 5  
   -   5        $ fluxToTextBlock��5  1   $��2��6   $��8��6$   #��[ 5	     $,��&Световой поток лм, до��6:   �� 5
  
   -   5        $ colorTemperatureTextBlock��5
  2   $��1��6   $��10��6$   #��[ 5     $-��'Цветовая температура��6:   �� 5  
   -   5        $ photoWebTextBlock��5  2   $��2��6   $��10��6$   #��[ 5     $��Right=�6:   $��0,0,5,0q�6V   $��Тип КСС��6g   5     5     
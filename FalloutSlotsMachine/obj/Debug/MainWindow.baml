   M S B A M L   `   `   `  ����N  JFalloutSlotsMachine, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:FalloutSlotsMachineFalloutSlotsMachine  5   	   $    FalloutSlotsMachine.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:FalloutSlotsMachine     5   	   X TXceed.Wpf.Toolkit, Version=2.5.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f47toolkit)http://schemas.xceed.com/wpf/xaml/toolkit  5   	   -   5          � Title$   Fallout gambling mechanics��5	   	   $	��311��6,   $	��448��69    � WindowStartupLocation$ CenterScreen=�6E    � 
ResizeMode$ CanMinimize=�6j   .��5
      � ���	#FF262626.+�5   
   %  Xceed.Wpf.Toolkit.IntegerUpDown  -   5          Name$  SkillPercent_IntegerUpDown��5       �  �Xceed.Wpf.Toolkit.Primitives.UpDownBase`1[[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]   Value$ 50X�6D   �  �Xceed.Wpf.Toolkit.NumericUpDown`1[[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]   	Increment$ 1X�6O      Minimum$ 0X�6]      Maximum$	 300X�6i   ���	#FF3CF800���	#FF262626$��111,17,281,241q�6�   ,  &Xceed.Wpf.Toolkit.Primitives.InputBase   AllowTextInput .  6�   �� 5   
   -   5        	 ��Name$	 label��5      $ ��Азартные игры:��6   $
��Left=�68   $��	10,15,0,0q�6S   $	��Top=�6f   ���	#FF3CF8006~   �� 5   
   -   5        $	 label1��5      $��%��6    $
��Left=�6,   $��
166,15,0,0q�6G   $	��Top=�6[   ���	#FF3CF8006s   �� 5   
   -   5        $	 Variant_1_Label��5      $��1. Бросить $5��6)   $
��Left=�6A   $��	10,59,0,0q�6\   $	��Top=�6o   ���	#FF3CF800$	��499��6�   �� 5   
   -   5        $	 Variant_2_Label��5      $��2. Бросить $10��6)   $
��Left=�6B   $��	10,85,0,0q�6]   $	��Top=�6p   ���	#FF3CF800$	��499��6�   �� 5   
   -   5        $	 Variant_3_Label��5      $��3. Бросить $15��6)   $
��Left=�6B   $��
10,111,0,0q�6]   $	��Top=�6q   ���	#FF3CF800$	��499��6�   �� 5   
   -   5        $	 Variant_4_Label��5      $��4. Бросить $20��6)   $
��Left=�6B   $��
10,137,0,0q�6]   $	��Top=�6q   ���	#FF3CF800$	��499��6�   �� 5   
   -	   5        $	 Variant_5_Label��5      $���z5. Бросить $25. Давай, детка! Папочке нужна новая плазменная винтовка!��6)   $
��Left=�6z   $��
10,163,0,0q�6�   $	��Top=�6�   ���	#FF3CF800$	��499��6�   �� 5   
   -
   5        $	 label_Copy5��5      $��Осталось:��6%   $
��Left=�69   $��
10,210,0,0q�6T   $	��Top=�6h   ���	#FF3CF800$��26.667(�6�   �� 5   
   -   5        $	 MoneyLeft_Label��5      $��$ 500��6)   $
��Left=�69   $��143,210,0,0q�6T   $	��Top=�6i   ���	#FF3CF800$��26.667(�6�   $	��289��6�   5      5      
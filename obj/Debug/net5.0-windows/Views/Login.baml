   M S B A M L   `   `   `  ����C  ?WpfLogin, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:WpfLogin.ViewsWpfLogin.Views  5   	       WpfLogin.Views.Login   5   	   \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   b ^MaterialDesignThemes.Wpf, Version=4.1.0.2556, Culture=neutral, PublicKeyToken=df2a72020bd7962aEmaterilDesing1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5   	   (localclr-namespace:WpfLogin.Views  5   	   $	��500��5
   	   $	��350��6     � WindowStyle$
  None=�6"    � Title$ 
LoginViews��65    � 
ResizeMode$ NoResize=�6H   ���	#00FFFFFF � AllowsTransparency$
 True��5        � WindowStartupLocation$ CenterScreen=�6:   .��5      � -   5         �Name$ GridPrincipal��5      .+�5   
   � -   5        $ 	GridLogin��5      $	��500��6"   $	��330��6/   $y�Visible=�6;   .+�5      �� $	��500��6   $	��330��6"    �� CornerRadius$ 20��6.   
�������6@   �� 5      $	��100��6   $	��Top=�6%    �� RadiusX$ 20��6=    �� RadiusY$ 20��6J   ��5      �� 5      	 �� EndPoint$	 0.5,1&�6*   
 �� 
StartPoint$
 0.5,0&�6;   .��5      �  � Color$ 	#FF2281D1��6'   � 5      $ 	#FF34268A��6'    � Offset$ 1Q�69   � 5      $ 	#FF33288B��6'   $ 0.546Q�69   5      5      �� 5      $��50��6   $��50��6%   $��	0 0 0 100q�60   $	��Top=�6C   $��Center=�6[   .+�5      �� -   5         ��Name$ 
ButtonExit��5      $��40��6-   $��40��68   ���	#FF1368BD���	#FF1368BD ,  (MaterialDesignFloatingActionAccentButton#��[  5      .��5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�6-   $��20��6:   $��20��6E   
�������6Q   5       5!      �� 5#      $	��280��6   $	��300��6$   $ 10��61   $ 10��6>   
�������$��	0 0 0 140q�6X   $��Bottom=�5$       J� Effect 5%      3  -System.Windows.Media.Effects.DropShadowEffect  5&         
BlurRadius$ 20Q�6'      	Direction$ 0Q�67      ShadowDepth$ 1Q�6E      Color$ 	#FFBBBBBB��6U      RenderingBias$ Quality=�5'   '   5)      � 5+      $��Bottom=�6   $��35,80q�6.   $	��360��6=   .+�5,      �� $��90��6   $��90��6(   $��0 5 0 0q�63   $	��Top=�6D   $��Center=�6\     5-      $
 User=�6%   $	��100��61   $	��100��6=   
����  �$��Center=�6\   5.      �� 50      $��Center=�6   $��15q�68   .+�51      ��  �� Orientation$ 
Horizontal=�6!   .+�52        $
 User=�61   $��25��6=   $��25��6H   $��0 10 0 0q�6T   $��Center=�6f   �� 53      -   5         ��Name$ NameLoginIn��53   "   $	��200��67   
����  �$
��0,10q�6V   $��14(�6d   $��Champagne & Limousines)�54      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Nombre��6F    % !MaterialDesignFloatingHintTextBox#��[ 55      56      �� 57      $ 
Horizontal=�6!   .+�58        $ Password=�61   $��25��6B   $��25��6M   $��0 10 0 0q�6Y   $��Center=�6k   G� 59      -   5         G�Name$ PasswordLoginIn��59   &   $	��200��6?   
����  �$
��0,10q�6^   $��14(�6l   $��Champagne & Limousines)�5:   "   $ Contreseña��6J    ) %MaterialDesignFloatingHintPasswordBox#��[ 5;   "   5=      �� 5>      -   5         ��Name$ IncorrectLoginIn��5>       $��14(�5?       
���  ��$��Center=�5A       5B      5C      �� 5E      $��Center=�6   $��Bottom=�66   $
��0,70q�6Q   .+�5F      �� -   5        $ ButtonLogin��5F      $	��150��6.   $��40��6:   $��18(�6F   $|�False��6T   $��Login In��5G      
����  �$��0q�6>   
�������$��Champagne & Limousines)�5H      +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 20��6A    $  MaterialDesignRaisedAccentButton#��[ 5I      5J      5K      �� 5M      $��Si no tienes Acceso��6   $��14(�63   $��0 0 0 40q�6A   
���   �$��Bottom=�6f   $��Center=�5N      �� 5P      -   5        $ ButtonRegistro��5P      $
��0,10q�6-   $|�False��6;   
����  �$��0q�6_   $��Registrarte��5Q      $��Center=�5R   B   $��Bottom=�6_   ��6   Z� ��6+   Z� 6_   5T      � 5U   
   -	   5        $ GridRegister��5U      $y�	Collapsed=�6%   .+�5V      � $	��500��6   $	��330��6    .+�5W      �� $	��500��6   $	��330��6&   $ 20��62   
�������6D   �� 5Y      $	��100��6   $	��Top=�6)   $ 20��6A   $ 20��6N   ��5Z      �� 5[      $	 0.5,1&�6.   $
 0.5,0&�6?   .��5\      � $ 	#FF2281D1��6+   � 5]      $ 	#FF34268A��6+   $ 1Q�6=   � 5^      $ 	#FF33288B��6+   $ 0.546Q�6=   5_      5a      �� 5c      $	��280��6   $	��300��6(   $ 10��65   $ 10��6B   
�������$��	0 0 0 140q�6\   $��Bottom=�6o    5d        5e      $ 20Q�6+   $ 0Q�5f   #   $ Quality=�5g   #   $ 1Q�5h   #   $ 	#FFBBBBBB��5i   #   5k      � 5m      $��Bottom=�6   $��35,80q�62   $	��360��6A   .+�5n      �� $��28(�6    $��Registro��6.   $��0 20 0 0q�6>   $
��Bold"�6P   
���   �$	��Top=�5o       $��Center=�68   $��Champagne & Limousines)�6U   5p      �� 5r      $��Center=�6!   $��15q�6<   .+�5s      �� $ 
Horizontal=�6%   .+�5t        $ UserAdd=�65   $��25��6D   $��25��6O   $��0 10 0 0q�6[   $��Center=�6m   �� 5u      -
   5        $��
NameSingUp��5u   G   $
��0,10q�6&   
����  �$	��200��6Y   $ Nombre��5v   "   $��Champagne & Limousines)�6I   $��14(�6q   #��[ 5w   "   5x      �� 5z      $ 
Horizontal=�6%   .+�5{        $ PasswordAdd=�65   $��25��6H   $��25��6S   $��0 10 0 0q�6_   $��Center=�6q   G� 5}      -   5        $ PasswordSingUp��5}   *   $
��0,10q�6B   
����  �$��14(�6c   $	��200��5~   *   $��Champagne & Limousines)�66   $ Contraseña��6^   #��[ 5   &   5�      5�      5�      �� 5�      $��Center=�6   $��Bottom=�6:   $
��0,70q�6U   .+�5�      �� -   5        $ IncorrectSingUp��5�       $��0 0 0 5q�69   $��14(�6J   
���  ��$��Center=�5�   1   �� 5�      -   5        $ ButtonSingUp��5�      $	��150��63   $��40��6?   $��18(�6K   $|�False��6Y   
����  �$��0q�5�      
�������$��
Registrate��6D   $��Champagne & Limousines)�6Y   $ 20��5�      #��[ 6J   5�      5�      �� 5�      -   5        $ ButtonVolverLogin��5�      $
��0,10q�64   $��Login��6B   $|�False��6R   
����  �$��0q�5�      $��Bottom=�6Z   $��Center=�5�      $��Champagne & Limousines)�66   ��5�   -   Z� ��6C   Z� 5�      5�      5�      5�      5�      
   M S B A M L   `   `   `  ����K  GQuanlyDancuDothi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:QuanlyDancuDothiQuanlyDancuDothi  5   	   (    "QuanlyDancuDothi.wGiayDangKiKetHon   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   *localclr-namespace:QuanlyDancuDothi  5   	     � Title$  wGiayDangKiKetHon��5	   	   $	��520��6#   $	��700��60      MaterialDesignBody#���   5
   	    � AllowsTransparency$
 True��5   	    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	   ��5   	   Z� .��5      #  MaterialDesignThemes.Wpf.Card    MaterialDesignPaper#���  6      UniformCornerRadius$ 15Q�6M   $��25q�6f   .  (MaterialDesignThemes.Wpf.ElevationAssist   	Elevation$	 Dp4=�6r   .��5   
   �  � RowDefinitions 5      �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $��* �6    �� 5      $
��auto �6    .+�5      �� -   5         ��Name$ btn_Exit��5      $��0��6'     MaterialDesignIconButton#��[ 64   +  %MaterialDesignThemes.Wpf.RippleAssist   Feedback
 �����
�������+  %MaterialDesignThemes.Wpf.ButtonAssist	   CornerRadius$	 6��6�   $��40��6�   $��40��5      $��Right=�6(   $��Right=�6?   $��0 5 5 5q�6r   .��5      '  !MaterialDesignThemes.Wpf.PackIcon  
   Kind$
 CloseBoxesOutline=�6*   $��Center=�6C   5      �� 5      $��1��6   $��ĐĂNG KÍ KẾT HÔN��6%   $��30(�6<   $��Center=�6J   $
��Bold"�6g   $��3��6y   � 5      $��2��6   $��Center=�6%   $��Stretch=�6B   $��0 40 0 0q�6^   $	��600��6p   .+�5      �� -   5         ��Name$ txt_kethon_makh��5       ! MaterialDesignOutlinedTextBox#��[ 63   $
��auto��6j   $	��100��6x   
������ $��5 0 5 10q�6�   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Mã giấy CNKH��5   *   $��1q�6X     MaterialDesignDivider#���  6l   $��10(�6�   $��SemiBold"�6�   ${�False��6�   �� 5       -   5        $ txt_kethon_hotenvo��5       #��[ 66   $
��auto��6m   $	��200��6{   
������ $��5 0 5 10q�6�   $ Họ và tên vợ��5!   *   $��1q�6X   #���  6l   $��10(�6�   $��SemiBold"�6�   �� 5"      -   5        $ txt_kethon_gtttvo��5"      #��[ 65   $
��auto��6l   $	��179��6z   
������ $��5 0 5 10q�6�   $' !Giấy tờ tùy thân của vợ��5#   *   $��1q�6c   #���  6w   $��10(�6�   $��SemiBold"�6�   �� 5$      -   5        $ btn_DienTT_Vo��5$        MaterialDesignFlatButton#��[ 60   $
��auto��6b   .��5%        $
 Upload=�6.   5&      (  "System.Windows.Controls.DatePicker  5'      -   5          Name$ dtp_kethon_ngaysinhvo��5'       $  MaterialDesignOutlinedDatePicker#��[ 6<   $��5 0 5 10q�6v   $ Ngày sinh vợ��6�   $	��150��6�   $��1q�5(   -   #���  6A   $��10(�6w   $��SemiBold"�6�   
������ 5)      �� 5*      -   5        $ txt_kethon_dantocvo��5*      #��[ 67   $
��auto��6n   $	��100��6|   
������ $��5 0 5 10q�6�   $ Dân tộc vợ��5+   *   $��1q�6V   #���  6j   $��10(�6�   $��SemiBold"�6�   �� 5,      -   5        $ txt_kethon_quoctichvo��5,      #��[ 69   $
��auto��6p   $	��100��6~   
������ $��5 0 5 10q�6�   $ Quốc tịch vợ��5-   *   $��1q�6X   #���  6l   $��10(�6�   $��SemiBold"�6�   �� 5.      -	   5        $ txt_kethon_noicutruvo��5.      #��[ 69   $
��auto��6p   $	��150��6~   
������ $��5 0 5 10q�6�   $ Nơi cư trú của vợ��5/   *   $��1q�6]   #���  6q   $��10(�6�   $��SemiBold"�6�   �� 50      -
   5        $ txt_kethon_hotenchong��50      #��[ 69   $
��auto��6p   $	��200��6~   
������ $��5 0 5 10q�6�   $ Họ và tên chồng��51   *   $��1q�6[   #���  6o   $��10(�6�   $��SemiBold"�6�   �� 52      -   5        $ txt_kethon_gtttchong��52      #��[ 68   $
��auto��6o   $	��150��6}   
������ $��5 0 5 10q�6�   $* $Giấy tờ tùy thân của chồng��53   *   $��1q�6f   #���  6z   $��10(�6�   $��SemiBold"�6�   �� 54      -   5        $ btn_DienTT_Chong��54      #��[ 63   $
��auto��6e   .��55        $
 Upload=�6.   56        57      -   5        $ dtp_kethon_ngaysinhchong��57      #��[ 6?   $��5 0 5 10q�6y   $ Ngày sinh chồng��6�   $	��150��6�   $��1q�58   -   #���  6A   $��10(�6w   $��SemiBold"�6�   
������ 59      �� 5:      -   5        $ txt_kethon_dantocchong��5:      #��[ 6:   $
��auto��6q   $	��100��6   
������ $��5 0 5 10q�6�   $ Dân tộc chồng��5;   *   $��1q�6Y   #���  6m   $��10(�6�   $��SemiBold"�6�   �� 5<      -   5        $ txt_kethon_quoctichchong��5<      #��[ 6<   $
��auto��6s   $	��100��6�   
������ $��5 0 5 10q�6�   $ Quốc tịch chồng��5=   *   $��1q�6[   #���  6o   $��10(�6�   $��SemiBold"�6�   �� 5>      -   5        $ txt_kethon_noicutruchong��5>      #��[ 6<   $
��auto��6s   $	��150��6�   
������ $��5 0 5 10q�6�   $! Nơi cư trú của chồng��5?   *   $��1q�6`   #���  6t   $��10(�6�   $��SemiBold"�6�   �� 5@      -   5        $ txt_kethon_noidkkethon��5@      #��[ 6:   $
��auto��6q   $	��100��6   
������ $��5 0 5 10q�6�   $  Nơi đăng kí kết hôn��5A   *   $��1q�6_   #���  6s   $��10(�6�   $��SemiBold"�6�     5B      -   5        $ dtp_kethon_ngaydkkethon��5B      #��[ 6>   $��5 0 5 10q�6x   $! Ngày đăng kí kết hôn��6�   $	��100��6�   $��1q�5C   -   #���  6A   $��10(�6w   $��SemiBold"�6�   
������ 5D      5E      �� 5F      $��3��6    �� Orientation$ 
Horizontal=�6&   $��Right=�6?   $��	0 0 60 40q�6[   .+�5G      �� -   5        $ btn_Them_ThongTin��5G       " MaterialDesignFlatAccentButton#��[ 64   $��1��6l   $	 7��6y   
 �r���  PrimaryHueDarkBrush#���  5H   %   $	��100��6X   $��35��6d   $��Right=�6p   $��13(�6�   .��5I      �� $ 
Horizontal=�6!   .+�5J        $

 Plus=�62   $��Center=�6>   $��13��6Y   $��13��6d   $��0 1 8 0q�6p   �� 5K      $��
Đăng kí��6$   5M      5N      5O      5P      5Q      5R      
   M S B A M L   `   `   `  ����K  GQuanlyDancuDothi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:QuanlyDancuDothiQuanlyDancuDothi  5   	   %    QuanlyDancuDothi.USER_QuanLyDon   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   *localclr-namespace:QuanlyDancuDothi  5   	   -   5          � Title$  User_QuanLyDon��5	   	   $	��750��6    $
��1140��6-      MaterialDesignBody#���   5
   	    � AllowsTransparency$
 True��5   	    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	   ��5   	   Z�  � 	Resources 5        	BoolToVis��%   &	       �� 5   
   6'   5      .��5      #  MaterialDesignThemes.Wpf.Card    MaterialDesignPaper#���  6      UniformCornerRadius$ 15Q�6M   $��25q�6f   .  (MaterialDesignThemes.Wpf.ElevationAssist   	Elevation$	 Dp4=�6r   .��5   
   �  � ColumnDefinitions 5      �� 5      $	��190 �6#   �� 5      $��* �6#   .+�5      �� $��0��6   $	��700��6%    �� CornerRadius$ 	15 0 0 15��62    * &MaterialDesignLightSeparatorBackground#���  6K   ._�5      �� $��15q�6   .+�5      � $��	0 10 5 60q�6    $��Center=�63   .+�5      �� 	 �� BitmapScalingMode$	 HighQuality=�6    $ ��/Images/copy_logo_MFIT.png��6N   $��30��6r   �� 5      $��
Công dân��6$   $��20(�64   $
��Bold"�6B   $
��Left=�6T   $��Center=�6o   $��10 0 0 0q�6�   5      �� 5      -   5        
 ��Name$
 btn_User_TrangChu��5        MaterialDesignFlatButton#��[ 68   +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 6��6j   $
��auto��6�   $��35��5       +  %MaterialDesignThemes.Wpf.RippleAssist   Feedback
 �����$��0 0 0 15q�6V   .��5!      � $	��120��6$   .+�5"      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$
 Home=�66   $��Center=�6B   $��0 0 20 0q�6]   �� 5#      $��Trang chủ��6(   5$      5%      �� 5&      -   5        $
 btn_User_CongDan��5&      #��[ 67   $ 6��6i   $
��auto��6�   $��35��5'      
 �����$��0 0 0 15q�6V   .��5(      � $	��120��6$   .+�5)        $ People=�66   $��Center=�6D   $��0 0 20 0q�6_   �� 5*      $��
Công dân��6(   5+      5,      �� 5-      -   5        $
 btn_User_QuanLyDon��5-      #��[ 69   $ 6��6k   $
��auto��6�   $��35��5.      
 �����$��0 0 0 15q�6V   .��5/      � $	��120��6$   .+�50        $ FolderMedia=�66   $��Center=�6I   $��0 0 20 0q�6d   �� 51      $��Đăng ký đơn��6(   52      53      �� 54      -   5        $
 btn_danhgia��54      #��[ 62   $ 6��6d   $
��auto��6�   $��35��55      
 �����$��0 0 0 15q�6V   .��56      � $	��120��6$   .+�57        $ 
RateReview=�66   $��Center=�6H   $��0 0 20 0q�6c   �� 58      $��Đánh giá��6(   59      5:      �� 5;       �� Orientation$ 
Horizontal=�6!   $��
10 0 10 15q�6:   $��Center=�6N   $
��auto��6i   $��35��6v   .+�5<        $ MoonAndStars=�62   $��Center=�6F   $��0 0 10 0q�6a   �� 5=      $��Center=�6$   $��	Dark Mode��6?   $��SemiBold"�6P   d� 5>      -   5         d�Name$ themeToggle��5?   '    � Cursor$
 Hand��5>   '    � ToolTip$ Enable Dark Mode��65   $��12 0 8 0q�6P    d� 	IsChecked 5?   <   �� *IsDarkTheme+5A      5B      (  "MaterialDesignThemes.Wpf.ColorZone  5D         Mode$ Light=�6/   
�������   CornerRadius$ 15��6S   $
��25 0q�6e   $��	0 170 0 0q�6t   .��5E      �� .+�5F      �� $	 HighQuality=�6$   $ ��/Images/copy_logo_MFIT.png��6R   $��	0 -60 0 0q�6v   $	��100��6�   $	��100��6�   $��Center=�6�   �� 5G      
������$��11(�6@   $��SemiBold"�6N    �� TextAlignment$ Center=�6d   Upgrade to �� 6�   $��Heavy"�6�   .�6�   PRO6�    for�� 6�   more resources6�   �� 5H       ! MaterialDesignFlatMidBgButton#��[ 6%   $	 Dp0=�6\   $��28��6�   $ 6��6�   $��11(�5I   %   $��Upgrade��63   $��	0 20 0 25q�6E   5J      5K      5L      5M      � 5N      $��1��6   $��	30 12 0 0q�6#    � RowDefinitions 5O      �� 5P      $
��auto �6$   �� 5Q      $
��auto �6$   �� 5R      $��* �6$   �� 5S      $
��auto �6$   �� 5T      $
��auto �6$   .+�5V      ]� $��0��6   $��0 12 5 0q�6)   .+�5W      �� -   5        $
 btn_Exit��5W        MaterialDesignIconButton#��[ 6/   
 �����
�������$ 6��6�   $��40��6�   $��40��5X      $��Right=�6(   $��Right=�6?   .��5Y        $ CloseBoxesOutline=�62   5Z      �� 5[      -   5        $
 
btn_LogOut��5[      #��[ 61   
 �����
�������$ 6��6�   $��40��6�   $��40��5\      $��Right=�6(   $��Right=�6?   .��5]        $ LogoutVariant=�62   5^      �� 5_      -	   5         ��Name$ txt_NgayThang��5_       
�����p�$��12(�6N   $
��Bold"�6\   $��Center=�6n   $��Right=�6�   $��Right=�6�   $��0 0 20 0q�6�   5`      �� 5a      $��1��6   $��Quản lý đơn từ��6)   $��32(�6?   $��SemiBold"�6M   $��20 0 0 0q�6c   �� 5b      $��2��6   $ �� IsSynchronizedWithCurrentItem$
 TrueY�6*    # MaterialDesignUniformTabControl#��[ 6O   $��0 5 10 5q�6�   .@�5c      �� $!��Các thủ tục đăng kí��6   $
��auto��6;   $��45��6H   .��5d      �� $��Visible=�6'     MaterialDesignScrollViewer#��[ 6M   .��5e      � $��Center=�6#   $
��auto��6@    5f   "   �� 5g   &   $
��auto �67   �� 5h   &   $
��auto �67   �� 5i   &   $
��auto �67   .+�5k   "   �� -
   5        $
 btn_giaydkkh��5k   )   #��[ 6?   $��0��6q   $	��200��6�   $	��200��6�   $	��Top=�6�   $ 15��6�   $��
20 20 20 0q�5l   %   
���r���$��2q�6N   
������ 
 �r���.��5m   &   �� $	��150��61   $	��150��6=   .+�5n   *     $ 
LoveLetter=�6B   $	��100��6T   $	��100��6`   $��Center=�6m   �� 5o   *   $��Đăng kí kết hôn��64   $��20(�6K   $��Center=�6Y   5p   '   5q   #   �� 5r   "   -   5        $
 btn_donlyhon��5r   )   #��[ 6?   $��0��6q   $	��200��6�   $	��200��6�   $	��Top=�6�   $ 15��6�   $��20 240 20 20q�5s   %   
���r���$��2q�6P   
������ 
 �r���.��5t   &   �� $	��170��61   $	��150��6=   .+�5u   *     $ HeartBroken=�6B   $	��100��6U   $	��100��6a   $��Center=�6n   �� 5v   *   $��Đăng kí ly hôn��64   $��20(�6J   $��Center=�6X   5w   '   5x   #   �� 5y   "   -   5        $
 
btn_hokhau��5y   )   #��[ 6=   $��0��6o   $	��200��6   $	��200��6�   $	��Top=�6�   $ 15��6�   $��20 460 20 0q�5z   %   
���r���$��2q�6O   
������ 
 �r���.��5{   &   �� $	��170��61   $	��150��6=   .+�5|   *     $ HouseAddOutline=�6B   $	��100��6Y   $	��100��6e   $��Center=�6r   �� 5}   *   $��Đăng kí hộ khẩu��64   $��20(�6K   $��Center=�6Y   5~   '   5   #   �� 5�   "   -   5        $
 btn_KhaiSinh��5�   )   #��[ 6?   $��1��6q   $	��200��6�   $	��200��6�   $	��Top=�6�   $ 15��6�   $��
20 20 20 0q�5�   %   
���r���$��2q�6N   
������ 
 �r���.��5�   &   �� $	��170��61   $	��150��6=   .+�5�   *     $ BabyFaceOutline=�6B   $	��100��6Y   $	��100��6e   $��Center=�6r   �� 5�   *   $��Đăng kí khai sinh��64   $��20(�6M   $��Center=�6[   5�   '   5�   #   �� 5�   "   -   5        $
 btn_GiayChungTu��5�   )   #��[ 6B   $��1��6t   $	��200��6�   $	��200��6�   $	��Top=�6�   $ 15��6�   $��20 240 20 20q�5�   %   
���r���$��2q�6P   
������ 
 �r���.��5�   &   �� $	��170��61   $	��150��6=   .+�5�   *     $ EmojiDeadOutline=�6B   $	��100��6Z   $	��100��6f   $��Center=�6s   �� 5�   *   $��Đăng kí khai tử��64   $��20(�6K   $��Center=�6Y   5�   '   5�   #   �� 5�   "   -   5        $
 btn_ThemNguoi��5�   )   #��[ 6@   $��1��6r   $	��200��6�   $	��200��6�   $	��Top=�6�   $ 15��6�   $��20 460 20 20q�5�   %   
���r���$��2q�6P   
������ 
 �r���.��5�   &   �� $	��170��61   $	��150��6=   .+�5�   *     $ PersonAddOutline=�6B   $	��100��6Z   $	��100��6f   $��Center=�6s   �� 5�   *   $%��Thêm người vào hộ khẩu��64   $��19(�6R   $��Center=�6`   $
��Wrap=�6}   $ Center=�6�   5�   '   5�   #   �� 5�   "   -   5        $
 
btn_tamtru��5�   )   #��[ 6=   $��2��6o   $	��200��6   $	��200��6�   $	��Top=�6�   $ 15��6�   $��
20 20 20 0q�5�   %   
���r���$��2q�6N   
������ 
 �r���.��5�   &   �� $	��170��61   $	��150��6=   .+�5�   *     $ HouseAdd=�6B   $	��100��6R   $	��100��6^   $��Center=�6k   �� 5�   *   $��Đăng kí tạm trú��64   $��20(�6K   $��Center=�6Y   5�   '   5�   #   �� 5�   "   -   5        $
 btn_tamvang��5�   )   #��[ 6>   $��2��6p   $	��200��6�   $	��200��6�   $	��Top=�6�   $ 15��6�   $��20 240 20 20q�5�   %   
���r���$��2q�6P   
������ 
 �r���.��5�   &   �� $	��170��61   $	��150��6=   .+�5�   *     $ 
HouseMinus=�6B   $	��100��6T   $	��100��6`   $��Center=�6m   �� 5�   *   $��Đăng kí tạm vắng��64   $��20(�6L   $��Center=�6Z   5�   '   5�   #   �� 5�   "   -   5        $
 btn_catkhau��5�   )   #��[ 6>   $��2��6p   $	��200��6�   $	��200��6�   $	��Top=�6�   $ 15��6�   $��20 460 20 20q�5�   %   
���r���$��2q�6P   
������ 
 �r���.��5�   &   �� $	��170��61   $	��150��6=   .+�5�   *     $ PersonRemoveOutline=�6B   $	��100��6]   $	��100��6i   $��Center=�6v   �� 5�   *   $��Cắt khẩu��64   $��20(�6D   $��Center=�6R   5�   '   5�   #   5�      5�      5�      5�      5�      5�      5�      5�      
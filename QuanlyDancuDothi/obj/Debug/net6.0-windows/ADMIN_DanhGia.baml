   M S B A M L   `   `   `  ����K  GQuanlyDancuDothi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:QuanlyDancuDothiQuanlyDancuDothi  5   	   $    QuanlyDancuDothi.ADMIN_DanhGia   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   *localclr-namespace:QuanlyDancuDothi  5   	     � Title$  ADMIN_DanhGia��5	   	   $	��750��6   $
��1140��6,      MaterialDesignBody#���   5
   	    � AllowsTransparency$
 True��5   	    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	   ��5   	   Z�  � 	Resources 5        	BoolToVis��%   &	       �� 5   
   6'   5      .��5      #  MaterialDesignThemes.Wpf.Card    MaterialDesignPaper#���  6      UniformCornerRadius$ 15Q�6M   $��25q�6f   .  (MaterialDesignThemes.Wpf.ElevationAssist   	Elevation$	 Dp4=�6r   .��5   
   �  � ColumnDefinitions 5      �� 5      $	��190 �6#   �� 5      $��* �6#   .+�5      �� $��0��6   $	��700��6%    �� CornerRadius$ 	15 0 0 15��62    * &MaterialDesignLightSeparatorBackground#���  6K   ._�5      �� $��15q�6   .+�5      � $��	0 10 5 60q�6    $��Center=�63   .+�5      �� 	 �� BitmapScalingMode$	 HighQuality=�6    $ ��/Images/copy_logo_MFIT.png��6N   $��30��6r   �� 5      $��
Công dân��6$   $��20(�64   $
��Bold"�6B   $
��Left=�6T   $��Center=�6o   $��10 0 0 0q�6�   5      �� 5      -   5        
 ��Name$
 btn_TrangChu��5        MaterialDesignFlatButton#��[ 63   +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 6��6e   $
��auto��6�   $��35��5       +  %MaterialDesignThemes.Wpf.RippleAssist   Feedback
 �����$��0 0 0 15q�6V   .��5!      � $	��120��6$   .+�5"      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$
 Home=�66   $��Center=�6B   $��0 0 20 0q�6]   �� 5#      $��Trang chủ��6(   5$      5%      �� 5&      -   5        $
 btn_congdan��5&      #��[ 62   $ 6��6d   $
��auto��6�   $��35��5'      
 �����$��0 0 0 15q�6V   .��5(      � $	��120��6$   .+�5)        $ People=�66   $��Center=�6D   $��0 0 20 0q�6_   �� 5*      $��
Công dân��6(   5+      5,      �� 5-      -   5        $
 btn_QuanLyDon��5-      #��[ 64   $ 6��6f   $
��auto��6�   $��35��5.      
 �����$��0 0 0 15q�6V   .��5/      � $	��120��6$   .+�50        $ FolderMedia=�66   $��Center=�6I   $��0 0 20 0q�6d   �� 51      $��Quản lý đơn��6(   52      53      �� 54      -   5        $
 btn_danhgia��54      #��[ 62   $ 6��6d   $
��auto��6�   $��35��55      
 �����$��0 0 0 15q�6V   .��56      � $	��120��6$   .+�57        $ 
RateReview=�66   $��Center=�6H   $��0 0 20 0q�6c   �� 58      $��Đánh giá��6(   59      5:      �� 5;       �� Orientation$ 
Horizontal=�6!   $��
10 0 10 15q�6:   $��Center=�6N   $
��auto��6i   $��35��6v   .+�5<        $ MoonAndStars=�62   $��Center=�6F   $��0 0 10 0q�6a   �� 5=      $��Center=�6$   $��	Dark Mode��6?   $��SemiBold"�6P   d� 5>      -   5         d�Name$ themeToggle��5?   '    � Cursor$
 Hand��5>   '    � ToolTip$ Enable Dark Mode��65   $��12 0 8 0q�6P    d� 	IsChecked 5?   <   �� *IsDarkTheme+5A      5B      (  "MaterialDesignThemes.Wpf.ColorZone  5D         Mode$ Light=�6/   
�������   CornerRadius$ 15��6S   $
��25 0q�6e   $��	0 170 0 0q�6t   .��5E      �� .+�5F      �� $	 HighQuality=�6$   $ ��/Images/copy_logo_MFIT.png��6R   $��	0 -60 0 0q�6v   $	��100��6�   $	��100��6�   $��Center=�6�   �� 5G      
������$��11(�6@   $��SemiBold"�6N    �� TextAlignment$ Center=�6d   Upgrade to �� 6�   $��Heavy"�6�   .�6�   PRO6�    for�� 6�   more resources6�   �� 5H       ! MaterialDesignFlatMidBgButton#��[ 6%   $	 Dp0=�6\   $��28��6�   $ 6��6�   $��11(�5I   %   $��Upgrade��63   $��	0 20 0 25q�6E   5J      5K      5L      5M      � 5N      $��1��6   $��	30 12 0 0q�6#    � RowDefinitions 5O      �� 5P      $
��auto �6$   �� 5Q      $
��auto �6$   �� 5R      $��* �6$   �� 5S      $
��auto �6$   �� 5T      $
��auto �6$   .+�5V      ]� $��0��6   $��0 12 5 0q�6)   .+�5W      �� -   5        $
 btn_Exit��5W        MaterialDesignIconButton#��[ 6/   
 �����
�������$ 6��6�   $��40��6�   $��40��5X      $��Right=�6(   $��Right=�6?   .��5Y        $ CloseBoxesOutline=�62   5Z      �� 5[      -   5        $
 
btn_LogOut��5[      #��[ 61   
 �����
�������$ 6��6�   $��40��6�   $��40��5\      $��Right=�6(   $��Right=�6?   .��5]        $ LogoutVariant=�62   5^      5_      �� 5`      $��1��6   $>��8Đánh giá của công dân khi sử dụng dịch vụ��6)   $��32(�6Z   $��SemiBold"�6h   $��20 0 0 0q�6~   � 5a      $��2��6    5b      �� 5c      $
��auto �6(   �� 5d      $
��auto �6(   �� 5e      $
��auto �6(   �� 5f      $
��auto �6(   �� 5g      $
��auto �6(   �� 5h      $
��auto �6(   �� 5i      $
��auto �6(   �� 5j      $
��auto �6(   �� 5k      $��* �6(   �� 5l      $
��auto �6(   �� 5m      $
��auto �6(   .+�5o      �� -   5         ��Name$ txt_cccd��5o   B   $��0��6   $��126,50,509,10q�6+   $��18(�6T   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$
 CCCD��5p      $��2q�6@     MaterialDesignDivider#���  5q       ! MaterialDesignOutlinedTextBox#��[ 5r      � 5s      $��	0 30 0 10q�6    $��1��63   .+�5t      �� $��	120 0 0 0q�6$   $��15(�67   $	��120��6E   �� 6R   �� 6Y   $�Tổng quan��6]   6q   (  "MaterialDesignThemes.Wpf.RatingBar  5u      -	   5          Name$ rate_tongquan��5u   3   $	��139��6J   5v      � 5w      $��	0 10 0 10q�6    $��2��63   .+�5x      �� $��
120 0 0 10q�6$   $��15(�68   $	��120��6F   �� 6S   �� 6Z   $�Thuận tiện��6^   6s     5y      -
   5        $ rate_thuantien��5y   3   $	��139��6K   5z      � 5{      $��	0 10 0 10q�6    $��3��63   .+�5|      �� $��
120 0 0 10q�6$   $��15(�68   $	��120��6F   �� 6S   �� 6Z   $�
Dễ dàng��6^   6p     5}      -   5        $ rate_dedang��5}   3   $	��139��6H   5~      � 5      $��	0 10 0 10q�6    $��4��63   .+�5�      �� $��
120 0 0 10q�6$   $��15(�68   $	��120��6F   �� 6S   �� 6Z   $�Chính xác��6^   6r     5�      -   5        $ rate_chinhxac��5�   3   $	��139��6J   5�      � 5�      $��	0 10 0 10q�6    $��5��63   .+�5�      �� $��
120 0 0 10q�6$   $��15(�68   $	��120��6F   �� 6S   �� 6Z   $�Trực quan��6^   6r     5�      -   5        $ rate_trucquan��5�   3   $	��139��6J   5�      �� 5�      -   5        $ 
txtPhanhoi��5�   C   $��1��6   $��434,42,105,209q�6+   $��18(�6W   $# Phản hồi của công dân��5�      $��2q�6Q   #���  5�      #��[ 5�      $��8��6Q   �� 5�      -   5        $ txt_danhgia_hoten��5�   4   $��436,50,105,6q�6   $��18(�6O   $ Họ và Tên��5�      $��2q�6D   #���  5�      #��[ 5�      &	   System.Windows.Controls.DataGrid	  5�      -   5         	 Name$ dtg_DanhGia��5�   �   $��75,10,75,45q�6    	 DataGridCellStyle1 	  	CellStyle# � 	 64    
 DataGridRowStyle1 	  RowStyle# � 
 6e     MaterialDesignDataGrid#��[ 6�   $��7��6�    	  AutoGenerateColumns$ False��6�    	  CanUserAddRows$
 True��6   	  CanUserReorderColumns$ False��6    	  GridLinesVisibility$
  None=�66  $��2��6Q  ! 	  Columns! 5�      0
  *System.Windows.Controls.DataGridTextColumn
  5�      ,  &System.Windows.Controls.DataGridColumn"   Width5  /System.Windows.Controls.DataGridLengthConverter$
" auto 6J   #   Header$
# CCCD��6W   $   
IsReadOnly$
$ True��6e   1  +System.Windows.Controls.DataGridBoundColumn%   Binding% 61   �� *CCCD+6e   
  5�      $
" auto 6K   $# Họ và Tên��6X   $
$ True��6k   % 61   �� *HoTen+6k   
  5�      $
" auto 6N   $# Tổng quan��6[   $
$ True��6n   % 61   �� *
Tongquan+6n   
  5�      $
" auto 6O   $# Thuận tiện��6\   $
$ True��6p   % 61   �� *	Thuantien+6p   
  5�      $
" auto 6L   $# 
Dễ dàng��6Y   $
$ True��6j   % 61   �� *Dedang+6j   
  5�      $
" auto 6N   $# Chính xác��6[   $
$ True��6n   % 61   �� *
Chinhxac+6n   
  5�      $
" auto 6N   $# Trực quan��6[   $
$ True��6n   % 61   �� *
Trucquan+6n   5�      5�      5�      5�      5�      5�      
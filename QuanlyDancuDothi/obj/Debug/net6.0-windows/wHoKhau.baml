   M S B A M L   `   `   `  ����K  GQuanlyDancuDothi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:QuanlyDancuDothiQuanlyDancuDothi  5   	       QuanlyDancuDothi.wHoKhau   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   *localclr-namespace:QuanlyDancuDothi  5   	      MaterialDesignBody#���   5	   	     � AllowsTransparency$
  True��5   	    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � Title$ wHoKhau��5   	   $	��440��6   $	��700��6&   ��5
   	   Z� .��5      #  MaterialDesignThemes.Wpf.Card    MaterialDesignPaper#���  6      UniformCornerRadius$ 15Q�6M   $��25q�6f   .  (MaterialDesignThemes.Wpf.ElevationAssist   	Elevation$	 Dp4=�6r   .��5   
   �  � RowDefinitions 5      �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $��* �6    �� 5      $
��auto �6    .+�5      �� -   5         ��Name$ btn_Exit��5      $��0��6'     MaterialDesignIconButton#��[ 64   +  %MaterialDesignThemes.Wpf.RippleAssist   Feedback
 �����
�������+  %MaterialDesignThemes.Wpf.ButtonAssist	   CornerRadius$	 6��6�   $��40��6�   $��40��5      $��Right=�6(   $��Right=�6?   $��0 5 5 5q�6r   .��5      '  !MaterialDesignThemes.Wpf.PackIcon  
   Kind$
 CloseBoxesOutline=�6*   $��Center=�6C   5      �� 5      $��1��6   $��ĐĂNG KÍ HỘ KHẨU��6%   $��30(�6<   $��Center=�6J   $
��Bold"�6g   $��3��6y   � 5      -   5         �Name$ wrp_User_TamTru��5      $	��Top=�61   $��Center=�6I   $	��605��6f   $y�Visible=�6r   $
��auto��6�   $��2��6�   $
��0 40q�6�   .+�5      �� -   5         ��Name$ txt_hokhau_hotenchuho��5       ! MaterialDesignOutlinedTextBox#��[ 69   $
��auto��6p   $	��214��6~   
������ $��	5 10 0 20q�6�   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Họ và tên chủ hộ��5   *   $��1q�6\     MaterialDesignDivider#���  6p   $��10(�6�   $��SemiBold"�6�   �� 5       -   5        $ txt_hokhau_cccdchuho��5       #��[ 68   $
��auto��6o   $	��150��6}   
������ $��	5 10 5 20q�6�   $ 	CMND/CCCD��5!   *   $��1q�6U   #���  6i   $��10(�6�   $��SemiBold"�6�   �� 5"      -   5        $ btn_DienTT_HoKhau��5"        MaterialDesignFlatButton#��[ 64   $
��auto��6f   $��	5 10 5 10q�6s   .��5#        $
 Upload=�6.   5$      �� 5%      -   5        $ txt_hokhau_mahk��5%      #��[ 63   $
��auto��6j   $	��150��6x   
������ $��	5 10 5 20q�6�   $ Mã hộ khẩu��5&   *   $��1q�6V   #���  6j   $��10(�6�   $��SemiBold"�6�   ${�False��6�   �� 5'      -   5         ��Name$ cmb_hokhau_tinhthanh��5'      
������ $
��auto��6R   $	��100��6`   $ Chọn tỉnh thành��6l   #���  6�   $��10(�5(      $��SemiBold"�6)   $��	5 0 25 20q�6?   6R   �� 5)      -   5        $ cmb_hokhau_quanhuyen��5)      
������ $
��auto��6R   $	��100��6`   $ Chọn quận huyện��6l   #���  6�   $��10(�5*      $��SemiBold"�6)   $��	5 0 25 20q�6?   6R   �� 5+      -	   5        $ cmb_hokhau_xaphuong��5+      
������ $
��auto��6Q   $	��100��6_   $ Chọn xã phường��6k   #���  6�   $��10(�5,      $��SemiBold"�6)   $��	5 0 25 20q�6?   �� 5-      -
   5        $ txt_hokhau_sonha��5-      #��[ 64   $
��auto��6k   $	��200��6y   
������ $��5 0 5 20q�6�   $ 	Số nhà��5.   *   $��1q�6R   #���  6f   $��10(�6�   $��SemiBold"�6�   5/      �� 50      $��3��6    �� Orientation$ 
Horizontal=�6&   $��Right=�6?   $��	0 0 60 40q�6[   .+�51      �� -   5        $ btn_Them_ThongTin��51       " MaterialDesignFlatAccentButton#��[ 64   $��1��6l   $	 7��6y   
 �r���  PrimaryHueDarkBrush#���  52   %   $	��100��6X   $��35��6d   $��Right=�6p   $��13(�6�   .��53      �� $ 
Horizontal=�6!   .+�54        $

 Plus=�62   $��Center=�6>   $��13��6Y   $��13��6d   $��0 1 8 0q�6p   �� 55      $��
Đăng kí��6$   57      58      59      5:      5;      5<      
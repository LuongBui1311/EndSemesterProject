   M S B A M L   `   `   `  ����K  GQuanlyDancuDothi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:QuanlyDancuDothiQuanlyDancuDothi  5   	        QuanlyDancuDothi.wDonLyHon   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   *localclr-namespace:QuanlyDancuDothi  5   	     � Title$  	wDonLyHon��5	   	   $	��520��6   $	��780��6(      MaterialDesignBody#���   5
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
 CloseBoxesOutline=�6*   $��Center=�6C   5      �� 5      $��1��6   $��ĐĂNG KÍ LY HÔN��6%   $��30(�6;   $��Center=�6I   $
��Bold"�6f   $��3��6x   � 5      $��2��6   $��Center=�6%   $��0,40,0,0q�6B   $	��680��6T   .+�5      �� -   5         ��Name$ txt_lyhon_malyhon��5       ! MaterialDesignOutlinedTextBox#��[ 65   $
��auto��6l   $��90��6z   
������ $��5 0 5 10q�6�   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Mã đơn ly hôn��5   *   $��1q�6Y     MaterialDesignDivider#���  6m   $��10(�6�   $��SemiBold"�6�   ${�False��6�   �� 5      -   5        $ txt_lyhon_macnkh��5      #��[ 64   $
��auto��6k   $	��100��6y   
������ $��5 0 5 10q�6�   $ Mã giấy CNKH��5    *   $��1q�6X   #���  6l   $��10(�6�   $��SemiBold"�6�   �� 5!      -   5        $  txt_lyhon_hotennguoinopdon��5!      #��[ 6>   $
��auto��6u   $	��170��6�   
������ $��5 0 5 10q�6�   $( "Họ và tên người nộp đơn��5"   *   $��1q�6c   #���  6w   $��10(�6�   $��SemiBold"�6�   �� 5$      -   5        $ txt_lyhon_cccdnguoinopdon��5$      #��[ 6=   $
��auto��6t   $	��200��6�   
������ $��5 0 5 10q�6�   $ CCCD người nộp đơn��5%   *   $��1q�6^   #���  6r   $��10(�6�   $��SemiBold"�6�   �� 5&      -   5        $ btn_DienTT_NguoiDK��5&        MaterialDesignFlatButton#��[ 65   $
��auto��6g   $��5 0 5 10q�6t   .��5'        $
 Upload=�6.   5(      �� 5)      -   5        $ txt_lyhon_hotenvo��5)      #��[ 65   $
��auto��6l   $	��250��6z   
������ $��5 0 5 10q�6�   $ Họ và tên vợ��5*   *   $��1q�6X   #���  6l   $��10(�6�   $��SemiBold"�6�   �� 5+      -   5        $ txt_lyhon_cccdvo��5+      #��[ 64   $
��auto��6k   $	��200��6y   
������ $��5 0 5 10q�6�   $ 	CCCD vợ��5,   *   $��1q�6S   #���  6g   $��10(�6�   $��SemiBold"�6�   �� 5-      -	   5        $ txt_lyhon_hotenchong��5-      #��[ 68   $
��auto��6o   $	��250��6}   
������ $��5 0 5 10q�6�   $ Họ và tên chồng��5.   *   $��1q�6[   #���  6o   $��10(�6�   $��SemiBold"�6�   �� 5/      -
   5        $ txt_lyhon_cccdchong��5/      #��[ 67   $
��auto��6n   $	��200��6|   
������ $��5 0 5 10q�6�   $ CCCD chồng��50   *   $��1q�6V   #���  6j   $��10(�6�   $��SemiBold"�6�   �� 51      -   5        $ txt_lyhon_noidk��51      #��[ 63   $
��auto��6j   $	��150��6x   
������ $��5 0 5 10q�6�   $ Nơi đăng kí��52   *   $��1q�6W   #���  6k   $��10(�6�   $��SemiBold"�6�   (  "System.Windows.Controls.DatePicker  53      -   5          Name$ dtp_lyhon_ngaydk��53       $  MaterialDesignOutlinedDatePicker#��[ 67   $��5 0 5 10q�6q   $ Ngày đăng kí��6�   $	��150��6�   $��1q�54   -   #���  6A   $��10(�6w   $��SemiBold"�6�   
������ 55      �� 56      -   5        $ txt_lyhon_lydo��56      #��[ 62   $
��auto��6i   $	��250��6w   
������ $��5 0 5 10q�6�   $ Lí do��57   *   $��1q�6Q   #���  6e   $��10(�6�   $��SemiBold"�6�   58      �� 59      $��3��6    �� Orientation$ 
Horizontal=�6&   $��Right=�6?   $��	0 0 60 40q�6[   .+�5:      �� -   5        $ btn_Them_LyHon��5:       " MaterialDesignFlatAccentButton#��[ 61   $��1��6i   $	 7��6v   
 �r���  PrimaryHueDarkBrush#���  5;   %   $	��100��6X   $��35��6d   $��Right=�6p   $��13(�6�   .��5<      �� $ 
Horizontal=�6!   .+�5=        $

 Plus=�62   $��Center=�6>   $��13��6Y   $��13��6d   $��0 1 8 0q�6p   �� 5>      $��
Đăng kí��6$   5?      5@      5A      5B      5C      5D      
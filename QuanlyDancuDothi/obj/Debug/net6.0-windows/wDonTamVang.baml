   M S B A M L   `   `   `  ����K  GQuanlyDancuDothi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:QuanlyDancuDothiQuanlyDancuDothi  5   	   "    QuanlyDancuDothi.wDonTamVang   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   *localclr-namespace:QuanlyDancuDothi  5   	     � Title$  wDonTamVang��5	   	   $	��460��6   $	��720��6*      MaterialDesignBody#���   5
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
 CloseBoxesOutline=�6*   $��Center=�6C   5      �� 5      $��1��6   $��ĐĂNG KÍ TẠM VẮNG��6%   $��30(�6=   $��Center=�6K   $
��Bold"�6h   $��3��6z   � 5      -   5         �Name$ wrp_User_TamVang��5      $��1��62   $	��Top=�6?   $��Center=�6W   $	��562��6t   $y�Visible=�6�   $��4��6�   $��0,52,0,0q�6�   $	��208��6�   .+�5      �� -   5         ��Name$ txt_tamvang_hoten��5       ! MaterialDesignOutlinedTextBox#��[ 65   $
��auto��6l   $	��155��6z   
������ $��0,0,5,20q�6�   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Họ và tên��5   *   $��1q�6U     MaterialDesignDivider#���  6i   $��10(�6�   $��SemiBold"�6�   �� 5      -   5        $ txt_tamvang_matv��5      #��[ 64   $
��auto��6k   $��73��6y   
������ $��5 0 5 20q�6�   $ Mã TV��5    *   $��1q�6Q   #���  6e   $��10(�6�   $��SemiBold"�6�   �� 5!      -   5        $ txt_tamvang_noichuyendi��5!      #��[ 6;   $
��auto��6r   $	��108��6�   
������ $��5 0 5 20q�6�   $ Nơi chuyển đi��5"   *   $��1q�6Y   #���  6m   $��10(�6�   $��SemiBold"�6�   �� 5#      -   5        $ txt_tamvang_noichuyenden��5#      #��[ 6<   $
��auto��6s   $	��185��6�   
������ $��5 0 5 20q�6�   $ Nơi chuyển đến��5$   *   $��1q�6Z   #���  6n   $��10(�6�   $��SemiBold"�6�   (  "System.Windows.Controls.DatePicker  5%      -   5          Name$ dtp_tamvang_ngaysinh��5%       $  MaterialDesignOutlinedDatePicker#��[ 6;   $ 
Ngày sinh��6u   $	��100��6�   $��1q�5&   -   #���  6A   $��10(�6w   $��SemiBold"�6�   
������ $��48��6�   �� 5'      -   5        $ txt_tamvang_noicapcccd��5'      #��[ 6:   $��48��6q   $	��100��6}   
������ $ Nơi cấp CCCD��5(   *   $��1q�6X   #���  6l   $��10(�6�   $��SemiBold"�6�   $��15,0,0,0q�6�   �� 5)      -	   5        $ txt_tamvang_cccd��5)      #��[ 64   $��48��6k   $	��100��6w   
������ $ 	CMND/CCCD��5*   *   $��1q�6U   #���  6i   $��10(�6�   $��SemiBold"�6�   $��20,0,0,0q�6�   �� 5+      -
   5        $ btn_DienTT_TamVang��5+        MaterialDesignFlatButton#��[ 65   $
��auto��6g   $��5 0 5 10q�6t   .��5,        $
 Upload=�6.   5-        5.      -   5        $ dtp_tamvang_ngaycapcccd��5.      #��[ 6>   $ Ngày cấp CCCD��6x   $	��150��6�   $��1q�5/   -   #���  6A   $��10(�6w   $��SemiBold"�6�   
������ $��48��6�   $��12,0,0,0q�6�     50      -   5        $ dtp_tamvang_ngaydi��50      #��[ 6:   $ 	Ngày đi��6t   $	��120��6�   $��1q�51   -   #���  6A   $��10(�6w   $��SemiBold"�6�   
������ $��0,20,0,0q�6�   $	��Top=�6�     52      -   5        $ dtp_tamvang_ngayve��52      #��[ 69   $ 
Ngày về��6s   $	��120��6�   $��1q�53   -   #���  6A   $��10(�6w   $��SemiBold"�6�   
������ $��	10,20,0,0q�6�   $	��Top=�6�   �� 54      -   5        $ txt_tamvang_lydo��54      #��[ 64   $��44��6k   $	��159��6w   
������ $ Lí do��55   *   $��1q�6Q   #���  6e   $��10(�6�   $��SemiBold"�6�   $��	10,20,0,0q�6�     56      -   5        $ dtp_tamvang_ngaydk��56      #��[ 6:   $ Ngày đăng kí��6t   $	��120��6�   $��1q�57   -   #���  6A   $��44��6w   $��10(�6�   $��SemiBold"�6�   
������ $��	10,23,0,0q�6�   $	��Top=�6�   58      �� 59      $��3��6    �� Orientation$ 
Horizontal=�6&   $��Right=�6?   $��	0 0 60 40q�6[   .+�5:      �� -   5        $ btn_Them_ThongTin��5:       " MaterialDesignFlatAccentButton#��[ 64   $��1��6l   $	 7��6y   
 �r���  PrimaryHueDarkBrush#���  5;   %   $	��100��6X   $��35��6d   $��Right=�6p   $��13(�6�   .��5<      �� $ 
Horizontal=�6!   .+�5=        $

 Plus=�62   $��Center=�6>   $��13��6Y   $��13��6d   $��0 1 8 0q�6p   �� 5>      $��
Đăng kí��6$   5@      5A      5B      5C      5D      5E      
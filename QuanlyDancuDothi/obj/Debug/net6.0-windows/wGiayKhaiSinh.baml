   M S B A M L   `   `   `  ����K  GQuanlyDancuDothi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:QuanlyDancuDothiQuanlyDancuDothi  5   	   $    QuanlyDancuDothi.wGiayKhaiSinh   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   *localclr-namespace:QuanlyDancuDothi  5   	     � Title$  wGiayKhaiSinh��5	   	   $	��500��6   $	��680��6,      MaterialDesignBody#���   5
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
 CloseBoxesOutline=�6*   $��Center=�6C   5      �� 5      $��1��6   $��ĐĂNG KÍ KHAI SINH��6%   $��30(�6>   $��Center=�6L   $
��Bold"�6i   $��3��6{   � 5      $��2��6   $��Center=�6%   $��0 40 0 0q�6B   $	��580��6T   .+�5      �� -   5         ��Name$ txt_khaisinh_hoten��5       ! MaterialDesignOutlinedTextBox#��[ 66   $
��auto��6m   $	��200��6{   
������ $��5 0 5 10q�6�   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Họ và tên��5   *   $��1q�6U     MaterialDesignDivider#���  6i   $��10(�6�   $��SemiBold"�6�   �� 5      -   5        $ txt_khaisinh_gioitinh��5      #��[ 69   $
��auto��6p   $	��100��6~   
������ $��5 0 5 10q�6�   $ Giới tính��5    *   $��1q�6U   #���  6i   $��10(�6�   $��SemiBold"�6�   (  "System.Windows.Controls.DatePicker  5!      -   5          Name$ dtp_khaisinh_ngaysinh��5!       $  MaterialDesignOutlinedDatePicker#��[ 6<   $��5 0 5 10q�6v   $ 
Ngày sinh��6�   $	��108��6�   $��1q�5"   -   #���  6A   $��10(�6w   $��SemiBold"�6�   
������ $	��Top=�6�   �� 5#      -   5        $ txt_khaisinh_maks��5#      #��[ 65   $
��auto��6l   $	��120��6z   
������ $��5 0 5 10q�6�   $ Mã số khai sinh��5$   *   $��1q�6[   #���  6o   $��10(�6�   $��SemiBold"�6�   ${�False��6�   �� 5%      -   5        $ txt_khaisinh_noisinh��5%      #��[ 68   $
��auto��6o   $	��150��6}   
������ $��5 0 5 10q�6�   $ 	Nơi sinh��5&   *   $��1q�6T   #���  6h   $��10(�6�   $��SemiBold"�6�   �� 5'      -   5        $ txt_khaisinh_dantoc��5'      #��[ 67   $
��auto��6n   $	��120��6|   
������ $��5 0 5 10q�6�   $ 
Dân tộc��5(   *   $��1q�6S   #���  6g   $��10(�6�   $��SemiBold"�6�   �� 5)      -   5        $ txt_khaisinh_quoctich��5)      #��[ 69   $
��auto��6p   $	��120��6~   
������ $��5 0 5 10q�6�   $ Quốc tịch��5*   *   $��1q�6U   #���  6i   $��10(�6�   $��SemiBold"�6�   �� 5+      -	   5        $ txt_khaisinh_quequan��5+      #��[ 68   $
��auto��6o   $	��150��6}   
������ $��5 0 5 10q�6�   $ 
Quê quán��5,   *   $��1q�6T   #���  6h   $��10(�6�   $��SemiBold"�6�   �� 5-      -
   5        $ txt_khaisinh_cha��5-      #��[ 64   $
��auto��6k   $	��120��6y   
������ $��5 0 5 10q�6�   $	 Cha��5.   *   $��1q�6O   #���  6c   $��10(�6�   $��SemiBold"�6�   �� 5/      -   5        $ txt_khaisinh_me��5/      #��[ 63   $
��auto��6j   $	��120��6x   
������ $��5 0 5 10q�6�   $
 Mẹ��50   *   $��1q�6N   #���  6b   $��10(�6�   $��SemiBold"�6�   �� 51      -   5        $ txt_khaisinh_ngkhaisinh��51      #��[ 6;   $
��auto��6r   $	��120��6�   
������ $��5 0 5 10q�6�   $ Người khai sinh��52   *   $��1q�6[   #���  6o   $��10(�6�   $��SemiBold"�6�   �� 53      -   5        $ txt_khaisinh_quanhe��53      #��[ 67   $
��auto��6n   $	��120��6|   
������ $��5 0 5 10q�6�   $ 	Quan hệ��54   *   $��1q�6S   #���  6g   $��10(�6�   $��SemiBold"�6�     55      -   5        $ dtp_khaisinh_ngaydk��55      #��[ 6:   $��5 0 5 10q�6t   $ Ngày đăng ký��6�   $	��150��6�   $��1q�56   -   #���  6A   $��10(�6w   $��SemiBold"�6�   
������ 6�   �� 57      -   5        $ txt_khaisinh_noidk��57      #��[ 66   $
��auto��6m   $	��200��6{   
������ $��5 0 5 10q�6�   $ Nơi đăng ký��58   *   $��1q�6W   #���  6k   $��10(�6�   $��SemiBold"�6�   59      �� 5:      $��3��6    �� Orientation$ 
Horizontal=�6&   $��Right=�6?   $��	0 0 60 40q�6[   .+�5;      �� -   5        $ btn_Them_ThongTin��5;       " MaterialDesignFlatAccentButton#��[ 64   $��1��6l   $	 7��6y   
 �r���  PrimaryHueDarkBrush#���  5<   %   $	��100��6X   $��35��6d   $��Right=�6p   $��13(�6�   .��5=      �� $ 
Horizontal=�6!   .+�5>        $

 Plus=�62   $��Center=�6>   $��13��6Y   $��13��6d   $��0 1 8 0q�6p   �� 5?      $��
Đăng kí��6$   5A      5B      5C      5D      5E      5F      
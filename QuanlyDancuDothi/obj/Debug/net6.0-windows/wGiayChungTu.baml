   M S B A M L   `   `   `  ����K  GQuanlyDancuDothi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:QuanlyDancuDothiQuanlyDancuDothi  5   	   #    QuanlyDancuDothi.wGiayChungTu   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   *localclr-namespace:QuanlyDancuDothi  5   	     � Title$  wGiayChungTu��5	   	   $	��400��6   $	��710��6+      MaterialDesignBody#���   5
   	    � AllowsTransparency$
 True��5   	    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	   ��5   	   Z� .��5      #  MaterialDesignThemes.Wpf.Card    MaterialDesignPaper#���  6      UniformCornerRadius$ 15Q�6M   $��25q�6f   .  (MaterialDesignThemes.Wpf.ElevationAssist   	Elevation$	 Dp4=�6r   .��5   
   �  � RowDefinitions 5      �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $��* �6    �� 5      $
��auto �6    .+�5      �� -   5         ��Name$ btn_Exit��5      $��0��6'     MaterialDesignIconButton#��[ 64   +  %MaterialDesignThemes.Wpf.RippleAssist   Feedback
 �����
�������+  %MaterialDesignThemes.Wpf.ButtonAssist	   CornerRadius$	 6��6�   $��40��6�   $��40��5      $��Right=�6(   $��Right=�6?   $��0 5 5 5q�6r   .��5      '  !MaterialDesignThemes.Wpf.PackIcon  
   Kind$
 CloseBoxesOutline=�6*   $��Center=�6C   5      �� 5      $��1��6   $��KHAI BÁO KHAI TỬ��6%   $��30(�6=   $��Center=�6K   $
��Bold"�6h   $��3��6z   � 5      $��2��6   $��Center=�6%   $��0 40 0 0q�6B   $	��610��6T   .+�5      �� -   5         ��Name$ txt_chungtu_maso��5       ! MaterialDesignOutlinedTextBox#��[ 64   $
��auto��6k   $��96��6y   
������ $��5 0 5 10q�6�   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Mã số chứng tử��5   *   $��1q�6Z     MaterialDesignDivider#���  6n   $��10(�6�   $��SemiBold"�6�   ${�False��6�   �� 5       -   5        $ txt_chungtu_hoten��5       #��[ 65   $
��auto��6l   $	��180��6z   
������ $��5 0 5 10q�6�   $ Họ và tên��5!   *   $��1q�6U   #���  6i   $��10(�6�   $��SemiBold"�6�   �� 5"      -   5        $ txt_chungtu_cccd��5"      #��[ 64   $
��auto��6k   $	��110��6y   
������ $��5 0 5 10q�6�   $
 CCCD��5#   *   $��1q�6P   #���  6d   $��10(�6�   $��SemiBold"�6�   �� 5$      -   5        $ btn_DienTT_ChungTu��5$        MaterialDesignFlatButton#��[ 65   $
��auto��6g   $��5 0 5 10q�6t   .��5%        $
 Upload=�6.   5&      (  "System.Windows.Controls.DatePicker  5'      -   5          Name$ dtp_chungtu_ngaysinh��5'       $  MaterialDesignOutlinedDatePicker#��[ 6;   $��5 0 5 10q�6u   $ 
Ngày sinh��6�   $	��121��6�   $��1q�5(   -   #���  6A   $��10(�6w   $��SemiBold"�6�   
������ $	��Top=�6�     5)      -   5        $ dtp_chungtu_ngaymat��5)      #��[ 6:   $��5 0 5 10q�6t   $ Ngày mất��6�   $	��150��6�   $��1q�5*   -   #���  6A   $��10(�6w   $��SemiBold"�6�   
������ 6�   �� 5+      -   5        $ txt_chungtu_noimat��5+      #��[ 66   $
��auto��6m   $	��120��6{   
������ $��5 0 5 10q�6�   $ 
Nơi mất��5,   *   $��1q�6S   #���  6g   $��10(�6�   $��SemiBold"�6�   �� 5-      -	   5        $ txt_chungtu_nguyennhan��5-      #��[ 6:   $
��auto��6q   $	��174��6   
������ $��5 0 5 10q�6�   $ Nguyên nhân��5.   *   $��1q�6W   #���  6k   $��10(�6�   $��SemiBold"�6�   5/      �� 50      $��3��6    �� Orientation$ 
Horizontal=�6&   $��Right=�6?   $��	0 0 60 40q�6[   .+�51      �� -
   5        $ btn_Them_ThongTin��51       " MaterialDesignFlatAccentButton#��[ 64   $��1��6l   $	 7��6y   
 �r���  PrimaryHueDarkBrush#���  52   %   $	��100��6X   $��35��6d   $��Right=�6p   $��13(�6�   .��53      �� $ 
Horizontal=�6!   .+�54        $

 Plus=�62   $��Center=�6>   $��13��6Y   $��13��6d   $��0 1 8 0q�6p   �� 55      $��
Đăng kí��6$   57      58      59      5:      5;      5<      
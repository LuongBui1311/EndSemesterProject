   M S B A M L   `   `   `  ����K  GQuanlyDancuDothi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:QuanlyDancuDothiQuanlyDancuDothi  5   	   !    QuanlyDancuDothi.wDonTamTru   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   *localclr-namespace:QuanlyDancuDothi  5   	     � Title$  
wDonTamTru��5	   	   $	��500��6   $	��700��6)      MaterialDesignBody#���   5
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
 CloseBoxesOutline=�6*   $��Center=�6C   5      �� 5      $��1��6   $��ĐĂNG KÍ TẠM TRÚ��6%   $��30(�6<   $��Center=�6J   $
��Bold"�6g   $��3��6y   � 5      -   5         �Name$ wrp_User_TamTru��5      $	��Top=�61   $��Center=�6I   $	��605��6f   $y�Visible=�6r   $	��210��6�   $��2��6�   $
��0 40q�6�   .+�5      �� -   5         ��Name$ txt_tamtru_hoten��5       ! MaterialDesignOutlinedTextBox#��[ 64   $
��auto��6k   $	��214��6y   
������ $��	5 10 0 20q�6�   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Họ và tên��5   *   $��1q�6U     MaterialDesignDivider#���  6i   $��10(�6�   $��SemiBold"�6�   (  "System.Windows.Controls.DatePicker  5      -   5          Name$ dtp_tamtru_ngaysinh��5       $  MaterialDesignOutlinedDatePicker#��[ 6:   $��	5 10 0 20q�6t   $ 
Ngày sinh��6�   $	��150��6�   $��1q�5    -   #���  6A   $��10(�6w   $��SemiBold"�6�   
������ 5"      �� 5#      -   5        $ txt_tamtru_cccd��5#      #��[ 63   $
��auto��6j   $	��150��6x   
������ $��	5 10 5 20q�6�   $ 	CMND/CCCD��5$   *   $��1q�6U   #���  6i   $��10(�6�   $��SemiBold"�6�   �� 5%      -   5        $ btn_DienTT_TamTru��5%        MaterialDesignFlatButton#��[ 64   $
��auto��6f   $��5 0 5 10q�6s   .��5&        $
 Upload=�6.   5'      �� 5(      -   5        $ txt_tamtru_noicapcccd��5(      #��[ 69   $
��auto��6p   $	��150��6~   
������ $��5 0 5 20q�6�   $ Nơi cấp CMND/CCCD��5)   *   $��1q�6]   #���  6q   $��10(�6�   $��SemiBold"�6�     5*      -   5        $ dtp_tamtru_ngaycapcccd��5*      #��[ 6=   $ Ngày cấp CMND/CCCD��6w   $	��155��6�   $��1q�5+   -   #���  6A   $��10(�6w   $��SemiBold"�6�   
������ $	��Top=�6�     5,      -	   5        $ dtp_tamtru_ngayden��5,      #��[ 69   $��5 0 5 20q�6s   $ Ngày đến��6�   $	��150��6�   $��1q�5-   -   #���  6A   $��10(�6w   $��SemiBold"�6�   
������ 5/      �� 50      -
   5        $ txt_tamtru_MaTamTru��50      #��[ 67   $��49��6n   $	��100��6z   
������ $��	0 -18 0 0q�6�   $ Mã Tạm Trú��51   *   $��1q�6V   #���  6j   $��10(�6�   $��SemiBold"�6�   ${�False��6�     53      -   5        $ dtp_tamtru_ngaydi��53      #��[ 68   $ 	Ngày đi��6r   $	��150��6�   $��1q�54   -   #���  6A   $��10(�6w   $��SemiBold"�6�   
������ $��5,0,0,0q�6�     55      -   5        $ dtp_tamtru_ngaydk��55      #��[ 68   $ Ngày đăng kí��6r   $	��150��6�   $��1q�56   -   #���  6A   $��10(�6w   $��SemiBold"�6�   
������ $��5,0,0,0q�6�   �� 57      -   5        $ txt_tamtru_lydo��57      #��[ 63   $��51��6j   $	��150��6v   
������ $ Lý do��58   *   $��1q�6Q   #���  6e   $��10(�6�   $��SemiBold"�6�   $��5,0,0,0q�6�   �� 59      -   5        $ txt_tamtru_noidk��59      #��[ 64   $��51��6k   $	��130��6w   
������ $ Nơi đăng kí��5:   *   $��1q�6W   #���  6k   $��10(�6�   $��SemiBold"�6�   $��5,0,0,0q�6�   5;      �� 5<      $��3��6    �� Orientation$ 
Horizontal=�6&   $��Right=�6?   $��	0 0 60 40q�6[   .+�5=      �� -   5        $ btn_Them_ThongTin��5=       " MaterialDesignFlatAccentButton#��[ 64   $��1��6l   $	 7��6y   
 �r���  PrimaryHueDarkBrush#���  5>   %   $	��100��6X   $��35��6d   $��Right=�6p   $��13(�6�   .��5?      �� $ 
Horizontal=�6!   .+�5@        $

 Plus=�62   $��Center=�6>   $��13��6Y   $��13��6d   $��0 1 8 0q�6p   �� 5A      $��
Đăng kí��6$   5C      5D      5E      5F      5G      5H      
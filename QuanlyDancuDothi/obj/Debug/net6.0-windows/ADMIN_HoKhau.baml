   M S B A M L   `   `   `  ����K  GQuanlyDancuDothi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:QuanlyDancuDothiQuanlyDancuDothi  5   	   #    QuanlyDancuDothi.ADMIN_HoKhau   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   *localclr-namespace:QuanlyDancuDothi  5   	     � Title$  ADMIN_HoKhau��5	   	   $	��650��6   $	��750��6+      MaterialDesignBody#���   5
   	    � AllowsTransparency$
 True��5   	    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	   ��5   	   Z� .��5      #  MaterialDesignThemes.Wpf.Card     UniformCornerRadius$ 15Q�6     MaterialDesignPaper#���  63   +  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth4=�5      $��25q�6K   .��5   
   � $��25 30 25 30q�6    � RowDefinitions 5      �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $��* �6    �� 5      $
��auto �6    .+�5      �� $��0��6   $��0 10 0 5q�6%   $��Center=�67   $��28(�6T   $
��Bold"�5      $��Chi tiết hộ khẩu��6.   � 5      $��1��6   $��Center=�6%   $��Stretch=�6B   $��30 10 30 10q�6^   .+�5      �� -   5         ��Name$ txt_hokhau_mahokhau��5       ! MaterialDesignOutlinedTextBox#��[ 67   $
��auto��6n   $	��100��6|   
������ $��5 0 5 10q�6�   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Mã hộ khẩu��5   *   $��1q�6V     MaterialDesignDivider#���  6j   $��10(�6�   $��SemiBold"�6�   ${�False��6�   �� 5      -   5        $ txt_hokhau_cccdchuho��5      #��[ 68   $
��auto��6o   $	��220��6}   
������ $��5 0 5 10q�6�   $ CCCD chủ hộ��5   *   $��1q�6W   #���  6k   $��10(�6�   $��SemiBold"�6�   ${�False��6�   �� 5      -   5        $ txt_hokhau_hotenchuho��5      #��[ 69   $
��auto��6p   $	��220��6~   
������ $��5 0 5 10q�6�   $ Họ tên chủ hộ��5    *   $��1q�6Y   #���  6m   $��10(�6�   $��SemiBold"�6�   ${�False��6�   �� 5!      -   5        $" txt_hokhau_hotennguoithamgia��5!      #��[ 6@   $
��auto��6w   $	��220��6�   
������ $��5 0 5 10q�6�   $! Họ tên người tham gia��5"   *   $��1q�6a   #���  6u   $��10(�6�   $��SemiBold"�6�   �� 5#      -   5        $! txt_hokhau_cccdnguoithamgia��5#      #��[ 6?   $
��auto��6v   $	��160��6�   
������ $��5 0 5 10q�6�   $ CCCD người tham gia��5$   *   $��1q�6_   #���  6s   $��10(�6�   $��SemiBold"�6�   �� 5%      -   5        	 ��Name$	 btn_DienTT_HoKhau��5%        MaterialDesignFlatButton#��[ 64   $
��auto��6f   $��	5 10 5 10q�6s   .��5&      '  !MaterialDesignThemes.Wpf.PackIcon  
   Kind$
 Upload=�6.   5'      �� 5(      -   5        $ txt_hokhau_quanhevoichuho��5(      #��[ 6=   $
��auto��6t   $	��100��6�   
������ $��5 0 5 10q�6�   $ 	Quan hệ��5)   *   $��1q�6S   #���  6g   $��10(�6�   $��SemiBold"�6�   �� 5*      -   5        $ txt_hokhau_diachi��5*      #��[ 65   $
��auto��6l   $	��560��6z   
������ $��5 0 5 10q�6�   $ Địa chỉ��5+   *   $��1q�6S   #���  6g   $��10(�6�   $��SemiBold"�6�   ${�False��6�   5,      &   System.Windows.Controls.DataGrid  5-      -	   5          Name$ dtg_Nguoithamgia��5-   �   $��2��6     DataGridCellStyle1   	CellStyle# �  6$     DataGridRowStyle1   RowStyle# �  6U      AutoGenerateColumns$ False��6�      CanUserAddRows$ False��6�      CanUserReorderColumns$ False��6�      GridLinesVisibility$
 None=�6�      Columns 5.      0  *System.Windows.Controls.DataGridTextColumn  5/      ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6C      Header$! Họ tên người tham gia��6M      
IsReadOnly$
 True��6l   1	  +System.Windows.Controls.DataGridBoundColumn 	  Binding 6)   �� *HoTen+6l     50      $ * 6N   $ CCCD người tham gia��6X   $
 True��6u    6)   �� *CccdNguoiThamGia+6u     51      $ * 6L   $  Quan hệ với chủ hộ��6V   $
 True��6r    6)   �� *QuanHeVoiChuHo+6r   53      �� 54      $��3��6    �� Orientation$ 
Horizontal=�6&   $��Center=�6?   $��Bottom=�6\   .+�55      �� -
   5        $	 btn_Them_Nguoithamgia��55       " MaterialDesignFlatAccentButton#��[ 68   $��1��6p   +
  %MaterialDesignThemes.Wpf.ButtonAssist 
  CornerRadius$ 7��6}   +  %MaterialDesignThemes.Wpf.RippleAssist   Feedback
 �r���  PrimaryHueDarkBrush#���  56   %   $	��100��6X   $��35��6d   $��Right=�6p   $��	0 10 20 0q�6�   $��13(�6�   .��57      �� $ 
Horizontal=�6!   .+�58        $

 Plus=�62   $��Center=�6>   $��13��6Y   $��13��6d   $��0 1 8 0q�6p   �� 59      $��Thêm��6$   5:      5;      �� 5<      -   5        $	 btn_CatKhau_Nguoithamgia��5<      #��[ 6;   $��1��6s   $ 7��6�   
 �r���#���  5=   %   $	��120��6X   $��35��6d   $��Right=�6p   $��0 10 0 0q�6�   $��13(�6�   .��5>      �� $ 
Horizontal=�6!   $��Center=�6:   .+�5?        $
 Delete=�62   $��Center=�6@   $��0 0 5 0q�6[   �� 5@      $��Cắt khẩu��6$   $��Center=�64   $��13(�6O   $��SemiBold"�6]   5A      5B      �� 5C      -   5        $	 btn_Dong_Hokhau��5C      #��[ 62   $��1��6j   $ 7��6w   
 �r���#���  5D   %   $	��100��6X   $��35��6d   $��Right=�6p   $��	0 10 20 0q�6�   $��13(�6�   .��5E      �� $ 
Horizontal=�6!   $��Center=�6:   .+�5F        $
 CloseBox=�62   $��Center=�6B   $��0 0 5 0q�6]   �� 5G      $��Đóng��6$   $��Center=�60   $��13(�6K   $��SemiBold"�6Y   5H      5I      5J      5K      5L      5M      
   M S B A M L   `   `   `  ����K  GQuanlyDancuDothi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:QuanlyDancuDothiQuanlyDancuDothi  5   	   *    $QuanlyDancuDothi.wThemNguoiVaoHoKhau   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   *localclr-namespace:QuanlyDancuDothi  5   	     � Title$  wThemNguoiVaoHoKhau��5	   	   $	��600��6%   $	��730��62      MaterialDesignBody#���   5
   	    � AllowsTransparency$
 True��5   	    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	   ��5   	   Z� .��5      #  MaterialDesignThemes.Wpf.Card    MaterialDesignPaper#���  6      UniformCornerRadius$ 15Q�6M   $��25q�6f   .  (MaterialDesignThemes.Wpf.ElevationAssist   	Elevation$	 Dp4=�6r   .��5   
   �  � RowDefinitions 5      �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $��* �6    �� 5      $
��auto �6    .+�5      �� -   5         ��Name$ btn_Exit��5      $��0��6'     MaterialDesignIconButton#��[ 64   +  %MaterialDesignThemes.Wpf.RippleAssist   Feedback
 �����
�������+  %MaterialDesignThemes.Wpf.ButtonAssist	   CornerRadius$	 6��6�   $��40��6�   $��40��5      $��Right=�6(   $��Right=�6?   $��0 5 5 5q�6r   .��5      '  !MaterialDesignThemes.Wpf.PackIcon  
   Kind$
 CloseBoxesOutline=�6*   $��Center=�6C   5      �� 5      $��1��6   $��ĐĂNG KÝ NHẬP KHẨU��6%   $��30(�6>   $��Center=�6L   $
��Bold"�6i   $��3��6{   � 5      $��2��6   $��Center=�6%   $��0,20,0,0q�6B   $	��630��6T   .+�5      �� -   5         ��Name$ txt_hokhau_mahokhau��5       ! MaterialDesignOutlinedTextBox#��[ 67   $
��auto��6n   $	��100��6|   
������ $��	5 20 5 10q�6�   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Mã hộ khẩu��5   *   $��1q�6V     MaterialDesignDivider#���  6j   $��10(�6�   $��SemiBold"�6�   $
{�True��6�   �� 5       -   5        $ btn_DienTT_HoKhau��5         MaterialDesignFlatButton#��[ 64   $
��auto��6f   $��	5 20 5 10q�6s   .��5!        $
 Upload=�6.   5"      �� 5#      -   5        $ txt_hokhau_cccdchuho��5#      #��[ 68   $
��auto��6o   $	��220��6}   
������ $��	5 20 5 10q�6�   $ CCCD chủ hộ��5$   *   $��1q�6W   #���  6k   $��10(�6�   $��SemiBold"�6�   ${�False��6�   �� 5%      -   5        $ txt_hokhau_hotenchuho��5%      #��[ 69   $
��auto��6p   $	��220��6~   
������ $��	5 20 5 10q�6�   $ Họ tên chủ hộ��5&   *   $��1q�6Y   #���  6m   $��10(�6�   $��SemiBold"�6�   ${�False��6�   �� 5'      -   5        $" txt_hokhau_hotennguoithamgia��5'      #��[ 6@   $
��auto��6w   $	��220��6�   
������ $��5 0 5 10q�6�   $! Họ tên người tham gia��5(   *   $��1q�6a   #���  6u   $��10(�6�   $��SemiBold"�6�   �� 5)      -   5        $! txt_hokhau_cccdnguoithamgia��5)      #��[ 6?   $
��auto��6v   $	��150��6�   
������ $��5 0 5 10q�6�   $ CCCD người tham gia��5*   *   $��1q�6_   #���  6s   $��10(�6�   $��SemiBold"�6�   �� 5+      -   5        $ btn_DienTT_NguoiThamGia��5+      #��[ 6:   $
��auto��6l   $��	5 20 5 10q�6y   .��5,        $
 Upload=�6.   5-      �� 5.      -	   5         ��Name$ 
cmb_quanhe��5.      
������ $
��auto��6H   $	��160��6V   $ 	Quan hệ��6b   #���  6�   $��10(�5/      $��SemiBold"�6)   $��5 0 5 0q�6?   �� 50      -
   5        $ txt_hokhau_diachi��50      #��[ 65   $
��auto��6l   $	��610��6z   
������ $��5 0 5 10q�6�   $ Địa chỉ��51   *   $��1q�6S   #���  6g   $��10(�6�   $��SemiBold"�6�   ${�False��6�   52      &   System.Windows.Controls.DataGrid  53      -   5          Name$ dtg_Nguoithamgia��53   �   $��3��6   $	��620��6$   $
��0 20q�60     DataGridCellStyle1   	CellStyle# �  6>     DataGridRowStyle1   RowStyle# �  6o      AutoGenerateColumns$ False��6�      CanUserAddRows$ False��6�      CanUserReorderColumns$ False��6�      GridLinesVisibility$
 None=�6	     Columns 54      0  *System.Windows.Controls.DataGridTextColumn  55      ,	  &System.Windows.Controls.DataGridColumn 	  Width5
  /System.Windows.Controls.DataGridLengthConverter$ *
 6C    	  Header$! Họ tên người tham gia��6M    	  
IsReadOnly$
 True��6l   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6)   �� *HoTen+6l     56      $ *
 6N   $ CCCD người tham gia��6X   $
 True��6u    6)   �� *CccdNguoiThamGia+6u     57      $ *
 6L   $  Quan hệ với chủ hộ��6V   $
 True��6r    6)   �� *QuanHeVoiChuHo+6r   59      �� 5:      $��4��6    �� Orientation$ 
Horizontal=�6&   $��Right=�6?   $��
0 20 60 20q�6[   .+�5;      �� -   5        $ btn_nhapkhau��5;       " MaterialDesignFlatAccentButton#��[ 6/   $��1��6g   $	 7��6t   
 �r��� 	 PrimaryHueDarkBrush#��� 	 5<   %   $	��120��6X   $��35��6d   $��Right=�6p   $��13(�6�   .��5=      �� $ 
Horizontal=�6!   .+�5>        $
 	PersonAdd=�62   $��Center=�6C   $��13��6^   $��13��6i   $��0 1 8 0q�6u   �� 5?      $��Nhập khẩu��6$   5@      5A      5B      5C      5D      5E      
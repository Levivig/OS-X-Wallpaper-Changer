FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��

Script by Philip Hutchison, April 2013
http://pipwerks.com
MIT license http://pipwerks.mit-license.org/

This script assumes:

1. You have a folder named "Wallpapers" in your Pictures folder
2. You have a subfolder named "Time of Day" in Wallpapers
3. You have six subfolders inside "Time of Day", with names that match the variables below. 
   * If you decide to use different folder names, you must change the variables to match the new folder names
4. You have images inside each folder

For example:
/Users/YOUR_USER_NAME/Pictures/Wallpapers/Time of Day/Afternoon Early/image.jpg

GeekTool can execute this script for you at specified intervals. Use this line in the command field:
osascript ~/Pictures/Wallpapers/Time\ of\ Day/wallpaper.scpt

     � 	 	� 
 
 S c r i p t   b y   P h i l i p   H u t c h i s o n ,   A p r i l   2 0 1 3 
 h t t p : / / p i p w e r k s . c o m 
 M I T   l i c e n s e   h t t p : / / p i p w e r k s . m i t - l i c e n s e . o r g / 
 
 T h i s   s c r i p t   a s s u m e s : 
 
 1 .   Y o u   h a v e   a   f o l d e r   n a m e d   " W a l l p a p e r s "   i n   y o u r   P i c t u r e s   f o l d e r 
 2 .   Y o u   h a v e   a   s u b f o l d e r   n a m e d   " T i m e   o f   D a y "   i n   W a l l p a p e r s 
 3 .   Y o u   h a v e   s i x   s u b f o l d e r s   i n s i d e   " T i m e   o f   D a y " ,   w i t h   n a m e s   t h a t   m a t c h   t h e   v a r i a b l e s   b e l o w .   
       *   I f   y o u   d e c i d e   t o   u s e   d i f f e r e n t   f o l d e r   n a m e s ,   y o u   m u s t   c h a n g e   t h e   v a r i a b l e s   t o   m a t c h   t h e   n e w   f o l d e r   n a m e s 
 4 .   Y o u   h a v e   i m a g e s   i n s i d e   e a c h   f o l d e r 
 
 F o r   e x a m p l e : 
 / U s e r s / Y O U R _ U S E R _ N A M E / P i c t u r e s / W a l l p a p e r s / T i m e   o f   D a y / A f t e r n o o n   E a r l y / i m a g e . j p g 
 
 G e e k T o o l   c a n   e x e c u t e   t h i s   s c r i p t   f o r   y o u   a t   s p e c i f i e d   i n t e r v a l s .   U s e   t h i s   l i n e   i n   t h e   c o m m a n d   f i e l d : 
 o s a s c r i p t   ~ / P i c t u r e s / W a l l p a p e r s / T i m e \   o f \   D a y / w a l l p a p e r . s c p t 
 
   
  
 l     ��������  ��  ��        l     ��������  ��  ��        l     ��  ��      BEGIN USER CONFIGURATION     �   2   B E G I N   U S E R   C O N F I G U R A T I O N      l     ��������  ��  ��        l     ��  ��      supply folder names     �   (   s u p p l y   f o l d e r   n a m e s      l     ����  r         m        �     ( M o r n i n g   R e a l l y   E a r l y  o      ���� (0 morningreallyearly morningReallyEarly��  ��     ! " ! l    #���� # r     $ % $ m     & & � ' '  M o r n i n g   E a r l y % o      ���� 0 morningearly morningEarly��  ��   "  ( ) ( l    *���� * r     + , + m    	 - - � . .  M o r n i n g , o      ���� 0 morning  ��  ��   )  / 0 / l    1���� 1 r     2 3 2 m     4 4 � 5 5  M o r n i n g   L a t e 3 o      ���� 0 morninglate morningLate��  ��   0  6 7 6 l    8���� 8 r     9 : 9 m     ; ; � < < & M o r n i n g   R e a l l y   L a t e : o      ���� &0 morningreallylate morningReallyLate��  ��   7  = > = l    ?���� ? r     @ A @ m     B B � C C  N o o n A o      ���� 0 noon  ��  ��   >  D E D l    F���� F r     G H G m     I I � J J , A f t e r n o o n   R e a l l y   E a r l y H o      ���� ,0 afternoonreallyearly afternoonReallyEarly��  ��   E  K L K l    M���� M r     N O N m     P P � Q Q  A f t e r n o o n   E a r l y O o      ����  0 afternoonearly afternoonEarly��  ��   L  R S R l    ' T���� T r     ' U V U m     # W W � X X  A f t e r n o o n V o      ���� 0 	afternoon  ��  ��   S  Y Z Y l  ( / [���� [ r   ( / \ ] \ m   ( + ^ ^ � _ _  A f t e r n o o n   L a t e ] o      ���� 0 afternoonlate afternoonLate��  ��   Z  ` a ` l  0 7 b���� b r   0 7 c d c m   0 3 e e � f f * A f t e r n o o n   R e a l l y   L a t e d o      ���� *0 afternoonreallylate afternoonReallyLate��  ��   a  g h g l  8 ? i���� i r   8 ? j k j m   8 ; l l � m m ( E v e n i n g   R e a l l y   E a r l y k o      ���� (0 eveningreallyearly eveningReallyEarly��  ��   h  n o n l  @ G p���� p r   @ G q r q m   @ C s s � t t  E v e n i n g   E a r l y r o      ���� 0 eveningearly eveningEarly��  ��   o  u v u l  H O w���� w r   H O x y x m   H K z z � { {  E v e n i n g y o      ���� 0 evening  ��  ��   v  | } | l  P W ~���� ~ r   P W  �  m   P S � � � � �  E v e n i n g   L a t e � o      ���� 0 eveninglate eveningLate��  ��   }  � � � l  X _ ����� � r   X _ � � � m   X [ � � � � � & E v e n i n g   R e a l l y   L a t e � o      ���� &0 eveningreallylate eveningReallyLate��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � $  for multiple monitor support.    � � � � <   f o r   m u l t i p l e   m o n i t o r   s u p p o r t . �  � � � l     �� � ���   � i c set to true to display the same image on all desktops, false to show unique images on each desktop    � � � � �   s e t   t o   t r u e   t o   d i s p l a y   t h e   s a m e   i m a g e   o n   a l l   d e s k t o p s ,   f a l s e   t o   s h o w   u n i q u e   i m a g e s   o n   e a c h   d e s k t o p �  � � � l  ` e ����� � r   ` e � � � m   ` a��
�� boovtrue � o      ���� <0 usesamepictureacrossdisplays useSamePictureAcrossDisplays��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   END USER CONFIGURATION    � � � � .   E N D   U S E R   C O N F I G U R A T I O N �  � � � l     ��������  ��  ��   �  � � � i      � � � I      ��������  0 toggledarkmode toggleDarkMode��  ��   � O      � � � k     � �  � � � l   ��������  ��  ��   �  � � � O     � � � k   
  � �  � � � l  
 
��������  ��  ��   �  � � � r   
  � � � H   
  � � 1   
 ��
�� 
thme � 1    ��
�� 
thme �  ��� � l   ��������  ��  ��  ��   � 1    ��
�� 
aprp �  ��� � l   ��������  ��  ��  ��   � m      � ��                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � !  get seconds since midnight    � � � � 6   g e t   s e c o n d s   s i n c e   m i d n i g h t �  � � � l  f s ����� � r   f s � � � l  f o ����� � n   f o � � � 1   k o��
�� 
time � l  f k ����� � I  f k������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��   � o      ���� 0 t  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   set default periodOfDay    � � � � 0   s e t   d e f a u l t   p e r i o d O f D a y �  � � � l  t y ����� � r   t y � � � o   t u���� 0 morningearly morningEarly � o      ���� 0 periodofday periodOfDay��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 8 2 change value of periodOfDay based on current time    � � � � d   c h a n g e   v a l u e   o f   p e r i o d O f D a y   b a s e d   o n   c u r r e n t   t i m e �  � � � l     �� � ���   �   4:00 to 5:30    � � � �    4 : 0 0   t o   5 : 3 0 �  � � � l  z� ����� � Z   z� � � ��� � l  z � ���~ � F   z � � � � @   z � � � � o   z }�}�} 0 t   � m   } ��|�|8@ � A   � � � � � o   � ��{�{ 0 t   � m   � ��z�zMX�  �~   � k   � � � �  � � � r   � � � � � o   � ��y�y (0 morningreallyearly morningReallyEarly � o      �x�x 0 periodofday periodOfDay �  ��w � l  � ��v � ��v   �   5:30 to 7:00	    � � � �    5 : 3 0   t o   7 : 0 0 	�w   �  � � � l  � � ��u�t � F   � � � � � @   � � �  � o   � ��s�s 0 t    m   � ��r�rMX � A   � � o   � ��q�q 0 t   m   � ��p�pbp�u  �t   �  k   � �  r   � �	 o   � ��o�o 0 morningearly morningEarly	 o      �n�n 0 periodofday periodOfDay 

 I   � ��m�l�k�m  0 toggledarkmode toggleDarkMode�l  �k    l  � ��j�i�h�j  �i  �h   �g l  � ��f�f     7:00 to 8:30    �    7 : 0 0   t o   8 : 3 0�g    l  � ��e�d F   � � @   � � o   � ��c�c 0 t   m   � ��b�bbp A   � � o   � ��a�a 0 t   m   � ��`�`w��e  �d    k   � �  r   � � !  o   � ��_�_ 0 morning  ! o      �^�^ 0 periodofday periodOfDay "�]" l  � ��\#$�\  #   8:30 to 10:00	   $ �%%    8 : 3 0   t o   1 0 : 0 0 	�]   &'& l  � �(�[�Z( F   � �)*) @   � �+,+ o   � ��Y�Y 0 t  , m   � ��X�Xw�* A   � �-.- o   � ��W�W 0 t  . m   � ��V�V   ���[  �Z  ' /0/ k   �11 232 r   �454 o   � ��U�U 0 morninglate morningLate5 o      �T�T 0 periodofday periodOfDay3 6�S6 l �R78�R  7   10:00 to 11:30   8 �99    1 0 : 0 0   t o   1 1 : 3 0�S  0 :;: l <�Q�P< F  =>= @  ?@? o  �O�O 0 t  @ m  �N�N   ��> A  ABA o  �M�M 0 t  B m  �L�L   ���Q  �P  ; CDC k   'EE FGF r   %HIH o   !�K�K &0 morningreallylate morningReallyLateI o      �J�J 0 periodofday periodOfDayG J�IJ l &&�HKL�H  K   11:30 to 13:00	   L �MM     1 1 : 3 0   t o   1 3 : 0 0 	�I  D NON l *?P�G�FP F  *?QRQ @  *1STS o  *-�E�E 0 t  T m  -0�D�D   ��R A  4;UVU o  47�C�C 0 t  V m  7:�B�B   ���G  �F  O WXW k  BIYY Z[Z r  BG\]\ o  BC�A�A 0 noon  ] o      �@�@ 0 periodofday periodOfDay[ ^�?^ l HH�>_`�>  _   13:00 to 14:30   ` �aa    1 3 : 0 0   t o   1 4 : 3 0�?  X bcb l Lad�=�<d F  Laefe @  LSghg o  LO�;�; 0 t  h m  OR�:�:   ��f A  V]iji o  VY�9�9 0 t  j m  Y\�8�8   ���=  �<  c klk k  dkmm non r  dipqp o  de�7�7 ,0 afternoonreallyearly afternoonReallyEarlyq o      �6�6 0 periodofday periodOfDayo r�5r l jj�4st�4  s   14:30 to 16:00	   t �uu     1 4 : 3 0   t o   1 6 : 0 0 	�5  l vwv l n�x�3�2x F  n�yzy @  nu{|{ o  nq�1�1 0 t  | m  qt�0�0   ��z A  x}~} o  x{�/�/ 0 t  ~ m  {~�.�.   � �3  �2  w � k  ���� ��� r  ����� o  ���-�-  0 afternoonearly afternoonEarly� o      �,�, 0 periodofday periodOfDay� ��+� l ���*���*  �   16:00 to 17:30   � ���    1 6 : 0 0   t o   1 7 : 3 0�+  � ��� l ����)�(� F  ����� @  ����� o  ���'�' 0 t  � m  ���&�&   � � A  ����� o  ���%�% 0 t  � m  ���$�$   ��)  �(  � ��� k  ���� ��� r  ����� o  ���#�# 0 	afternoon  � o      �"�" 0 periodofday periodOfDay� ��!� l ��� ���   �   17:30 to 19:00	   � ���     1 7 : 3 0   t o   1 9 : 0 0 	�!  � ��� l ������ F  ����� @  ����� o  ���� 0 t  � m  ����   �� A  ����� o  ���� 0 t  � m  ����  0�  �  � ��� k  ���� ��� r  ����� o  ���� 0 afternoonlate afternoonLate� o      �� 0 periodofday periodOfDay� ��� l ������  �   19:00 to 20:30   � ���    1 9 : 0 0   t o   2 0 : 3 0�  � ��� l ������ F  ����� @  ����� o  ���� 0 t  � m  ����  0� A  ����� o  ���� 0 t  � m  ����   H�  �  � ��� k  ���� ��� r  ����� o  ���� *0 afternoonreallylate afternoonReallyLate� o      �� 0 periodofday periodOfDay� ��� l ������  �   20:30 to 22:00	   � ���     2 0 : 3 0   t o   2 2 : 0 0 	�  � ��� l ����
� F  ���� @  ���� o  ���	�	 0 t  � m  ���   H� A  ��� o  	�� 0 t  � m  	��  5`�  �
  � ��� k  �� ��� r  ��� o  �� (0 eveningreallyearly eveningReallyEarly� o      �� 0 periodofday periodOfDay� ��� l ����  �   22:00 to 23:30   � ���    2 2 : 0 0   t o   2 3 : 3 0�  � ��� l  5��� � F   5��� @   '��� o   #���� 0 t  � m  #&����  5`� A  *1��� o  *-���� 0 t  � m  -0����  Jx�  �   � ��� k  8G�� ��� r  8?��� o  8;���� 0 eveningearly eveningEarly� o      ���� 0 periodofday periodOfDay� ��� I  @E��������  0 toggledarkmode toggleDarkMode��  ��  � ��� l FF��������  ��  ��  � ���� l FF������  �   23:30 to 1:00	   � ���    2 3 : 3 0   t o   1 : 0 0 	��  � ��� l J_������ G  J_��� @  JQ��� o  JM���� 0 t  � m  MP����  Jx� A  T[��� o  TW���� 0 t  � m  WZ������  ��  � ��� k  bk�� ��� r  bi   o  be���� 0 evening   o      ���� 0 periodofday periodOfDay� �� l jj����     1:00 to 2:30    �    1 : 0 0   t o   2 : 3 0��  �  l n����� F  n�	
	 @  nu o  nq���� 0 t   m  qt����
 A  x o  x{���� 0 t   m  {~����#(��  ��    k  ��  r  �� o  ������ 0 eveninglate eveningLate o      ���� 0 periodofday periodOfDay �� l ������     2:30 to 4:00	    �    2 : 3 0   t o   4 : 0 0 	��    l ������ F  �� @  ��  o  ������ 0 t    m  ������#( A  ��!"! o  ������ 0 t  " m  ������8@��  ��   #��# r  ��$%$ o  ������ &0 eveningreallylate eveningReallyLate% o      ���� 0 periodofday periodOfDay��  ��  ��  ��   � &'& l     ��������  ��  ��  ' ()( l     ��*+��  * ; 5 helper function ("handler") for getting random image   + �,, j   h e l p e r   f u n c t i o n   ( " h a n d l e r " )   f o r   g e t t i n g   r a n d o m   i m a g e) -.- i    /0/ I      ��1���� 0 getimage getImage1 2��2 o      ���� 0 
foldername 
folderName��  ��  0 k     33 454 l     ��������  ��  ��  5 676 O     898 L    :: c    ;<; n    =>= 3    ��
�� 
file> n    ?@? 4    ��A
�� 
cfolA l   B����B b    CDC m    	EE �FF @ P i c t u r e s : W a l l p a p e r s : T i m e   o f   D a y :D o   	 
���� 0 
foldername 
folderName��  ��  @ 1    ��
�� 
home< m    ��
�� 
ctxt9 m     GG�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  7 H��H l   ��������  ��  ��  ��  . IJI l     ��������  ��  ��  J KLK l     ��������  ��  ��  L MNM l �RO����O O  �RPQP k  �QRR STS l ����������  ��  ��  T UVU l ����WX��  W 3 - wrapped in a try block for error suppression   X �YY Z   w r a p p e d   i n   a   t r y   b l o c k   f o r   e r r o r   s u p p r e s s i o nV Z[Z Q  �O\]��\ k  �F^^ _`_ l ����������  ��  ��  ` aba l ����cd��  c 6 0 determine which picture to use for main display   d �ee `   d e t e r m i n e   w h i c h   p i c t u r e   t o   u s e   f o r   m a i n   d i s p l a yb fgf r  ��hih n ��jkj I  ����l���� 0 getimage getImagel m��m o  ������ 0 periodofday periodOfDay��  ��  k  f  ��i o      ���� (0 maindisplaypicture mainDisplayPictureg non l ����������  ��  ��  o pqp l ����rs��  r = 7 set the picture for additional monitors, if applicable   s �tt n   s e t   t h e   p i c t u r e   f o r   a d d i t i o n a l   m o n i t o r s ,   i f   a p p l i c a b l eq uvu O  �:wxw k  �9yy z{z l ����������  ��  ��  { |}| l ����~��  ~ &   get a reference to all desktops    ��� @   g e t   a   r e f e r e n c e   t o   a l l   d e s k t o p s} ��� r  ����� N  ���� 2  ����
�� 
dskp� o      ���� 0 thedesktops theDesktops� ��� l ����������  ��  ��  � ��� l ��������  � !  handle additional desktops   � ��� 6   h a n d l e   a d d i t i o n a l   d e s k t o p s� ��� Z  �7������� l �������� ?  ����� l �������� I �������
�� .corecnte****       ****� o  ������ 0 thedesktops theDesktops��  ��  ��  � m  ������ ��  ��  � k  �3�� ��� l ����������  ��  ��  � ��� l ��������  � D > loop through all desktops (beginning with the second desktop)   � ��� |   l o o p   t h r o u g h   a l l   d e s k t o p s   ( b e g i n n i n g   w i t h   t h e   s e c o n d   d e s k t o p )� ��� Y  �1�������� k  �,�� ��� l ����������  ��  ��  � ��� l ��������  � #  determine which image to use   � ��� :   d e t e r m i n e   w h i c h   i m a g e   t o   u s e� ��� Z  ������� l �������� = ����� o  ������ <0 usesamepictureacrossdisplays useSamePictureAcrossDisplays� m  ����
�� boovfals��  ��  � r  ��� n 	��� I  	������� 0 getimage getImage� ��� o  �~�~ 0 periodofday periodOfDay�  ��  �  f  � o      �}�} 20 secondarydisplaypicture secondaryDisplayPicture��  � r  ��� n ��� o  �|�| (0 maindisplaypicture mainDisplayPicture�  f  � o      �{�{ 20 secondarydisplaypicture secondaryDisplayPicture� ��� l �z�y�x�z  �y  �x  � ��� l �w���w  �   apply image to desktop   � ��� .   a p p l y   i m a g e   t o   d e s k t o p� ��� r  *��� o  �v�v 20 secondarydisplaypicture secondaryDisplayPicture� n      ��� 1  %)�u
�u 
picP� n  %��� 4   %�t�
�t 
cobj� o  #$�s�s 0 x  � l  ��r�q� o   �p�p 0 thedesktops theDesktops�r  �q  � ��o� l ++�n�m�l�n  �m  �l  �o  �� 0 x  � m  ���k�k � l ����j�i� I ���h��g
�h .corecnte****       ****� o  ���f�f 0 thedesktops theDesktops�g  �j  �i  ��  � ��e� l 22�d�c�b�d  �c  �b  �e  ��  ��  � ��a� l 88�`�_�^�`  �_  �^  �a  x m  �����                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  v ��� l ;;�]�\�[�]  �\  �[  � ��� l ;;�Z���Z  � ( " set the primary monitor's picture   � ��� D   s e t   t h e   p r i m a r y   m o n i t o r ' s   p i c t u r e� ��� l ;;�Y���Y  � R L due to a Finder quirk, this has to be done AFTER setting the other displays   � ��� �   d u e   t o   a   F i n d e r   q u i r k ,   t h i s   h a s   t o   b e   d o n e   A F T E R   s e t t i n g   t h e   o t h e r   d i s p l a y s� ��� r  ;D��� o  ;>�X�X (0 maindisplaypicture mainDisplayPicture� 1  >C�W
�W 
dpic� ��V� l EE�U�T�S�U  �T  �S  �V  ] R      �R�Q�P
�R .ascrerr ****      � ****�Q  �P  ��  [ ��O� l PP�N�M�L�N  �M  �L  �O  Q m  �����                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��  N ��K� l     �J�I�H�J  �I  �H  �K       �G�����G  � �F�E�D�F  0 toggledarkmode toggleDarkMode�E 0 getimage getImage
�D .aevtoappnull  �   � ****� �C ��B�A���@�C  0 toggledarkmode toggleDarkMode�B  �A  �  �  ��?�>
�? 
aprp
�> 
thme�@ � *�, *�,*�,FOPUOPU� �=0�<�;���:�= 0 getimage getImage�< �9��9 �  �8�8 0 
foldername 
folderName�;  � �7�7 0 
foldername 
folderName� G�6�5E�4�3
�6 
home
�5 
cfol
�4 
file
�3 
ctxt�: � *�,��%/�.�&UOP� �2��1�0���/
�2 .aevtoappnull  �   � ****� k    R��  ��  !��  (��  /��  6��  =��  D��  K��  R��  Y��  `��  g    n  u  |  �  �  �  �  � M�.�.  �1  �0  � �-�- 0 x  � D �, &�+ -�* 4�) ;�( B�' I�& P�% W�$ ^�# e�" l�! s�  z� �� ���������������������
�	����������� �����������, (0 morningreallyearly morningReallyEarly�+ 0 morningearly morningEarly�* 0 morning  �) 0 morninglate morningLate�( &0 morningreallylate morningReallyLate�' 0 noon  �& ,0 afternoonreallyearly afternoonReallyEarly�%  0 afternoonearly afternoonEarly�$ 0 	afternoon  �# 0 afternoonlate afternoonLate�" *0 afternoonreallylate afternoonReallyLate�! (0 eveningreallyearly eveningReallyEarly�  0 eveningearly eveningEarly� 0 evening  � 0 eveninglate eveningLate� &0 eveningreallylate eveningReallyLate� <0 usesamepictureacrossdisplays useSamePictureAcrossDisplays
� .misccurdldt    ��� null
� 
time� 0 t  � 0 periodofday periodOfDay�8@�MX
� 
bool�bp�  0 toggledarkmode toggleDarkMode�w��   ���   ���   ���   ���   � �   ��  0�
   H�	  5`�  Jx��#(� 0 getimage getImage� (0 maindisplaypicture mainDisplayPicture
� 
dskp� 0 thedesktops theDesktops
� .corecnte****       ****�  20 secondarydisplaypicture secondaryDisplayPicture
�� 
cobj
�� 
picP
�� 
dpic��  ��  �/S�E�O�E�O�E�O�E�O�E�O�E�O�E�O�E�Oa E` Oa E` Oa E` Oa E` Oa E` Oa E` Oa E` Oa E` OeE`  O*j !a ",E` #O�E` $O_ #a %	 _ #a &a '& �E` $OPY_ #a &	 _ #a (a '& �E` $O*j+ )OPY�_ #a (	 _ #a *a '& �E` $OPY�_ #a *	 _ #a +a '& �E` $OPY�_ #a +	 _ #a ,a '& �E` $OPY�_ #a ,	 _ #a -a '& �E` $OPYk_ #a -	 _ #a .a '& �E` $OPYI_ #a .	 _ #a /a '& �E` $OPY'_ #a /	 _ #a 0a '& _ E` $OPY_ #a 0	 _ #a 1a '& _ E` $OPY �_ #a 1	 _ #a 2a '& _ E` $OPY �_ #a 2	 _ #a 3a '& _ E` $OPY �_ #a 3	 _ #a 4a '& _ E` $O*j+ )OPY m_ #a 4
 _ #a 5a '& _ E` $OPY I_ #a 5	 _ #a 6a '& _ E` $OPY %_ #a 6	 _ #a %a '& _ E` $Y hOa 7 � �)_ $k+ 8E` 9Oa : i*a ;-E` <O_ <j =k O Gl_ <j =kh  _  f  )_ $k+ 8E` >Y )a 9,E` >O_ >_ <a ?�/a @,FOP[OY��OPY hOPUO_ 9*a A,FOPW X B ChOPU ascr  ��ޭ
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
�� boovtrue � o      ���� <0 usesamepictureacrossdisplays useSamePictureAcrossDisplays��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   END USER CONFIGURATION    � � � � .   E N D   U S E R   C O N F I G U R A T I O N �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � !  get seconds since midnight    � � � � 6   g e t   s e c o n d s   s i n c e   m i d n i g h t �  � � � l  f s ����� � r   f s � � � l  f o ����� � n   f o � � � 1   k o��
�� 
time � l  f k ����� � I  f k������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��   � o      ���� 0 t  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   set default periodOfDay    � � � � 0   s e t   d e f a u l t   p e r i o d O f D a y �  � � � l  t y ����� � r   t y � � � o   t u���� 0 morningearly morningEarly � o      ���� 0 periodofday periodOfDay��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 8 2 change value of periodOfDay based on current time    � � � � d   c h a n g e   v a l u e   o f   p e r i o d O f D a y   b a s e d   o n   c u r r e n t   t i m e �  � � � l     �� � ���   �   if(h >= 4 and h <= 5)    � � � � ,   i f ( h   > =   4   a n d   h   < =   5 ) �  � � � l  z� ����� � Z   z� � � ��� � l  z � ����� � F   z � � � � @   z � � � � o   z }���� 0 t   � m   } �����8@ � A   � � � � � o   � ����� 0 t   � m   � �����MX��  ��   � r   � � � � � o   � ����� (0 morningreallyearly morningReallyEarly � o      ���� 0 periodofday periodOfDay �  � � � l  � � ����� � F   � � � � � @   � � � � � o   � ����� 0 t   � m   � �����MX � A   � � � � � o   � ����� 0 t   � m   � �����bp��  ��   �  � � � r   � � � � � o   � ����� 0 morningearly morningEarly � o      ���� 0 periodofday periodOfDay �  � � � l  � � ���� � F   � � � � � @   � � � � � o   � ��~�~ 0 t   � m   � ��}�}bp � A   � � � � � o   � ��|�| 0 t   � m   � ��{�{w���  �   �  � � � r   � � � � � o   � ��z�z 0 morning   � o      �y�y 0 periodofday periodOfDay �  � � � l  � � ��x�w � F   � � � � � @   � � � � � o   � ��v�v 0 t   � m   � ��u�uw� � A   � � � � � o   � ��t�t 0 t   � m   � ��s�s   ���x  �w   �    r   � � o   � ��r�r 0 morninglate morningLate o      �q�q 0 periodofday periodOfDay  l  ��p�o F   � @   �	
	 o   � ��n�n 0 t  
 m   � �m�m   �� A   o  �l�l 0 t   m  
�k�k   ���p  �o    r   o  �j�j &0 morningreallylate morningReallyLate o      �i�i 0 periodofday periodOfDay  l /�h�g F  / @  ! o  �f�f 0 t   m   �e�e   �� A  $+ o  $'�d�d 0 t   m  '*�c�c   ���h  �g    r  27 o  23�b�b 0 noon   o      �a�a 0 periodofday periodOfDay  l :O �`�_  F  :O!"! @  :A#$# o  :=�^�^ 0 t  $ m  =@�]�]   ��" A  DK%&% o  DG�\�\ 0 t  & m  GJ�[�[   ���`  �_   '(' r  RW)*) o  RS�Z�Z ,0 afternoonreallyearly afternoonReallyEarly* o      �Y�Y 0 periodofday periodOfDay( +,+ l Zo-�X�W- F  Zo./. @  Za010 o  Z]�V�V 0 t  1 m  ]`�U�U   ��/ A  dk232 o  dg�T�T 0 t  3 m  gj�S�S   � �X  �W  , 454 r  rw676 o  rs�R�R  0 afternoonearly afternoonEarly7 o      �Q�Q 0 periodofday periodOfDay5 898 l z�:�P�O: F  z�;<; @  z�=>= o  z}�N�N 0 t  > m  }��M�M   � < A  ��?@? o  ���L�L 0 t  @ m  ���K�K   ��P  �O  9 ABA r  ��CDC o  ���J�J 0 	afternoon  D o      �I�I 0 periodofday periodOfDayB EFE l ��G�H�GG F  ��HIH @  ��JKJ o  ���F�F 0 t  K m  ���E�E   �I A  ��LML o  ���D�D 0 t  M m  ���C�C  0�H  �G  F NON r  ��PQP o  ���B�B 0 afternoonlate afternoonLateQ o      �A�A 0 periodofday periodOfDayO RSR l ��T�@�?T F  ��UVU @  ��WXW o  ���>�> 0 t  X m  ���=�=  0V A  ��YZY o  ���<�< 0 t  Z m  ���;�;   H�@  �?  S [\[ r  ��]^] o  ���:�: *0 afternoonreallylate afternoonReallyLate^ o      �9�9 0 periodofday periodOfDay\ _`_ l ��a�8�7a F  ��bcb @  ��ded o  ���6�6 0 t  e m  ���5�5   Hc A  ��fgf o  ���4�4 0 t  g m  ���3�3  5`�8  �7  ` hih r  ��jkj o  ���2�2 (0 eveningreallyearly eveningReallyEarlyk o      �1�1 0 periodofday periodOfDayi lml l n�0�/n F  opo @  	qrq o  �.�. 0 t  r m  �-�-  5`p A  sts o  �,�, 0 t  t m  �+�+  Jx�0  �/  m uvu r  !wxw o  �*�* 0 eveningearly eveningEarlyx o      �)�) 0 periodofday periodOfDayv yzy l $9{�(�'{ G  $9|}| @  $+~~ o  $'�&�& 0 t   m  '*�%�%  Jx} A  .5��� o  .1�$�$ 0 t  � m  14�#�#�(  �'  z ��� r  <C��� o  <?�"�" 0 evening  � o      �!�! 0 periodofday periodOfDay� ��� l F[�� �� F  F[��� @  FM��� o  FI�� 0 t  � m  IL��� A  PW��� o  PS�� 0 t  � m  SV��#(�   �  � ��� r  ^e��� o  ^a�� 0 eveninglate eveningLate� o      �� 0 periodofday periodOfDay� ��� l h}���� F  h}��� @  ho��� o  hk�� 0 t  � m  kn��#(� A  ry��� o  ru�� 0 t  � m  ux��8@�  �  � ��� r  ����� o  ���� &0 eveningreallylate eveningReallyLate� o      �� 0 periodofday periodOfDay�  ��  ��  ��   � ��� l     ����  �  �  � ��� l     ����  � ; 5 helper function ("handler") for getting random image   � ��� j   h e l p e r   f u n c t i o n   ( " h a n d l e r " )   f o r   g e t t i n g   r a n d o m   i m a g e� ��� i     ��� I      ���
� 0 getimage getImage� ��	� o      �� 0 
foldername 
folderName�	  �
  � k     �� ��� l     ����  �  �  � ��� O     ��� L    �� c    ��� n    ��� 3    �
� 
file� n    ��� 4    ��
� 
cfol� l   ���� b    ��� m    	�� ��� @ P i c t u r e s : W a l l p a p e r s : T i m e   o f   D a y :� o   	 
� �  0 
foldername 
folderName�  �  � 1    ��
�� 
home� m    ��
�� 
ctxt� m     ���                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ���� l   ��������  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l �(������ O  �(��� k  �'�� ��� l ����������  ��  ��  � ��� l ��������  � 3 - wrapped in a try block for error suppression   � ��� Z   w r a p p e d   i n   a   t r y   b l o c k   f o r   e r r o r   s u p p r e s s i o n� ��� Q  �%����� k  ��� ��� l ����������  ��  ��  � ��� l ��������  � 6 0 determine which picture to use for main display   � ��� `   d e t e r m i n e   w h i c h   p i c t u r e   t o   u s e   f o r   m a i n   d i s p l a y� ��� r  ����� n ����� I  ��������� 0 getimage getImage� ���� o  ������ 0 periodofday periodOfDay��  ��  �  f  ��� o      ���� (0 maindisplaypicture mainDisplayPicture� ��� l ����������  ��  ��  � ��� l ��������  � = 7 set the picture for additional monitors, if applicable   � ��� n   s e t   t h e   p i c t u r e   f o r   a d d i t i o n a l   m o n i t o r s ,   i f   a p p l i c a b l e� ��� O  ���� k  ��� ��� l ����������  ��  ��  � ��� l ��������  � &   get a reference to all desktops   � ��� @   g e t   a   r e f e r e n c e   t o   a l l   d e s k t o p s� ��� r  ����� N  ���� 2  ����
�� 
dskp� o      ���� 0 thedesktops theDesktops� � � l ����������  ��  ��     l ������   !  handle additional desktops    � 6   h a n d l e   a d d i t i o n a l   d e s k t o p s  Z  �	���� l ��
����
 ?  �� l ������ I ������
�� .corecnte****       **** o  ������ 0 thedesktops theDesktops��  ��  ��   m  ������ ��  ��  	 k  �	  l ����������  ��  ��    l ������   D > loop through all desktops (beginning with the second desktop)    � |   l o o p   t h r o u g h   a l l   d e s k t o p s   ( b e g i n n i n g   w i t h   t h e   s e c o n d   d e s k t o p )  Y  ����� k  �  l ����������  ��  ��     l ����!"��  ! #  determine which image to use   " �## :   d e t e r m i n e   w h i c h   i m a g e   t o   u s e  $%$ Z  ��&'��(& l ��)����) = ��*+* o  ������ <0 usesamepictureacrossdisplays useSamePictureAcrossDisplays+ m  ����
�� boovfals��  ��  ' r  ��,-, n ��./. I  ����0���� 0 getimage getImage0 1��1 o  ������ 0 periodofday periodOfDay��  ��  /  f  ��- o      ���� 20 secondarydisplaypicture secondaryDisplayPicture��  ( r  ��232 n ��454 o  ������ (0 maindisplaypicture mainDisplayPicture5  f  ��3 o      ���� 20 secondarydisplaypicture secondaryDisplayPicture% 676 l ����������  ��  ��  7 898 l ����:;��  :   apply image to desktop   ; �<< .   a p p l y   i m a g e   t o   d e s k t o p9 =>= r  � ?@? o  ������ 20 secondarydisplaypicture secondaryDisplayPicture@ n      ABA 1  ����
�� 
picPB n  ��CDC 4  ����E
�� 
cobjE o  ������ 0 x  D l ��F����F o  ������ 0 thedesktops theDesktops��  ��  > G��G l ��������  ��  ��  ��  �� 0 x   m  ������  l ��H����H I ����I��
�� .corecnte****       ****I o  ������ 0 thedesktops theDesktops��  ��  ��  ��   J��J l ��������  ��  ��  ��  ��  ��   K��K l ��������  ��  ��  ��  � m  ��LL�                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � MNM l ��������  ��  ��  N OPO l ��QR��  Q ( " set the primary monitor's picture   R �SS D   s e t   t h e   p r i m a r y   m o n i t o r ' s   p i c t u r eP TUT l ��VW��  V R L due to a Finder quirk, this has to be done AFTER setting the other displays   W �XX �   d u e   t o   a   F i n d e r   q u i r k ,   t h i s   h a s   t o   b e   d o n e   A F T E R   s e t t i n g   t h e   o t h e r   d i s p l a y sU YZY r  [\[ o  ���� (0 maindisplaypicture mainDisplayPicture\ 1  ��
�� 
dpicZ ]��] l ��������  ��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � ^��^ l &&��������  ��  ��  ��  � m  ��__�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��  � `��` l     ��������  ��  ��  ��       "��abc  & - 4 ; B I P W ^ e l s z � ����� Ide��~�}�|�{�z�y�x�w��  a  �v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�d�c�b�a�`�_�^�]�\�[�Z�Y�X�W�v 0 getimage getImage
�u .aevtoappnull  �   � ****�t (0 morningreallyearly morningReallyEarly�s 0 morningearly morningEarly�r 0 morning  �q 0 morninglate morningLate�p &0 morningreallylate morningReallyLate�o 0 noon  �n ,0 afternoonreallyearly afternoonReallyEarly�m  0 afternoonearly afternoonEarly�l 0 	afternoon  �k 0 afternoonlate afternoonLate�j *0 afternoonreallylate afternoonReallyLate�i (0 eveningreallyearly eveningReallyEarly�h 0 eveningearly eveningEarly�g 0 evening  �f 0 eveninglate eveningLate�e &0 eveningreallylate eveningReallyLate�d <0 usesamepictureacrossdisplays useSamePictureAcrossDisplays�c 0 t  �b 0 periodofday periodOfDay�a (0 maindisplaypicture mainDisplayPicture�` 0 thedesktops theDesktops�_  �^  �]  �\  �[  �Z  �Y  �X  �W  b �V��U�Tfg�S�V 0 getimage getImage�U �Rh�R h  �Q�Q 0 
foldername 
folderName�T  f �P�P 0 
foldername 
folderNameg ��O�N��M�L
�O 
home
�N 
cfol
�M 
file
�L 
ctxt�S � *�,��%/�.�&UOPc �Ki�J�Ijk�H
�K .aevtoappnull  �   � ****i k    (ll  mm  !nn  (oo  /pp  6qq  =rr  Dss  Ktt  Ruu  Yvv  `ww  gxx  nyy  uzz  |{{  �||  �}}  �~~  �  ��� ��G�G  �J  �I  j �F�F 0 x  k C �E &�D -�C 4�B ;�A B�@ I�? P�> W�= ^�< e�; l�: s�9 z�8 ��7 ��6�5�4�3�2�1�0�/�.�-�,�+�*�)�(�'�&�%�$�#�"�!� _��L����������E (0 morningreallyearly morningReallyEarly�D 0 morningearly morningEarly�C 0 morning  �B 0 morninglate morningLate�A &0 morningreallylate morningReallyLate�@ 0 noon  �? ,0 afternoonreallyearly afternoonReallyEarly�>  0 afternoonearly afternoonEarly�= 0 	afternoon  �< 0 afternoonlate afternoonLate�; *0 afternoonreallylate afternoonReallyLate�: (0 eveningreallyearly eveningReallyEarly�9 0 eveningearly eveningEarly�8 0 evening  �7 0 eveninglate eveningLate�6 &0 eveningreallylate eveningReallyLate�5 <0 usesamepictureacrossdisplays useSamePictureAcrossDisplays
�4 .misccurdldt    ��� null
�3 
time�2 0 t  �1 0 periodofday periodOfDay�08@�/MX
�. 
bool�-bp�,w��+   ���*   ���)   ���(   ���'   � �&   ��%  0�$   H�#  5`�"  Jx�!� #(� 0 getimage getImage� (0 maindisplaypicture mainDisplayPicture
� 
dskp� 0 thedesktops theDesktops
� .corecnte****       ****� 20 secondarydisplaypicture secondaryDisplayPicture
� 
cobj
� 
picP
� 
dpic�  �  �H)�E�O�E�O�E�O�E�O�E�O�E�O�E�O�E�Oa E` Oa E` Oa E` Oa E` Oa E` Oa E` Oa E` Oa E` OeE`  O*j !a ",E` #O�E` $O_ #a %	 _ #a &a '& 
�E` $Y�_ #a &	 _ #a (a '& 
�E` $Y�_ #a (	 _ #a )a '& 
�E` $Y�_ #a )	 _ #a *a '& 
�E` $Y�_ #a *	 _ #a +a '& 
�E` $Ys_ #a +	 _ #a ,a '& 
�E` $YS_ #a ,	 _ #a -a '& 
�E` $Y3_ #a -	 _ #a .a '& 
�E` $Y_ #a .	 _ #a /a '& _ E` $Y �_ #a /	 _ #a 0a '& _ E` $Y �_ #a 0	 _ #a 1a '& _ E` $Y �_ #a 1	 _ #a 2a '& _ E` $Y �_ #a 2	 _ #a 3a '& _ E` $Y i_ #a 3
 _ #a 4a '& _ E` $Y G_ #a 4	 _ #a 5a '& _ E` $Y %_ #a 5	 _ #a %a '& _ E` $Y hOa 6 � �)_ $k+ 7E` 8Oa 9 i*a :-E` ;O_ ;j <k O Gl_ ;j <kh  _  f  )_ $k+ 7E` =Y )a 8,E` =O_ =_ ;a >�/a ?,FOP[OY��OPY hOPUO_ 8*a @,FOPW X A BhOPU
�� boovtrue��   �Ld ��� � M a c i n t o s h   H D : U s e r s : l e v i v i g : P i c t u r e s : W a l l p a p e r s : T i m e   o f   D a y : A f t e r n o o n   R e a l l y   E a r l y : m o j a v e _ d y n a m i c _ 7 . j p e ge �� L�
� 
dskp�  �~  �}  �|  �{  �z  �y  �x  �w  ascr  ��ޭ
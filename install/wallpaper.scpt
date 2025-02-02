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
 l     ��������  ��  ��        l     ��������  ��  ��        l     ��  ��      BEGIN USER CONFIGURATION     �   2   B E G I N   U S E R   C O N F I G U R A T I O N      l     ��������  ��  ��        l     ��  ��      supply folder names     �   (   s u p p l y   f o l d e r   n a m e s      l     ����  r         m        �      M o r n i n g   E a r l y  o      ���� 0 morningearly morningEarly��  ��     ! " ! l    #���� # r     $ % $ m     & & � ' '  M o r n i n g   N o r m a l % o      ���� 0 morningnormal morningNormal��  ��   "  ( ) ( l    *���� * r     + , + m    	 - - � . .  M o r n i n g   L a t e , o      ���� 0 morninglate morningLate��  ��   )  / 0 / l    1���� 1 r     2 3 2 m     4 4 � 5 5  A f t e r n o o n   E a r l y 3 o      ����  0 afternoonearly afternoonEarly��  ��   0  6 7 6 l    8���� 8 r     9 : 9 m     ; ; � < <  A f t e r n o o n   L a t e : o      ���� 0 afternoonlate afternoonLate��  ��   7  = > = l    ?���� ? r     @ A @ m     B B � C C  E v e n i n g   E a r l y A o      ���� 0 eveningearly eveningEarly��  ��   >  D E D l    F���� F r     G H G m     I I � J J  E v e n i n g   L a t e H o      ���� 0 eveninglate eveningLate��  ��   E  K L K l     ��������  ��  ��   L  M N M l     �� O P��   O $  for multiple monitor support.    P � Q Q <   f o r   m u l t i p l e   m o n i t o r   s u p p o r t . N  R S R l     �� T U��   T i c set to true to display the same image on all desktops, false to show unique images on each desktop    U � V V �   s e t   t o   t r u e   t o   d i s p l a y   t h e   s a m e   i m a g e   o n   a l l   d e s k t o p s ,   f a l s e   t o   s h o w   u n i q u e   i m a g e s   o n   e a c h   d e s k t o p S  W X W l    Y���� Y r     Z [ Z m    ��
�� boovfals [ o      ���� <0 usesamepictureacrossdisplays useSamePictureAcrossDisplays��  ��   X  \ ] \ l     ��������  ��  ��   ]  ^ _ ^ l     �� ` a��   `   END USER CONFIGURATION    a � b b .   E N D   U S E R   C O N F I G U R A T I O N _  c d c l     ��������  ��  ��   d  e f e l     ��������  ��  ��   f  g h g l     ��������  ��  ��   h  i j i l     �� k l��   k   get current hour    l � m m "   g e t   c u r r e n t   h o u r j  n o n l    - p���� p r     - q r q n     ) s t s 1   % )��
�� 
hour t l    % u���� u I    %������
�� .misccurdldt    ��� null��  ��  ��  ��   r o      ���� 0 h  ��  ��   o  v w v l     ��������  ��  ��   w  x y x l     �� z {��   z   set default periodOfDay    { � | | 0   s e t   d e f a u l t   p e r i o d O f D a y y  } ~ } l  . 3 ����  r   . 3 � � � o   . /���� 0 morningearly morningEarly � o      ���� 0 periodofday periodOfDay��  ��   ~  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 9 3 change value of periodOfDay based on current time     � � � � f   c h a n g e   v a l u e   o f   p e r i o d O f D a y   b a s e d   o n   c u r r e n t   t i m e   �  � � � l  4 � ����� � Z   4 � � � ��� � l  4 I ����� � F   4 I � � � @   4 ; � � � o   4 7���� 0 h   � m   7 :����  � A   > E � � � o   > A���� 0 h   � m   A D���� 
��  ��   � l  L Q � � � � r   L Q � � � o   L M���� 0 morningnormal morningNormal � o      ���� 0 periodofday periodOfDay � - ' time has been changed to to � operator    � � � � N   t i m e   h a s   b e e n   c h a n g e d   t o   t o  "e   o p e r a t o r �  � � � l  T i ����� � F   T i � � � @   T [ � � � o   T W���� 0 h   � m   W Z���� 
 � A   ^ e � � � o   ^ a���� 0 h   � m   a d���� ��  ��   �  � � � r   l q � � � o   l m���� 0 morninglate morningLate � o      ���� 0 periodofday periodOfDay �  � � � l  t � ����� � F   t � � � � @   t { � � � o   t w���� 0 h   � m   w z����  � A   ~ � � � � o   ~ ����� 0 h   � m   � ����� ��  ��   �  � � � r   � � � � � o   � �����  0 afternoonearly afternoonEarly � o      ���� 0 periodofday periodOfDay �  � � � l  � � ����� � F   � � � � � @   � � � � � o   � ����� 0 h   � m   � �����  � A   � � � � � o   � ����� 0 h   � m   � ����� ��  ��   �  � � � r   � � � � � o   � ����� 0 afternoonlate afternoonLate � o      ���� 0 periodofday periodOfDay �  � � � l  � � ����� � F   � � � � � @   � � � � � o   � ����� 0 h   � m   � �����  � A   � � � � � o   � ����� 0 h   � m   � ����� ��  ��   �  � � � r   � � � � � o   � ����� 0 eveningearly eveningEarly � o      ���� 0 periodofday periodOfDay �  � � � l  � � ����� � @   � � � � � o   � ����� 0 h   � m   � ����� ��  ��   �  ��� � r   � � � � � o   � ����� 0 eveninglate eveningLate � o      ���� 0 periodofday periodOfDay��  ��  ��  ��   �  � � � l     ��~�}�  �~  �}   �  � � � l     �| � ��|   � ; 5 helper function ("handler") for getting random image    � � � � j   h e l p e r   f u n c t i o n   ( " h a n d l e r " )   f o r   g e t t i n g   r a n d o m   i m a g e �  � � � i      � � � I      �{ ��z�{ 0 getimage getImage �  ��y � o      �x�x 0 
foldername 
folderName�y  �z   � k      � �  � � � l     �w�v�u�w  �v  �u   �  � � � O      � � � L     � � c     � � � n     � � � 3    �t
�t 
file � n     � � � 4    �s �
�s 
cfol � l    ��r�q � b     � � � m    	 � � � � � @ P i c t u r e s : W a l l p a p e r s : T i m e   o f   D a y : � o   	 
�p�p 0 
foldername 
folderName�r  �q   � 1    �o
�o 
home � m    �n
�n 
ctxt � m      � ��                                                                                  MACS  alis    t  Macintosh HD               ��~�H+   �?
Finder.app                                                      ���p�Z        ����  	                CoreServices    ��p�      �p�J     �? � �  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   �  ��m � l   �l�k�j�l  �k  �j  �m   �  � � � l     �i�h�g�i  �h  �g   �  � � � l     �f�e�d�f  �e  �d   �  �  � l  ���c�b O   �� k   ��  l  � ��a�`�_�a  �`  �_    l  � ��^	
�^  	 3 - wrapped in a try block for error suppression   
 � Z   w r a p p e d   i n   a   t r y   b l o c k   f o r   e r r o r   s u p p r e s s i o n  Q   ��] k   �v  l  � ��\�[�Z�\  �[  �Z    l  � ��Y�Y   6 0 determine which picture to use for main display    � `   d e t e r m i n e   w h i c h   p i c t u r e   t o   u s e   f o r   m a i n   d i s p l a y  r   � � n  � � I   � ��X�W�X 0 getimage getImage �V o   � ��U�U 0 periodofday periodOfDay�V  �W    f   � � o      �T�T (0 maindisplaypicture mainDisplayPicture  !  l  � ��S�R�Q�S  �R  �Q  ! "#" l  � ��P$%�P  $ = 7 set the picture for additional monitors, if applicable   % �&& n   s e t   t h e   p i c t u r e   f o r   a d d i t i o n a l   m o n i t o r s ,   i f   a p p l i c a b l e# '(' O   �j)*) k  i++ ,-, l �O�N�M�O  �N  �M  - ./. l �L01�L  0 &   get a reference to all desktops   1 �22 @   g e t   a   r e f e r e n c e   t o   a l l   d e s k t o p s/ 343 r  565 N  
77 2  	�K
�K 
dskp6 o      �J�J 0 thedesktops theDesktops4 898 l �I�H�G�I  �H  �G  9 :;: l �F<=�F  < !  handle additional desktops   = �>> 6   h a n d l e   a d d i t i o n a l   d e s k t o p s; ?@? Z  gAB�E�DA l C�C�BC ?  DED l F�A�@F I �?G�>
�? .corecnte****       ****G o  �=�= 0 thedesktops theDesktops�>  �A  �@  E m  �<�< �C  �B  B k  cHH IJI l �;�:�9�;  �:  �9  J KLK l �8MN�8  M D > loop through all desktops (beginning with the second desktop)   N �OO |   l o o p   t h r o u g h   a l l   d e s k t o p s   ( b e g i n n i n g   w i t h   t h e   s e c o n d   d e s k t o p )L PQP Y  aR�7ST�6R k  +\UU VWV l ++�5�4�3�5  �4  �3  W XYX l ++�2Z[�2  Z #  determine which image to use   [ �\\ :   d e t e r m i n e   w h i c h   i m a g e   t o   u s eY ]^] Z  +I_`�1a_ l +.b�0�/b = +.cdc o  +,�.�. <0 usesamepictureacrossdisplays useSamePictureAcrossDisplaysd m  ,-�-
�- boovfals�0  �/  ` r  1=efe n 19ghg I  29�,i�+�, 0 getimage getImagei j�*j o  25�)�) 0 periodofday periodOfDay�*  �+  h  f  12f o      �(�( 20 secondarydisplaypicture secondaryDisplayPicture�1  a r  @Iklk n @Emnm o  AE�'�' (0 maindisplaypicture mainDisplayPicturen  f  @Al o      �&�& 20 secondarydisplaypicture secondaryDisplayPicture^ opo l JJ�%�$�#�%  �$  �#  p qrq l JJ�"st�"  s   apply image to desktop   t �uu .   a p p l y   i m a g e   t o   d e s k t o pr vwv r  JZxyx o  JM�!�! 20 secondarydisplaypicture secondaryDisplayPicturey n      z{z 1  UY� 
�  
picP{ n  MU|}| 4  PU�~
� 
cobj~ o  ST�� 0 x  } l MP�� o  MP�� 0 thedesktops theDesktops�  �  w ��� l [[����  �  �  �  �7 0 x  S m  �� T l &���� I &���
� .corecnte****       ****� o  "�� 0 thedesktops theDesktops�  �  �  �6  Q ��� l bb����  �  �  �  �E  �D  @ ��� l hh��
�	�  �
  �	  �  * m   ����                                                                                  sevs  alis    �  Macintosh HD               ��~�H+   �?System Events.app                                               ]����;        ����  	                CoreServices    ��p�      ���     �? � �  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ( ��� l kk����  �  �  � ��� l kk����  � ( " set the primary monitor's picture   � ��� D   s e t   t h e   p r i m a r y   m o n i t o r ' s   p i c t u r e� ��� l kk����  � R L due to a Finder quirk, this has to be done AFTER setting the other displays   � ��� �   d u e   t o   a   F i n d e r   q u i r k ,   t h i s   h a s   t o   b e   d o n e   A F T E R   s e t t i n g   t h e   o t h e r   d i s p l a y s� ��� r  kt��� o  kn�� (0 maindisplaypicture mainDisplayPicture� 1  ns�
� 
dpic� ��� l uu� �����   ��  ��  �   R      ������
�� .ascrerr ****      � ****��  ��  �]   ���� l ����������  ��  ��  ��   m   � ����                                                                                  MACS  alis    t  Macintosh HD               ��~�H+   �?
Finder.app                                                      ���p�Z        ����  	                CoreServices    ��p�      �p�J     �? � �  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  �c  �b    ���� l     ��������  ��  ��  ��       �����  & - 4 ; B I���� ;��������  � ���������������������������������� 0 getimage getImage
�� .aevtoappnull  �   � ****�� 0 morningearly morningEarly�� 0 morningnormal morningNormal�� 0 morninglate morningLate��  0 afternoonearly afternoonEarly�� 0 afternoonlate afternoonLate�� 0 eveningearly eveningEarly�� 0 eveninglate eveningLate�� <0 usesamepictureacrossdisplays useSamePictureAcrossDisplays�� 0 h  �� 0 periodofday periodOfDay�� (0 maindisplaypicture mainDisplayPicture�� 0 thedesktops theDesktops��  ��  � �� ����������� 0 getimage getImage�� ����� �  ���� 0 
foldername 
folderName��  � ���� 0 
foldername 
folderName�  ����� �����
�� 
home
�� 
cfol
�� 
file
�� 
ctxt�� � *�,��%/�.�&UOP� �����������
�� .aevtoappnull  �   � ****� k    ���  ��  !��  (��  /��  6��  =��  D��  W��  n��  }��  ���  �����  ��  ��  � ���� 0 x  � ' �� &�� -�� 4�� ;�� B�� I���������������������������������������������������� 0 morningearly morningEarly�� 0 morningnormal morningNormal�� 0 morninglate morningLate��  0 afternoonearly afternoonEarly�� 0 afternoonlate afternoonLate�� 0 eveningearly eveningEarly�� 0 eveninglate eveningLate�� <0 usesamepictureacrossdisplays useSamePictureAcrossDisplays
�� .misccurdldt    ��� null
�� 
hour�� 0 h  �� 0 periodofday periodOfDay�� �� 

�� 
bool�� �� �� �� �� 0 getimage getImage�� (0 maindisplaypicture mainDisplayPicture
�� 
dskp�� 0 thedesktops theDesktops
�� .corecnte****       ****�� 20 secondarydisplaypicture secondaryDisplayPicture
�� 
cobj
�� 
picP
�� 
dpic��  ��  ����E�O�E�O�E�O�E�O�E�O�E�O�E�OfE�O*j a ,E` O�E` O_ a 	 _ a a & 
�E` Y �_ a 	 _ a a & 
�E` Y u_ a 	 _ a a & 
�E` Y U_ a 	 _ a a & 
�E` Y 5_ a 	 _ a a & 
�E` Y _ a  
�E` Y hOa  � �)_ k+ E` Oa  g*a -E` O_ j  k M El_ j  kh  �f  )_ k+ E` !Y )a ,E` !O_ !_ a "�/a #,FOP[OY��OPY hOPUO_ *a $,FOPW X % &hOPU
�� boovfals�� � ��� � M a c i n t o s h   H D : U s e r s : A l e s : P i c t u r e s : W a l l p a p e r s : T i m e   o f   D a y : A f t e r n o o n   L a t e : a r t _ f r o m _ p i x i v _ 0 3 4 . j p g� �� ���
�� 
dskp��  ��   ascr  ��ޭ
FasdUAS 1.101.10   ��   ��    k             l      �� ��    �
This folder action script works in conjunction with the "Clear Stack" script

Whenever a file is added to the directory, it will run through the files and
make the hidden Clear Stack script visible (by removing the leading "." on the file name that the

      ��  i      	 
 	 I     ��  
�� .facofget****      � ****  o      ���� 0 
thisfolder 
thisFolder  �� ��
�� 
flst  o      ���� 0 
addeditems 
addedItems��   
 k     �       l     ������  ��        l     �� ��    B < the script that this folder action works in conjuction with         l     �� ��    E ? will fire the action when it runs, so set up variables so that         l     �� ��    !  se can ignore it correctly         r     
    I    �� ��
�� .sysonfo4asfe        file  n          4    �� !
�� 
cobj ! m    ����    o     ���� 0 
addeditems 
addedItems��    o      ���� 0 	addedinfo 	addedInfo   " # " r     $ % $ c     & ' & l    (�� ( n     ) * ) 1    ��
�� 
pnam * o    ���� 0 	addedinfo 	addedInfo��   ' m    ��
�� 
TEXT % o      ���� 0 firstitemname firstItemName #  + , + l   ������  ��   ,  - . - l   �� /��   /   get the file system sorted    .  0 1 0 r     2 3 2 c     4 5 4 o    ���� 0 
thisfolder 
thisFolder 5 m    ��
�� 
ctxt 3 o      ���� 0 thispath thisPath 1  6 7 6 r      8 9 8 I   �� :��
�� .earslfdrutxt  @    file : o    ���� 0 
thisfolder 
thisFolder��   9 o      ���� 0 allfiles allFiles 7  ; < ; l  ! !������  ��   <  = > = X   ! � ?�� @ ? k   1 � A A  B C B l  1 1������  ��   C  D E D r   1 6 F G F c   1 4 H I H o   1 2���� 0 afile aFile I m   2 3��
�� 
TEXT G o      ���� 0 filename fileName E  J K J r   7 F L M L c   7 D N O N n   7 B P Q P 7 8 B�� R S
�� 
cha  R m   < >������ S m   ? A������ Q o   7 8���� 0 afile aFile O m   B C��
�� 
TEXT M o      ���� 0 fileextension fileExtension K  T U T l  G G������  ��   U  V W V l  G G�� X��   X { uonly match if it is the hidden app, and the action isn't triggered by the app hiding itself the app changed it's name    W  Y Z Y Z   G � [ \���� [ F   G ] ] ^ ] F   G U _ ` _ =  G M a b a n   G K c d c 4   H K�� e
�� 
cha  e m   I J����  d o   G H���� 0 filename fileName b m   K L f f  .    ` =  P S g h g o   P Q���� 0 fileextension fileExtension h m   Q R i i 	 app    ^ >  X [ j k j o   X Y���� 0 filename fileName k o   Y Z���� 0 firstitemname firstItemName \ k   ` � l l  m n m l  ` `������  ��   n  o p o r   ` i q r q l  ` g s�� s n   ` g t u t 1   e g��
�� 
strq u l  ` e v�� v n   ` e w x w 1   c e��
�� 
psxp x l  ` c y�� y b   ` c z { z o   ` a���� 0 thispath thisPath { o   a b���� 0 filename fileName��  ��  ��   r o      ���� 0 apppath appPath p  | } | l  j j�� ~��   ~ / )get the file name without the leading "."    }   �  r   j w � � � n   j u � � � 7 k u�� � �
�� 
cha  � m   o q����  � m   r t������ � o   j k���� 0 filename fileName � o      ���� 0 showingfile showingFile �  � � � r   x � � � � l  x  ��� � n   x  � � � 1   } ��
�� 
strq � l  x } ��� � n   x } � � � 1   { }��
�� 
psxp � l  x { ��� � b   x { � � � o   x y���� 0 thispath thisPath � o   y z���� 0 showingfile showingFile��  ��  ��   � o      ���� 0 newpath newPath �  � � � l  � �������  ��   �  � � � l  � ��� ���   � F @ rename the file and make it old so it's at the end of the stack    �  � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � b   � � � � � b   � � � � � m   � � � � 	 mv     � o   � ����� 0 apppath appPath � m   � � � �       � o   � ����� 0 newpath newPath��   �  � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � m   � � � �   touch -mt 195101010101.01     � o   � ����� 0 newpath newPath��   �  � � � l  � �������  ��   �  � � � l  � ��� ���   �   refresh the finder    �  � � � O   � � � � � I  � ��� � �
�� .fndrfupdnull���     obj  � n  � � � � � 2   � ���
�� 
cobj � 4   � ��� �
�� 
cfol � o   � ����� 0 
thisfolder 
thisFolder � �� ���
�� 
nec? � m   � ���
�� boovtrue��   � m   � � � ��null        ��  �
Finder.appU  0�I���X���  L�{`��x����<���,pz���� ���l�MACS   alis    r  Macintosh HD               ���H+    �
Finder.app                                                       Bh���        ����  	                CoreServices    �JS      ��r0      �  �  �  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   �  ��� � l  � �������  ��  ��  ��  ��   Z  ��� � l  � �������  ��  ��  �� 0 afile aFile @ o   $ %���� 0 allfiles allFiles >  ��� � l  � �������  ��  ��  ��       �� � ���   � ��
�� .facofget****      � **** � �� 
���� � ���
�� .facofget****      � ****�� 0 
thisfolder 
thisFolder�� ������
�� 
flst�� 0 
addeditems 
addedItems��   � ��������������~�}�|�{�z�� 0 
thisfolder 
thisFolder�� 0 
addeditems 
addedItems�� 0 	addedinfo 	addedInfo�� 0 firstitemname firstItemName�� 0 thispath thisPath�� 0 allfiles allFiles� 0 afile aFile�~ 0 filename fileName�} 0 fileextension fileExtension�| 0 apppath appPath�{ 0 showingfile showingFile�z 0 newpath newPath � �y�x�w�v�u�t�s�r�q�p f i�o�n�m � ��l � ��k�j�i
�y 
cobj
�x .sysonfo4asfe        file
�w 
pnam
�v 
TEXT
�u 
ctxt
�t .earslfdrutxt  @    file
�s 
kocl
�r .corecnte****       ****
�q 
cha �p��
�o 
bool
�n 
psxp
�m 
strq
�l .sysoexecTEXT���     TEXT
�k 
cfol
�j 
nec?
�i .fndrfupdnull���     obj �� ���k/j E�O��,�&E�O��&E�O�j E�O ��[��l kh ��&E�O�[�\[Z�\Zi2�&E�O��k/� 	 �� �&	 ���& X��%�,�,E�O�[�\[Zl\Zi2E�O��%�,�,E�O�%a %�%j Oa �%j Oa  *a �/�-a el UOPY hOP[OY�rOPascr  ��ޭ
-- MySQL dump 10.13  Distrib 5.5.16, for osx10.6 (i386)
--
-- Host: localhost    Database: realband
-- ------------------------------------------------------
-- Server version	5.5.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `HTML_BLOCK`
--

DROP TABLE IF EXISTS `HTML_BLOCK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HTML_BLOCK` (
  `STUDENT_ID` int(11) NOT NULL,
  `WEBSITE` varchar(254) NOT NULL,
  `CONTENT` text NOT NULL,
  `ROW` int(11) NOT NULL,
  `COL` int(11) NOT NULL,
  PRIMARY KEY (`STUDENT_ID`,`ROW`,`COL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HTML_BLOCK`
--

LOCK TABLES `HTML_BLOCK` WRITE;
/*!40000 ALTER TABLE `HTML_BLOCK` DISABLE KEYS */;
INSERT INTO `HTML_BLOCK` VALUES (1,'youtube','youtube.com/watch?v=0k3WYFP8YqQ',1,1),(1,'soundcloud','<iframe width=\"100%\" height=\"450\" scrolling=\"no\" frameborder=\"no\" src=\"https://w.soundcloud.com/player/?url=http%3A%2F%2Fapi.soundcloud.com%2Fplaylists%2F5832582\"></iframe>',1,2);
/*!40000 ALTER TABLE `HTML_BLOCK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IMAGE`
--

DROP TABLE IF EXISTS `IMAGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IMAGE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `STUDENT_ID` int(11) NOT NULL,
  `NAAM` varchar(254) NOT NULL,
  `FILE_NAME` varchar(254) NOT NULL,
  `IMAGE` mediumblob NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMAGE`
--

LOCK TABLES `IMAGE` WRITE;
/*!40000 ALTER TABLE `IMAGE` DISABLE KEYS */;
INSERT INTO `IMAGE` VALUES (1,1,'avatar','Unknown.jpeg','����\0JFIF\0\0\0\0\0\0��\0C\0		\n\n	\r\r\r \"\" $(4,$&1\'-=-157:::#+?D?8C49:7��\0C\n\n\n\r\r\Z\Z7%%77777777777777777777777777777777777777777777777777��\0\0�\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0Q\0\0	\r\0\0\0\0!1AQa\"2�Bq�#Rb�SUr�����$3CV������%&456DWcu������\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0?\0�Q �P�%B�D@DDD@DD�[WOCI5]d����#΃Z:�W:̿t���\\T�<4�յ��Zƹ���֠៍�vO\'���9�cq�\rcGߢz|�W�OŬ>[p�}|�;�����6��Ui��il�ZKm$Md��>#����vI^d�)-�ܤ�Q�����\'{�1�%޺�\n�p��lN��G:�Ύ7림�_p�ѭ���Jkm��SL�h��8.\Z�5���J\Z�\Zy)^�S�k^�K7ल[��>4�\\�h*ˡ�;:�{	��4����Ք� (R�/sX��ִl�t\0AA���-���;k}��@/���Ǳ�����\0��c�q��5�	l���7;H��O�K���\r�*�n��g������I)�|��赴\r53c��o��m��\0����4��~�>��lȲ�3,��fu�\\(..䂱��]��\0�-Әz-ig�k��/8�$֊g�UCU�Ȍmᜎ�x�yN�^�45*����Y��8�M_O�SJ��\r��6� � +Z\" \"\"\" \"\"=�+��a�NMu�rG�ट���9�5����}�Ϳ%�,O�v��&��b��}ި�-3���\'g~l$���d�m���z��P����Xm�v�0q�]$�P�Ln�$xs�o�~-wK����ۥ֊�����k	�����O��������\n�R�÷5��v�iq#��ʯ��qk�*Q���;�eP���-�a�ޛ\'c�/e��\"�]����53�\0�r�%�=�)\'���8�0�\\��x���em�JΎ�\'�W��Vl�n1�1�2Z�}YH��m/ݧ�������׽�y�f:?��7��q����]�J%����F����eh-\'[ �����LFC���/W�8�\0Wk�0�l9w��^��l��k ���x�M\rx���>�k�Ŧٓ�{�E\'��%�k��\r�2Ϥ��\0�\0��̂�ì��0�JJ�d��iq����{����h �5� 5�Vn$b������� 1�1�.r{\0\\\0\'�k5�p��c�WXIy�3��US���\"���r�%Պ��id��씘�B�r��1:Mtkۡ˿�w�GoH>�][�Ǝ�A5uʢ:jXF�C�޺� �J�po#��b��]ds��S$|�ۋ5��1ջ���u�g�M�/x���D������!i�s\0v�k��;N�~xl��\'�r�e3��&7B	n��ȏ�����7ԭ�V8gCSn�l�ձ�s:77���%�8y���Y�B�%W�\\R�/�}_^�#,x�)��4n���A���X;W����U�L���SJ���e|�h��9�˔�u�2�r�����Ҋ6Ct�a��{�bs\\}��v�(��ր$-o��[��o�Q��p�&({��{�p W5~�U�3�㒢 ۝c[%I=�\Z�cɾ>geg�mx�;_Srsu-[��լe����%[�S��C�?�u�?�ؽL�$��T_J�U��`ϐ�5���\0��er?%��P�;~��ay,����p�H\Z�p>\0�RB\r�;G��|<��ߙ��q�srCq��8\r8�_�v��E�P�_�y����Sgry���=Z}\nIU�|՗Q��LW5������w�7���UiD5SVd<8�]��F���ad!�\'��\\$g�?���]���d�7H˅1��%���|d���\Z=Wc��9m�H�>��k�G!��x���v�~G�y<�e�X_l�9�\0X������P���������A��\"\" \"\"\" (R��\"v��ʮ8�ۤ�v������@��.tC���u9$\\Y�$�)a��9����˨��n�掄3Ͽef8&{����i�����q ���F�<�/W�����r�@ه��#�%?�ݟ�P��6M�J�L�+\";i��h!����;�.?��5xN��W�W�i.�cju!���>�އ��R��\'��<����:y�*Z�蠙���KI<�J�Ce���6�Ix�;���&&�މ=\\����ZdQGm�&5��\0ִh\0<\0_�A�UKe<��p�<���H��u�^�U%a���)mU��)�ϳw�wR��j(�&��u��e,�@�y[YN�u���+�d��V�b�,�>��q����ƻOg�z��U<׉ծ�k%}�B�v�6D�F͏��	�����e�J����6ct$�����v�M5����Ÿ����R�c%��7 $���{���\"��\\{����^��=���?oG�b�d7��9Ť��q[�b����J�n͟�ݻw�A�*\" \"\"\" \"\"�*J\" ǩ���0�wh���cH�\0J�[\n˸�c�}\rMnث���Ѳ���+������-�\r5�o,��e(���=�Ə�\nW��=����E+��17���ϡ��t�OeA������\\i�Ш��&������{K�ym}� �D@DD/q\n�_e�n-��_gWW$��rك�\\\0>.ֻ�[/,��l@��o�Z��T2�Z��\'��_��jP=�㕒��~+kX�5�\\�e;�\0U��7&�R�J��i���`=dwf�z����	�*�\'�fa����d.> �r8~�p\r��(5�D@DDD@DP�T)P���x���3\Z���ױ�a��bUQ\\�A�\Z�8���k�\Zc��|�������Cר�V�IE]C5-�(������P9H�A�e��_-�W��YQO(������U�_>�co�W�M\rD.p��R�����G��]q�2Y���o���S�ɣ$��6��\Z�(4Z��;m+��PRӴ��g�1�gCd��LW����\0�E���d����$qMIp��ak������c�G���RK�K\r]#�-��NIcAǣ�� ���jߖ���Kg�\0>��KҶ]m�h�5����&;�Ϧ��5��A��a�\r�k*\Z��[�G�#�K1�\0{�����٨�츝�:X�OACN���\Z=\\�Ԟ����ntVz	k�U1�R�6�$v����B�8�b��fd�Z���r�W��\0��j��y���gy���ێ�(��۳tY�\\�]�H,S�������i1���=	��\0�p��i�s�k�����\ZZH��28�4\Z�4\0^f*�mS�Ѿ���I sZ|vG��w�{(\n�Čƺ�UCj�����%L�Uc��cI.v����}�v�����j����${��Z�?%�Dڼ�!�H��9��<imq;��R�4z�~�\r��U�X���p��%�n�H��P�~���<SA1��&�1�\Z\rh\Zr \"\"\" (R�uj��\'VWRӸ����*����F;��V�;���B�o��:���������a��_*�&��D*������ �8�	$�A��r�����^(���?�i.�\0������QfS�Oems騙#�.i�_|��\r���wW�^�Tr:i�]4c�d��԰4�\0:��s�TZ����c��墷F�4C��������V��lJ��-=L��D�k�d��`����+1���~��QG�}�����R=Ķ999�c��$�s}~�ג�,���`�Z!�X�.ѶF�w��o\\�${�����[a���L[⟒�O٪�1��-߇O$�\'�Rܮ�j˥U�&�Bֱ����i�޺�GcN��紎�u)oo�K7��\\���;�����X�\r7C������k[�4�\\���`P�;����L�|2#X<\\tOA�C�q�;�ꎫs����n�*���R��nE[s�8n\ZX9X�~�<���n��ꬰ�\\E�)����Ym�\r��ID����F����/6L*��^Y�:�,�r�?;\\*!���^}H��mUe��%^�]��Y,]\\i�s�h7]�G�/S��UI�Tp�d�c�,���@G���n���~]U��jd�U��k�s�G�6?�\'����K��T4u8�������\ZO,�̿�ho��^�-6ɿ!*Uw��:��9*�5����A��w�����n�L��~��֛�=C@������=G�*�#~�2�ZV��ⁱ�mc8k@	���ݯ!��&#�����m4,t���k�Ɓ�G8$\rxm?.�x��jz����;O�\n8�瞞|��<W7m��YEM8�[��I������V39����Jy�}���st��ѿ�6�����L�}��h�j�����\r�N�����Y�M- ��B�<L��\'�*�2I�(�Mo�F�Zu�6:�me6|� ��lǲk3����S=�����+�=�ñ[e]L4t�UUHؠ��I$y�k@�\'�*;8�_{�/\r������]�:?�@�\\����}�3> �%7-%%T��ܲNC;�sCu�����z3�,j��%4-����u^��<Z������#����c��f^,��2��ntc�N�H։��>+@A�q>&_8��؃\ZDa���\\�g4��G�\0�ؖCi���A\\e~�(i�#�^X�g����k�\n��O����P���o�7�?�\n\n��Wm���;����_m\0�=����]x��~�륧,ǅ����j�\r��٢�|r۹7�����Ӿ��V����Z,���C�ݠ����Fބ~%l+!��4|G�+�y\\��G�l���H��A�e|#�ݥ5�ih����\"�>M�S��:��Y�_u�l�:�S\'{䧩-Wss��	5�����+�ׯ���Ҿ���*�y��k�EE�[�����*id�/�\Z\Zj`K()��V������C}JԸG`��)ᫌ�SR�T���m������k�m��\'l�mu%�!;�#�#c#�k\\H�\nӤ������\n�7\"��c�Z��i>ƚ2�Pz��kG�:�AA��Ҫ�[A��~�qs_V��\0��{��и�&��M������x�3-8�/��-=f���~��\'�ѧ�.	���n�W�Ô���h��L5���lr�zr5z�r��)���)�0�6?9)�~à� �K}���ċc��{(��э���^O\Z{�\"�k}m=Ɔ���A%=Dm�7���6W}����\\������~��c�!s��p<�o�V��ό���+��1H魲����� y�m�8�A��g��3*���$�C3��F��k��*\'��2ymr�����͢��v����	/wBO?�?Z��d�\0����A�*�\0�\\�_���\0�*���G��O��M���ٟ���U����^<����Z�nH�� ��r���I�Psp��$}�����f8�\'�jW7r:^y:�wϗ�7`F�V����������Ϯ�p4���Ndq=Zb�--#{���z?Z��d�\0����A�,����w,N�weS���G����k�����\0#SiR��SSV,��5��-�oѣ���;no1�����\r�i�+K��u���V�-D~ݬ�h4;dt��y�h--Br����X���c5�7��#:7r�����7����i�E��N,w7d��,\r��!�w�#؏�(���K��-�:�]�\n�sA=4���:v�v6;z�5�����eك*D�`d\r=��sk�el&�p��o�+��(}����b؛#�8���<lN��a���L�����\0�\0h�^U� A����7=�ڎW9����v+̩/ؓㆣ:���q�頭�:&�gm��\Z��ЯK��P���������G���� ͢>]Pn��/�}j�F�h}�/�?���/�`��Ci�ۭ,M�b��Fѳ��0��{��^�A������U���w�^��O�>�P}@�5o�a����N��,!D|1̜ݿ=�Öj��\0�=��v߭�+�Q%��S�f�V��{�\r�:��\Z�\" \"\"\" \"\"\" \"\"(R���7�cp�T��X�^��sA�`ۣk�\07}9��_�\'�i0�&)�;-���(㨬�1�{�HØ�Ap#`�נv���-\rmu����<�2��F�Ԑ���w_�z�A��`���n��FP�Z�@�ZyOPt�Y������2�]��˽���Yd��=TN�^C\0w)\Z:>סA��Ef/pu]4�m���&���:��Z��c�)c�ER�SHƱ�Ѝi�Џ�K7��|Q�h椳���7�x��<�r��>�t�B����\'�%��d\\^�{��KO���{{UC�(�:��N�ZO^]�Oñ���e�ˋ癦Aj�0�������F�f���q.<�l����A)P�QB�%)P���'),(2,2,'avatar','images.jpeg','����\0JFIF\0\0\0\0\0\0��\0�\0	&/\"; $*)-88 750*5(,,)	\n\n\r\r)))))))))))))))))))))))))))))))))))))))))))))))))))��\0\0�\0d\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\07\0\0\0\0\0\0!1\"AQ2aBq��R#3br����5����\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0?\0�iJP)JP+���ʉ��;���N+���:�=���A�=J/a�e+�FJvd�\'7Gb>�ՄV]ͣ^;\rkss���ySH�ԟ�|�Ĝdd= ��T�(�(�(�(>Q���W܅TA��؅TE�b}�?��x��2�F�|�4ɹ����\0���Q��5Q�{G:��ƣq�픈q�r�G����h6������D�߲I�Hہ%RB\0��(q��3��|s-AF�f�\Zd�`�����8����9�Gj�iֲ�%�BO��?�k�x��\0��%wM�~@#?횂��]�t�5I�:��F\n�O�^F�,�ht�(�(�(�(3��2MJ3r��3��C\"�r�\'��~�j��+{�3ۼL��b�<��*��&�\0Y�E�&�\'@Ad>��\r~���<�-�v��pA������^Aܙ�.R� �ʱ��FtgR�X�2}���~8���:���W��8�����0A��5�A\nj�C[�na$�n��\"�3�pČ?\0U{��v[e��ڏ)�μ\"�_KpA���g��mbP��J܃o!*;�\ns������0D�i�G*�o y{v*��.9�\r�Ɨ�*.lZwg>=��弽����?�������c2E�ȅ�7оϩFTrrCo�?�6ZR�\nR�\nR�\nR�\rU�=�V��s\"�\01#��I�����\0Sw<c��i������L���y���Y0������f}6\'m�~1�\00��y╮�oV�����cf2�F�PBg��|��ߪa,�D�@Ǥ��\0�ӓ�\0$��+\"����G�sЏs5��b������8�e�6|��䑞eWBm]K�G��.��xG݅l��ȭŵG�����\'��(deᣁ���\0����\\\\Gi�7?�uR�I�e�%ry(�lg�W$4�k��C�++�A�k���)<�v6�P>֒2dLIdC�B;�%�!�G�)�Y�}W��\nK�x+���dA#JR�JR�JR�U���X��r���T�&�2��?|w�Vz��[�͔��G�G������޴V�<�m(��n�p�o��~�D�f2��-�$����l�\\�Rɹw��\08�-�h�JmBGP�$�`���W�\n����;�{��nc¹@`�0B����?K���Y����.8�B�~I9osTO�(綶�IV�b�#+�U����\0�{�e���&�i���dR�B���`x��H�Au^�o���c$��6.��AW\ny�;���\Zϙa-�A6�?�/#����z�_\\,z���I!o�2g���cU��-\ZIN�p@�,��l��0�X �vt�R��2�v�it�\n���2�i%BI����Az�)@�)@�)@�_������~w+�l0\r��VU�EZ���~}�q�W�j9��v�Z�G�Ԅ�mFp\Z����N�����g�3�xЖ�\Z|�C3��S�P�U�}؟�Pc���k餌�����ă^����{W-/��u;�&ܴ��dHX򪱐1�\0��o\rt�q=܈��GeC�8��|g�a�s����c��/�h�/m�����u�y����FE�P��##2D���8\',<1⫞ki�Yz�Tw2y��ndڣ��ـ°;�������q^���rJ0t*ȅw)H��*�\ZKV���Q�H�V$���0��<V��	��:���*AApF+��:\\�n\"9�b��1���?CR�\nR�\nR�\n��\0�]mL�ڱ|,fb\0��rȅ�{����,��^T�{^{�Z�8��@�&I��p;�rI\n��v%�v�ޕ>�UA��`a��σQ��m���Wl��$�q�sǿj��ţ�@u+�C������涏����\\��!?���y3#��\0.w�\'�<P]mt���\Z2y�e`be�$����>�)l�3L�2\'� *%l�d}GhS�q]=#��,\\Fŏ���;�ܣ=�o� ��]�������}��L�w�A �=�H躔w6��nI2��~ǑYw������������V��ci��r>h�e�i�tq���Ъ�cؠ��}��4����*L\0?$Ƅ�\0�M�OL�:[�bY���KHr�+�?�R�\nR�\nR�W3�ѝ�T�?\0I��ŷә�]�̲��lO�ױz��I��#��I ��vF\ns��9�2O��g��W����;F��Hs����%�פ\Z}a≓e�Q#8Ȇ\0�`w�`~uo�L��F�����4��2�6@�s�P+�����u\r���C5��V>�ǚ���3�>�����q�>�#/v�bQ��_G�=��� �9lXI�8-\"+��r98V�#��N�N\0!��.L�}k���J��? �U�L����R�b@�X�P\0��?z�8�������u�8���K�+�*�O�FyW8Q��O�h�Z=��Ț�EP�hm�b࿴�9q�{�T��Qx$\n2�\'��@\'�5#A�W�R�JR�JR�\\JҔR��]������������'),(3,3,'avatar','images-1.jpeg','����\0JFIF\0\0\0\0\0\0��\0�\0	( \Z%\"1!%*+2..\"383,7(-.+\n\n\n\r\r7+,++,+++,,++++7,+++++++++++++,++++++++++++++++++++��\0\0�\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0��\0N\0\n\0\0\0\0!1A\"QaqB��#2RU����3Tbr��S����ct�����%5C������\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0?\0��\"\" \"\"\" \"\"\" \"\"\" \"\"\" \"\"\" \"\"\" \"\"\" \"\".)�������*[�o.��抑�t1�@�U#��K�Cc܂��]�M��N����K��}X��îSn�b@DDD@DDD@DDD@DDD@DXݢ�b����o�oa����6���@h:�S��d<Z���5{��Z޾\'��BУ�1�s�NH~k�~+��\r�:�(�q_��ٹ1i���~czXN����]cͿDu�ǘ�PJ}�Q�笞��C̹�}�Wid~(�k[�\'�{�\0�e��59�VO5U$��!Q,�NC��ב��]��ݢ�V�0�sC%M;�\'5��}�O⺯����RUJ!�)����9�>OEwv[i1j�]��M�E�Xⴖ.-��=�oa�Q�i;�Zz��&k�����M.�.C	\0��H�<��-��x1H�U,�a�j\Z�5-��s�M��s%\rwf��G_��m���s�~DDD@DDD@DDD@DD-�i8�%E���<z�;6�߰�=�j�)��I�<Jc����-i����ȣ\rhk@h\0\0 ��DA��V�P�a��(�ϾF���6�f�a~�E�������H��[9��VEÚA�=ʍ�T���qbl��p�\r<�f�1��J���c�ok�pl�p�1�L��VSCFa�#3H�3e\0󰿻�\\6͗��/?�Fc/˜�=����&�S˽g��{t��������緭���t�r���a«���&���������J��^Ù�hsOxp�>�V��\Z�>N~�t^ȞZ?�\Z�$D@DDD@DDD@E��]���`3T�+of����h���S`.��[�������I�27�?nAc�h.���PQ�TT������\0p߂�l��A���?�5W��Fb�r�$�h��ł�[�\0��� �	j6 ���Ev��g�؇�o������֭��ޞ���ƂFی��W�O;�櫸��׋�O��,�Y�n�����p3��C�7�O�}]�}��j��&?������たWbq���.�\'��ҳ=D����\Z<���\0�}��ϫ����u�w�\0ak�kc�8���[���;S�hX0����Ő9���g?۔x�!�q���L�2�g�W:4}�h��QwS�\n,6�Ѫ��\"G<<0��pn������8>7KZ���G;z�p$x8si�6^J]�\n�i�A#�rs\r����: ��)�뷆�H�z�P�gn����M�W��F�@� \"\"\" \"\"\" �o��FAP$`� �9�u�_!m��lӧ@/��*�=�mC�\n�5�� s��t.ϗ̑`{��+LE0z�G���3�~����\'\0ts���\0p9e[�L`q�|��\0�,�A����GU������\04�k�>Gg�Α�I�.w�ڮ4@DDDADܝMu�\0.^ڇ4��Ď�k��\\<��&�Q���\n��6� �4 �pA�����6��T\r|��FxSx���\0����r\" \"\"\" .�9T`��Q�8dx�c��]��]+�%�5�s��\ZI���<��`:辯ܲ���4FK�[ɡ��G������\"碤�yYM�$�k;��a�;�A��%��#�_H�_(i�`;fF�湷�ָh��ߙA�D��l��\0��\\|5T0|\n��_Q%s�v��\"i����V�����ƚ**�G;YCKA��v���wtDI�7����UɆ��1��4��Zy�) _����Ʒ-K,���>��ܰ�����p xUD����%!.�a�!\0˥�G�G��#S�*>��K�4�[�\'\r��~�\rG��z�|�!��KO#����F�9� �\0�Q�!����#�G^+��fr@.��^Jɷ[E���p���|d��]رչ۫�=\\.���ٺ\Z*\\��>)Fw=�I�n��De�9Y���n����U��<�Έ}3E�.�6贴j����6*�9���sZ���еEW�w�����&	]��ph�f#؂����\" \"\"���o��r��J�[��\\�ˎx����k�k�x\"�{�x�Ɏl=u-Y�d�ڴ/c���{.�V�Z�\"��5X*�WC+�}�F�1�7���c�PQ[��p�ˉ��^/{yű�����%	���\0�Py�H������#���$��3G8-��?=��\\N\'|�z�_w-G,8S8��<�I<�8�w��-�����t��+��\\�5�y4]�}DD��#s���9^X�������v�\'�й̔�Õ�v�������(�\n�d����е�{�֐y�4�s��H%|0�A�^�4�[��]w�N��H��a�k�9�n���\0������)��5H��������W�P��?S8R��~k�k[�=O���Q�\r��vAs��`;�W���jJ�6���a�����X���:��ĸ��(��������嗗w�����c��J�[��Ix#�G�+�kX�M��Ńx�㑚6H�e:����<ƈ �;��2�؝%���-s�09Ϸ���5ø��{��b���$hhɹc�;�z;�����\n\nfS�co�R��r����;[��9�;&7�K�m�>|0tsOXϳ[�Sm���4�C\\=\npr���\"��X�쿕��G�F����pGx=P~�h������	���╂Ή�����������B���I�S��j��^9�I%c��(=R�ϛ��؛�j�� �ng� �\0V	����w���0�6�������6��I=�;�6X���j<=��fl}���;�X;Gܥ���b{H�OA��/idq��t�\Z�e�����96�i&��[�a���^i�~C}]�&�\\�ΰ3JYE3���3��v�g͗\'��/M�f�SaP�f{�e��fyɣ�z~+&�\Z����Br,eo�V�k�����*Xa����9���jőܬ�\"\" \"\"\" \"\"\" .�}lT�Y�أ`���\0Įw8s�Q9�ڪ�F�:,>\\=a{ۑ��6��n��!��F�S�Ɩ��R��4�2�\0��i$�S}\0+�b�c�6Ua�&�δNyh!�#0k����<���o�T�O�{��f���70ng�IM���u h�a�Z	�#��F��F�e��nV��a�n}|PhM�\r��T��p:�7|o�?�v��?�0�	�a�������o�(<Mk���35��l�R\0��M���}��Ĥ�\Z��9�5�(�vR��}Ax� ŷz8��A��B[P�<�G�$mn!��@���N����e��{�V:����&vp���e9�s-�OA��Qr�n�װ�^��}����g�0�A��j�#�f8M���������tﲰn�o�k\Z�qhfh��t6�\" �ǲ@:5�o�X�|r�ڸd6h7xa퇐9Y�e�nf��#��Y�4S�־9Ïw�n9@��{I\"��.��۩�+X�Z���4qv�{\Zr�8}6���0z�A@DDD@DDD@DDDA�ڨe�������y���tN\r���-��A�rB,ٛ+�#N������[/�!T�gz�0�%C7��d\r����x$�����<���XA���:�:@�ܭi$�t�\n�l^�ϋzMM4���D!��v�3\\CA`��>Z.}��meM�* I#Y�F�nx�#��`-p�,J���0�G�S�k3��#r�i���$�{�Ki�qS�\rħsx���ӃFc��g����ɷ<�\r�\0��J���6�wZ�η+�ēe,�+��m1���=�vs�i���sU����l����M����U6j�|¤49��(`\0�W�4�� �l��}�k �aIKOq���kNV�h��@�[��콻|r�$|F�s/�i��_���n_���CT��/������9�������3w=J�^���1<�\\�_r�8]ŧG�1���vcE�\0@h�Fw�4t8�!���	X�4��hM���{�\0�8��jk��\\2\'@�NA$�`���\04_$zk���\0uA��;`=�4��/+�gf��_��U�i[�ؘ�ȋ���S �Y\Zn�/~	ԋ�O2u�@7TD@DDD@DDD@DD�J>����Ӧ���y8|̯�ɛ5��\r^�P]���\0N�Čo0T�8��Q͏�O��`ޡXl���)�\0	\'�u���oJ�/��_�\0��{%�f���f�*�!�1����Q��>ŏڜny�~mP�z����#��\\/���`�Pݛ��.f\"���+��� ��W����\0�1?�7�\0�Tz��v#����>e������w��w5������t�����9��:Z�þ�\Z�+ �ɲ{<�K��&�̚G\0<ɧ�~�ٜ��x��yJ��\"*H.����.\'��M��������|���&/m݅��\0�h��9H��<ǪM�q	�vS��A�I\'�u�Y�Xc{�V$Hi#=+��m�q0۪�MtQ�f{�ؚ��䌡��k�����rM }>o|�J�5��iz� @-o^g�=���t���u�Ax�&��MS������Q*r\" \"\"\" \"\"\" \"\"�n�z�V�>��&1��f@�Ml�=�����F��\rkj*垥�Y��� s{�sFO}����0�^z��[Q�AQ-D��s�9�m�\ZK�gh1Z�\"�s���d�J�K+���v�?�Q��ُ���N��]�=ΰ9CXm�Q��}��؝��*�̯��3D��K�cH��=���^�{�s����~kU��LNS8mV5.k�!�Y��Ok�.fq���u����߬��i?���;���-\'�nt��Lk#~�4��u@\0`\0�%�z�fF��L	�p-sK� �E�K���߬��i?���;���-\'�v��K$q>���)��>Y�7���vs=�:����[#[��$���x!��͗!�n���)n��X�����]�s�.�	<0�6�!��\0E��l�\rMU[9�l�1�f@�In�9�F��|܂����_����J��;���T�]$��/s�-.$�=P\0h��������������\nm�Lg�@�\Zl�\06:���|��ߴU%y�|x��ŝu൰�ޮ{�q��s��!׹\Z(�i*q	ȍ��9܄qv��k��W��h�e����.�Id\'-����F�6��/u����K�6�\0^alN�7��#��W}�d7��P�Av���1k�n��^	�nuPg(�3��0%}D���	�h\Z�2��l�. 4�O�gvoш�m4��o_�g�Uv/���}�������%��2Z�\\~�AF���5�T\\�Ҟ���R�M��N��\Z��n+GR�4��t=َ�a��N\Z���U�փf�k���ʮo��3�����T���h�L�x#4�0���8���#Iԍ\0����g[��M(�Gv6kT�E�/﷈p.�MY͔�n%�������ֹ������%���\\����\\�[v��S>*/%+Ğ<3`��;/?��k�i��P�]���^;/o����}E 7o���PǴ�saiY�a9�Z]�a}<W* �e�vHM�<�&��w�?�:O���\0���~�O�8�\0%�D�\0��?W���|I��?���ApR��\"620M�cCA=���~z����*v3浭�\0%ʈ�������������������������������������������������������?��'),(4,4,'avatar','Unknown-1.jpeg','����\0JFIF\0\0\0\0\0\0��\0�\0	\Z\Z(#\Z /\"$\'),,815066&-,,	\n\n\r\Z,$,,,,,,,,,,,,,,,,,,,,,,,,,,,,)),,,,,,,,,,,,,,,,,,,,��\0\0�\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0��\0I\0	\0\0\0!1\"AQa#2q�3B��$Rb4CScs���5r����%T��������\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0!1A��\0\0\0?\0�4�(�(�(�(�(�(�(�(�F�u��Mo��@@���>~G8$g���)J)J)J)J)J)J)J)J)_���A��\rq֚lgk�Z��pf@|��Z�������K��El�\0	�PHҔ�T,}afn����6�ӻr�\0���8�⦫�K{e�KQ����Y\Z	T`�;xc/�R��p(������.�-m��N�5Ӵ7PMٖ?���0ʿ���nH�o�/�ά�I�_d���9\n�-�ϻ�9_C�8��߈����\n�h�R�s$a�r��K���v7�%����#���D��rͽC䜜�~u7\\�����K%Ү�V�h�xV�Ű��#�v�*�ܡ���Y\nR�\nR�\nR�\nR�\nR�\nV���o�E|wS?��3Y-5e�D�`�>��4�R����Im��f)=�e=���ȿ����?*��\\I��a��.n�BN�`�30�>�?��^n[����vЩ0[��rq��ϽZzs���`[���Y�����1��\0.8�J��Ý!F��s��,	�7��yF\r�+��������M*QG^��lT�>���G���֤�I�>��xόԟJu�7��ek{����NĿ�O���U��?�Inm�� c����OK���̌e[����T[���h]b���[c�xH�F�#E$��/�y�H�m��n����s���(�\0�ܤ���u^���*n �b�*dEr=�����Aʴ���\0o�{���bZ�)�.ז\"���.�>�s�����1����,�-B��v�Ȫ��Įv��<�T���v6\n��#�B��o�H�p>��Q_m׮衴���nO+|���1�h-�YF���)9�\n9�r@���B�Us�z���KK����^0w+��Oyh�אN\rX�)J)J)J)JQ��Y���M*��M�Kur\0&�¢g��{{��\"�T��C�>�tq�喇>�uX��\'��Ii?t���&���N�iX�%���x��e�J��ʑ8��f݇9�b+�}�j�J�S��J�3X�4�����rB��x�n�>uP~���]��E���\Zl�ˎ\\��1��U۷c��`�-_E����q\Z�yV� �b0E(ݥUƙ�Z��}����|J�$��;��J	�\0�՗�	�xE�����By���d��0��T*TVZ�����P�;0y���8\'�+,�=�m���f(�Gl���|\"�\Z��ՠ/5��o����?\\2Hϰ�Z�o[�]��e�x���ԌPy#Y��c>|㚰D|\'�[u�������o8\n���I��v>�uKKԗW���0�g_8���m��޷���>k_G�Yvk����$xP���n�\'�C;`�O�y�%P@\n\0\0�\0�\0�M�I[Zx՞i?{<��,����}*j��)�\0��,Z�k��n�!Q�h�3�[x��[��0A\0���k�b��$/�dGF�J��������-��YS���L,Г����TX�JT\nR�\nR�\nR�\n��/S���\0��ˏ��8? _*��Y���?ﭿݘ��\Z�)J)Jc��J:�)��������~��߽b�1�ay-���Q���n�\r%�˜ps�����R��7����|PF�|�79�<�e�<��ZR�JR�JR�U_��E�Ox��a��9������\n���蠱�����m�7�U�8�\0^�>?��E���������C��@ 6��1,1�?#R� H��R�>��9��8�`��s/s	,��ȋ�8%r6�=�0Z��C�S�*%�)�7(`ךܥ*)J)JV>!h\\�n��������;?&\\��qVzPEt�PG{k�|	��ÇC�V~�+T;�\ZM�\0��u��7�1�	 ��r~��)^]��\0�x������S�q���Ys���L��O���I�OuI�ó+%�s�_8�A��S���#u���~��L�\r�4(�+�v���g%���v�\0|U��j\Z���k�g��=�\r��;���ڶ�%�6,�D���\"�3~\'U���1�[����1��utVd����T>���l乻��O�䄍ʬ�ÆPc�;6�v>� �$0ZcMA��Cui `\nn�p����?L�8�V�B�.m�����M�c���s*�Y���=��$�w��F	$�Fq&\0(�os<�%$��8\0d��K�.c���H��$X\'h���Y{\0oU%�]��\nNs��v]7�l�*����:��*�J�>�!��o`�K��ebch��l��(��H���T�e]�a؂������,{r�ĥ�f�\rı&I䐈O�T���`����YYQfc�\0�I�*�.Y���\"{��2Dy\r<�ub\'�U��K,Oggn�o�ӸT9(�H�?�d��g���-)�._W�R�\"��ca�\0����Y� =ȫ��Gsm�)]N7S����A*�{P�\"ߋ-Br�C˼4h�m�İʱ(\'؍۳����ގ���ۺ�B���{Y]-�l( !�q���B)5��q�;�|w,�e\'�.�~��L��{�m��1.�}X�}t4�$W��c�!���1u�dh�D���3z�q�ET_zJRau�4�9�]�����Y�,Ww��$��M֖��Eop���\\)��s�b}�X�rMn�T�)@�)@�)A��ip���N��me>�����#��j��ڄ�\\���9h��ܱ�#��S�2/��1��֮���sC<k$l0�� �\0�� �G��s���.�\Z�IӢWe���]�*w+c�H��sϽo<��LaBMh�}�� Biz�A�d6�\'_�&�op��	�k�p�m��2��A�\0t�l\n0���3��[�W�-��8ڸ1�$x>zWn<g���zx����tp,bF)���5O�ڨ��Ҭ]W��j6qO�k-����b��l�-:+�A�(��=S�_iP�\"2/fA$.��+*w\0FT�����������߸�]�g��F�T�D# \0r���c#��q��K��Z��%��1���K)��r�Ifڹ�\0	���m�[;�;w�n}�m����4{�\0c9�=�u����o��Ė�ʭ#�2H4S��f+�Z���� RN،D���Xm�x��X5�f!���2��$�!�Y2��p0A�)�z��z3��.-n��\"f8\"=�YFpB�8�<�~G���os����I�y\"-�.IMpY���o!Xx���M �0\\���`�<�����H؀(�l���\0yb���5����=�	B�����3��E�]�k8��2,h=ϒ��r��[�Ӯu9#��F�����h��#���x\0pD^Ǔ�����2���[���k��W�����2>uh�>W�%U���N\0�ɭ_����.\"/�\'�Ty,}���M�kR�B6��c�jI �$��3ǥpO8!�c=�ҭ��-��iBwc&H��Aq��Y~���\"��	��]��g�� )�Џ,`Ɍm\0�R����L�y�fm���2Ih!�-��dF�]�h���/C=���g*���$q��s�*�U� �8�В���oo��aif�B(\\���nU?឵$��[��紕�v`���R2�!�#����²�(�(W��\0nM=W���\'���*3��r�v����6���]����r��AM��i�3�J+l]�\0Q��h,Ԫ��\rZ�(BY@�E.����mS��-��������4���H\ZY&eݙd9v%��c����ے�5eFu�ڤ�N1�\'>uU���9�\0h�ݵ�ٶXXK�ݻ���=�����|�m���E\Z�;J���2ds�H� ����<�n�Ic�k�h�ē���r��#3!\n����x�Tv�/Z1h$��h}V�}�(��1�O�\'ȩ����]J2����!r;��Ǻ��C�s+У���C��na4��C%�0#�A;\\�0�p*���F��Py�����Pc>������T��p7U��sF������\0}{��}9�WL,�Ѧ7���\nH\0�C�*���]s�W_.LN^�\"��$)u\Z΄��L��|�~uj�{ˈ�S$��\Z���UNq������W���</!����B3t����4�8v%p)�c%�ӭ��1ks�R{Hï��W��\0ģ�����~�Ԯ\nɦ���Î�ôf_��dF1��=Yʌ�ZI�5��5)#�����fn��Y�pX�_,[���\n������y$X�D,X�Ty5��z�����v�8�o�C��,s�s\\��X�կ#��§~��V�n��c-�S�����$EAm]RU��dݍ���\0�Ҷ72�Zg���kͮ�=�q4WSBe@n�ąv�=�dr�(m�e���\r:	��{mE\Z�g�v�\0�[��s�ђVn�\n��-��1��OHc�DIX��$P;ʺʤ򀮧�p�rH�5�cY4�^�uE��˳ �v�t�#�@O����-\'��v�8��e����]��� 1�\0��v6�O����m�R]N�\"�0D���Ҧ�1���( aJ��c�2N�>�(���F�h��Š9�ϟ��炙�d������!iAA3#����D�>���t��}��JR�JU{�\r��ze��%X��_ /#���#��	-sY���K�O�5�ǒ|*�3��EP\'�����j��� pV8��M�䪶�	;Xm\06ApL�[\n[�[����$������F|�D�����+^礿�]�Qj.�p��4�4r�.w�]��m�$����,v_��\0g\rI���i��{o�۽j�bAf�Z֝}��#�H :{��l~���޶*��i�U���ang��R}.���<Q��U;�,FT�<�b@�y$)�\0,p�݅��i�3Ekjm��1�I4���wd�A�Ǐ��ڟUh׈�r��̈́<�l��TJ��\0�p�5�:����Q�+����5��������ue�� F>|�բ����tAo�2�i-��G�S�*3w�\0���3��j�uz�[��}�mv��y�A�ԭ�$��۔os��@W�]�Y���G2�$3	l&Y#WHرÁ\'� 7.1����P�w3�m�;�-n.�.�g�kr7o8\"G��o9�F}.5P�ڍ�e���XZ��&��B��I0�^�\'�J�%�L-ʳ�6�wJ��3�\"E2�Tye`���@Ǣ������fy$,��N��\"̌�\n���\"#7�A�N���pT�\n[�$���tW��Σb��@,}���o�a�)���IJ�\ȓd��ŋ#��I%FMtz�pmKᖱ��n�,���jm��1�p8\0��|V^��;�>�!��g�ɉ!W�$��+7��*� e$Ϩo\n{�@uWHEx���nc���H�Џħ�S����Uҟ��-���L�@�������io�X�k���v�#]2�¬|�\n��q69��rN3\\�4����7���;�c�,f������;�,#@�Hp�Zmt�TB\n������:}s�rL0� �FRJ�~����h-�\rp�����Bf�Źx�lʫM�@�3�����֓[Eqeo��aB�+��9m���+x�I;�F�\r����qR�F�7+��q\Z���l��<��85��RxUbx\0y,���jQϾ+A��LE�b���;��n�\\�Q���O��߇�u���� �\nZ�e`\0wJ�)��\\pq�9������>m-�X��O\"�;2��h�9���.M�B�E��8b�2HDP�r�����|�V�)P)JP)JP*���\0�[�x��$I��xb��]�9����Uu���ﵶ�m�\Z��$��E�nڊ,�)$�:\n-���Um6a�}g\\��o�eXce�eeb1��G����M�-n\\Gʟi��d���p&E�f�s�.��=կ�g��\n���h��2�yA����\0:��mkJ�/t��x8L�29`�*���#�}����EhTz�N����M0��X�Wlsw��#h׵�����j��/D��(l�%uiRY.�w �$i�`7�Q���A$cYu,W\Z�Om��m�,���n��F��;�F����������ԛK�	���fGdl�DsN�9�3�}�4��%��n��۲��՜\rȠmi�h�� \\y�j��ե��eN��6�bD-��Y���*�9�����\Z\0\0\0\0\0\0�*��\"�D`�6����B�/o0��9�;���ԣ���8���[<}�yX�x����p�d�A��DM��\r���&-f舭��!F���#hRT�r�S+��H�n�ײa��2���d��I�ߍ���I M�е��2�]A7k��V���6>�TT@hK.��Y��˶��ƅ�YC#�*H��@$7\0Ý�Ԭ�#�X�]eYHe#���֮�g�Qd=��V��`��]YKm�N��̲�8Kh�b����6�1F�/�#v��lk=�s����s�M�t�SX���6B\")wrp������\"�����k�=�|�J�ebN;Jc�\\�|l���pZLm���U��!�������wrD�|Z[����7�t�\\-��v�#d���$[�G�;��s�\0����� ��;pR�7W�H%&dtVdm�-�����n� �B���w1�%U[d�r��\rl̘(�J���}K���WS�Ěm�aU\"ӌ*�����c\0{b���xm��RE,��hKƈ���\0��{�G�88$�a��F�-��[%���h�]*�J���	/��PV@~%&�/-����7�bg�].L����6���&������\'JuN�t�X���\'߳�L#p���\0�Ab�\\�wnl�RIyyki�q��\\I4C1�F� ��8i=G#��H&�:���F���Q@UU\0�\0\0���)JR�JR�JR�Z1ian^�X��\"�c�P����#��[Ԡ����Λw.�`�%J�	��EQ��IqgT��Q�����@�<p[��>j��?��@�=���s4c��q�Y/������,в}@t#<�~�Ej?�:2�*ڮYYw3;������LW=��.�=b�⁠�ڢ��JI40\r�l�V��`c�ע^m��h԰���8�\r��W;ו�����hž�*>�@1΢߼?Í��<�UGR�w+�#�e`U����R=���z��hm�Hv�\n�b��!`P�����G\n#��m�9ŝ�h�l�XLe\Z&%&�vf	܌�F�288��j�Š�Q�w}�]��	;IV�3yq�w���e������p��-���g�q�	�\Zm�W��\"�G!�.M�qƉqn8d\n�8�P��m����#5�=�+]\rJ�#ImmUH�P��\'�ɴ\0[hU8v~&��_��%�ָ�fNK���:����d:����k6ycH�v�;�N˸pP�r2�\0֫֝_;Iy-����r��b�,���1rT��rx�Ab�=�Z�\\��B�d`�he�4P Nr�O�$�V�U�--��>�#HcTgv�`��~m�����~%�x�����v�m	���!����ڃ\'��D�Ag��[hǜ	8�LeL��H���+�����w�U*�.#�E B?��+)$8<���Rcq�B�D��iX�<�m��X�rX�����E�=G�M;��7@��q�\r^���D��{id�?�Slѯ�P�\'�|�}jwT��3OB�Molg��w�2ƞ�*��A�Ic�Z�\\^�,SD���t�eY�WrR���I��w�{7M���	D̬g8�K�r��	��TJ/�8��m%e���orq��.IϷ��O���+;����u��\0pJrU���\'�Y���:�C���P�pDe���{_��|ֿR|:ӯ���>�,�����a�����J��&�.%�xn��2*�NK�$1�7�k�\'�9��@�)@�)@�)AQ��	m&䃂��=�I�?BF?Z�h��5�R��hЏ�����V�\\[��o\0��|g�#b�@9�Us��TĶ�0R���i{���Y�`K(���y�/�k���r�ؓ�+�Ys�RWi�	���3�Z��zė�d\Z��f�X�`�BC�9W�ر��U�!۾�6�i���yĖ�\\!?���\0�\0�8<���o��j����{\'w�p�����>����Ԇ��,���sٹC�dOIn=��r~Ug�OW�W0\\\rWO]�(so��`q���?	�>9�ְt�S[�@\'��ëp��Q��0�\0�qPA�@f�u[cB�p���`B�F������L�\0��`c��1��98�\'���Z �N�Ӭٞ��8ن\0IǺ���\n��}�.��Ael��f�A夑�DP9<�q�PQ��;]B��{���Z����Y�K9� �u>��\0\'�&��\'Fiײ��x�ޅ=�p�YY���ZE/��l\0+^�\r���O$����%Dm>Z�ӽؕ1�p9̆��\0zjF���� ���بrAjrFB�l��_p��	�����F����ԫ�Elw�p�HEs��펪����kI����[�;�����)Ln\n��e��,�np3�\"G� ���`h�[�B��\r�4�H�2�ʊ�&�ɝ���>��ĺ�,N֌��)\\ᗰ�\0�S���\0�V=;�B���Cl�XƏ`�d�b��>x89߆Fn��Qy�ޔ+ܑ�9a��	Do~x��U-��eD��p���W\0�� &C)�;�C�G��l����#YD七T�P�-�E�u�,HU�$�%\0���n��076k���_�l\'<{w<¥.�ڌ�%c��5q7�78��Y/k��x�?Z����vt���H���_� ��6��4���ge�cH��1���W���$�����a��0��[A����M\nR�\nR�\nR�&�2�> ��\Z��+fb��pw��ۃ�&VK��n�6~����r���j��c������\0̤CW}V]��@9���F��Wm�v#�D{��ER���t�[U��>�6�t�̐�K�Y�@�ql����� N��ei% ��A>� �|�����K�9<˧X��>KZ�lc�y��D�?^e&2c���̠8eϏ���U{�ۡp�v�j]��h4�Hf��$���#v3�y5Ҿ�F���f�\'埴�>���uA�t��Z�B��]���N��9f��t��\0Q[��\\�;~��-�~�&x��8$�j�J���?���\Zt襣E��l�#V(	v�x�?�CPӯ��%��Es21Ur%AҨ{�L\0JH�I��`9�g�9�.?�lT�y.��d��u)~��\0I�\0|�;��SG��79%��D���r5\'�	*X���]-ݎR�ȝ��@�h�Ou\"Ǔ!m!A������;�)D�¯܁���\"3�U@�jQJ��ۖ�{akssQH#Iad���\"�>�c�V_X�{��z�`�7�b8���n;��9�j3�W|���T@[tխәn������\ZB�1P�Xb~���i[�`T�$�}�����de�v���~��-���\n)�`Y���E�L��x�(��H��\'r�\0��G��Ov���#����G��G�ぼ`����1�^@W�K�⸍���?h�������.E�Y�����i�Z�g\'�e�\n\n��r0��þ��f�v�$�r�:b	Ȋ�L��2\"�H<8��d����o��o:@��v@\\.�cu�p�RV�X�(��4i��X�1�O�c����ǰ |k��O��Ir���bip�$�W,c9ۏQ|�WF��N��H�*��bx\0�O�QZ;�1^C݌:̏���u�Q��a���JUGỴ��xWj�\\�<`�7ojEo<��8�U��R��R��R��\Z��5�\r����w���\0�WJ�t[>��/K�܃ǹ��]\Z��0Hة{�\'�rNa��lc�o�2Xf��~�V}6���@C*#d\r��B�G��<�p�1�͵���j�l���<C;g�_�E|�\0��UX ��׌\Z1|3�+ӓ�uo�n+ʊF��]xf�`G�V��0y���\0�\"�\0�����?�+O��\0�c�������\0?�h)�m�z+^��$���\'�Wj�Q����FI�9G��(��k��:�����q@���;��\0�a׺J+�u�R!�0b�\Zm`��B��\r�9QT>��M,�*��aR�Ƒ��s�7���\r�l��^���K��X0����%��Y6�$q�7�r�|� 6�_�7�x��im���e�(.;�ɟ$T$~��%p:\n�K�����>�v�i��{����P�eRS�\0b����L�������<Ȓ(���\"LY7+��TL�f�k�zf�O��U��i��6/��﷞KU3��)/�+���Uo�K\n,p��N%2���<{�5lԴ�2v�2�#x^7��>v�|`���kb(���\0\0\0\0\0\0\0x(�j=�Om,/��\\2��H��)�0�I�\'>3�5�]]L��E�Qڹ,Vdl��p����KA���+�T_Q��7��o(ᇥ�⍇��)�~T���}L\\��\Z5Q�X�^�F{�@<P?p3��YY$K�s�2O.�#O�1?�r�\r[[�N���J`2��4;���v�l7d\0r�>��æ�ė�q��V���\0�h�G�^�E\n4��Ɗ2��*�̚�W]S�b�-9U�di�r�3r��\\�%�	��U��\0fV��%�����ʭÎҟ}�F\0?\"�}�?m+����5��ˍ������GP@\0\0\0\0�+�)P)JP)JP)JP*��?�������\0Ԉ���_i|��fΎ��u�A����2��d�p1�j\'F�uq1�V5�m�G!$v�mR#����0x*��� �/UGMr+=R�9�/�E��3\Z����G��a���nv,4]J�q�H�4���H���x�p7�RW+���\0����~�Xd�-�\\!F��\n�c�r��);�Q�9$���q��z���+������*����\\|�2��ڡ�?��n\Z\'���Q�F�G|�|B�9\'��Q��ժ.��S�mm��B��\00�o�>6�s���������c���i��[��\r�C�\\��r6�%~�n9��P��������z�+��m���\\Ư����-ې�I\n:I��P#u�>�7`���j��	%겱v�s8�9����5t�\0�������$�$�\0E&a�s������֮���λg�9W�$Eqǎ\Z���e�0���>QI$#�F�J��y*^WH�rY�\"��,qT�[���ǥC#/�^:�ģ��\"fQ+|��*nǠ4ȜH���ò�c��A���(<A�Tr=g]�-K��V#��i`�p7	,�6�bާc�6x_M��g�,�G4�1o��P�1���\nڴ�(�#��?�W�?��8?A����hA�x{@���fG�یg��Z��ۻS�&�n������}���\Z���8�Ԯ�n���h��\r�/t�d{�5s�[Ɏ�1>х܊�p28ʳ[ZG�\Z*(�B�����\0Z�5)J)J)J)J)J)J)J)J)J)J)J)J)J)J)J)J)J)J)J)J)J)J)J)J)J)J)J)J)J��');
/*!40000 ALTER TABLE `IMAGE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INSTRUMENT`
--

DROP TABLE IF EXISTS `INSTRUMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `INSTRUMENT` (
  `STUDENT_ID` int(11) NOT NULL,
  `INSTRUMENT` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INSTRUMENT`
--

LOCK TABLES `INSTRUMENT` WRITE;
/*!40000 ALTER TABLE `INSTRUMENT` DISABLE KEYS */;
INSERT INTO `INSTRUMENT` VALUES (1,'zang'),(1,'gitaar'),(2,'bas'),(3,'drum'),(4,'gitaar'),(4,'toetsen');
/*!40000 ALTER TABLE `INSTRUMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STUDENT`
--

DROP TABLE IF EXISTS `STUDENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `STUDENT` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAAM` varchar(254) NOT NULL,
  `EMAIL` varchar(254) NOT NULL,
  `PASSWORD` varchar(254) NOT NULL,
  `WOONPLAATS` varchar(254) NOT NULL,
  `TELEFOON` varchar(254) NOT NULL,
  `URL` varchar(254) NOT NULL,
  `OPLEIDING` varchar(254) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STUDENT`
--

LOCK TABLES `STUDENT` WRITE;
/*!40000 ALTER TABLE `STUDENT` DISABLE KEYS */;
INSERT INTO `STUDENT` VALUES (1,'piet jansen','piet@jansen.nl','piet123','amsterdam','0201234567','','conservatorium amsterdam'),(2,'karel hensen','karl@hans.nl','karl1','haarlem','0302345678','','inholland haarlem'),(3,'kees jansen','kees@gmail.com','k33s1','groningen','0704567890','','minerva'),(4,'ron oud','r.oud@hotmail.com','ronoud','tilburg','0135432178','','rock academie');
/*!40000 ALTER TABLE `STUDENT` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-08-05 22:12:16

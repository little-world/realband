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
INSERT INTO `IMAGE` VALUES (1,1,'avatar','Unknown.jpeg','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0C\0		\n\n	\r\r\r \"\" $(4,$&1\'-=-157:::#+?D?8C49:7ÿÛ\0C\n\n\n\r\r\Z\Z7%%77777777777777777777777777777777777777777777777777ÿÀ\0\0½\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0Q\0\0	\r\0\0\0\0!1AQa\"2Bq‘#Rb‚SUr•¡±²Ò$3CV”¢£³ÂÓ%&456DWcuƒ’ÁÃÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÚ\0\0\0?\0ÜQ ”Pˆ%B”D@DDD@DDÁ[WOCI5]d¬†žÉ#ÎƒZ:’W:Ì¿tÁô˜\\T±<4ÕÕµ®êZÆ¹ý¿ŒÖ áŸÖvO\'Ñì÷9écq¨\rcGß¢z|ôW±OÅ¬>[p¬}|‘;¦éŸŒ£ä6õUi°ÚilöZKm$MdÄ >#®¤ù’vI^d˜)-ÌÜ¤±Qº ÷Ÿ›\'{æ1ü%ÞºÚ\n¬pÅåªlN¦¹G:öÎŽ7ë¦¼»_pÚÑ­µô—JkmõÔSLÞhåŒì8.\ZÛ5¶¾‚J\Zº\Zy)^ÞSŒk^žK7à¤²[®¹>4é\\øh*Ë¡ç;:ç{	ùò4ýäù Õ”¢ (R¿/sXÒçÖ´l’t\0AAÌø‹-ªôÛ;k}Úî@/¤òÇ±°†ÉÑö\0²¼cqØÃ5ç	lÐ÷Ý7;H¼¦OÇKñÁƒ\rÃ*Ìn¼Âg¾¤æÖöÇI)è|ˆùèµ´\r53cô›o±ÇmŽÿ\0éœáç·4¹ß~˜>õÉlÈ²¼3, ²fu‘\\(..ä‚±£«]°Ø\0÷-Ó˜z-igœk°Ü/8í$ÖŠgÏUCUíÈŒmáœŽ´xyN‡^ˆ45*©€æÔY…†8ÝM_O¡SJó²ß\rƒâ6€ ô +Z\" \"\"\" \"\"=–+„ÚaâNMuÈrG™à¤ŸØÓÐ9Ä5£¸¢º}£Í¿%µ,Oˆvªœ&£¿bÕï¥}Þ¨Ç-3†âç\'g~l$“®ãd‚mƒ¢•zëÝPø³•ÖXmÔvÛ0q»]$öPüLnÀ$xsæ´oÏ~-wKýšÐàÛ¥ÖŠÎìÙçk	ù²–²ÑOÅ×¯‚¢¦¾ \næRÊÃ·5¤væiq#õ¼Ê¯Üèqké*Q“äÓ;–ePöÃ¾-æaç‘Þ›\'c¯/eèã¼\"¾]À¨ºº53ÿ\0Är™%å=Ç)\'—§é8Ÿ0ƒ\\ºçxµ¥ÏemòŒJÎŽŠ\'ûWƒüVl¯n1â12Zé}YHáým/Ý§„•½Œöô³×½½yªf:?°Ý7ù—qŠãÖÛ]ºJ%ºæëFÂøé˜šeh-\'[ ŽãÅÃÆLFC§¾¾/WÒ8ÿ\0Wk‡0Íl9w¤±^©lÔÎk ”˜¤xûM\rx’Ðà>õk—Å¦Ù“´{‘E\'æð®œ%ÄkÚã\r´2Ï¤™Í\0ÿ\0í¿Ì‚·Ã¬óÇ0ÚJJ™d¦­iq©´ï{¤“Åûh ‚5¯ 5à®Vn$b—š¦ÒÒÝï 1•1º.r{\0\\\0\'Ók5½pšûcœWXIyŠ3¿£US°¼\"ÇíùrŸ%ÕŠ§Êid²Ýì”˜ÎBßrà§ö1:MtkÛ¡Ë¿ÑwŸGoH>€][¥ÆŽÓA5uÊ¢:jXFä–C Þº‰ âJ¤po#©»bÓÓ]dsªíS$|ŽÛ‹5¶ó1Õ»ñåßuágüMÅ/x•ÂÙDúŠšŠ¨ù!i§s\0vÁk¶à;N½~xlïÊ\'ßr‹e3©í&7B	n½£ÈÃÌòáÌ7Ô­…V8gCSnÁlôÕ±§s:77•Íæ%À8yèïÅYÐB•%Wó\\R‡/´}_^ù#,x’)£×4nÑÑèA‚ŸÍX;WÃÌÚÇUöL®¦åSJàèée|ŒhðÒ9§Ë”èuî2órÈø•ÑÒŠ6Ct¦a§ä§{ƒbs\\}¤ŽvÏ(¾‰Ö€$-o‹¹[±¬oÙQÉËp¯&({ÆÝ{ïp W5~øU‡3Çã’¢ Ûc[%I=ã\Z÷cÉ¾>gegÀmx;_Srsu-[Û×Õ¬e¾ƒ©ñ%[‘S‰þC¤?£u¢?ëØ½L$´ãT_J¼U¶Œ`Ïù5£©ÿ\0ëÅer?%âíPú;~ªÆay,‘þ÷µpìH\Zçp>\0ò·¯RB\r­;G•å|<¨Žß™ÒÉqµsrCqŒó8\r8ü_ÅvßEËP±_­y«³ÖÅSgry‡ÉÍ=Z}\nIU³|Õ—Q¹µLW5º†±íôwé7Ì–UiD5SVd<8¹]¬¿F€ÔÜad!î\'•Ý\\$g ?ºú×]ƒ†˜dæ7HË…1ºé%±®|džŒô\Z=Wc‰„9m†H™>±§kŸG!éïx°ŸÑv´~GÁy<Êe¾X_l¸9ÿ\0XÚõý¦ùßPÒíý¡¢Óã¶ì÷A¡¢\"\" \"\"\" (R¡¢\"vúßÊ®8ÐÛ¤ôvˆÚ÷°öÛ@þ.tCä¶óüu9$\\YÉ$Å)a©¹9òÆæÍË¨âænêæŽ„3Ï¿ef8&{äùi¦„÷§£q ƒÜÞFþ<È/WüÛÇù›rº@Ù‡ýÞ#í%?°ÝŸÅPçâ6M–JêLÇ+\";i¯©h!¾¿ Ò;õ.?ª»5xNÃûWÖWši.åcju!•çì¶>ŒÞ‡ˆèR½Ü\'ˆ¶<–¯êÊ:yè*ZÂè ™íùKI<ºJáCe­úÛ6¸Ix¸;©‰Î&&õÞ‰=\\ðèßÕZdQGmŽ&5‘´\0Ö´h\0<\0_´AÃUKe<”ÕpÇ<´µñHÐæ¸uš^øU%aºà—)mU­ê)ËÏ³w wR¡j(ƒ&£âuç©e,“@ây[YNÏuþºß+¿dïõV‡bÉ,Ù>ÖÏq‚§¦ÜÆ»Ogñšz˜U<×‰Õ®¶k%}×Bßv¦6DÇFÍ„ó	Ñì’Þâ™eÌJ²¦Öé6ct$–±Àè‚ÂvÒM5Á°±ÁÅ¸ðÆÃîRÞc%Íì7 $üý¤{ý²»\"ÉÅ\\{þ¬¼Ó^©Ø=ØêÜ?oGýbªd7–·9Å¤Êíq[ëb«…±»JßnÍŸ‰Ý»wñAô*\" \"\"\" \"\"…*J\" Ç©õê0ÔwhßÇcHÿ\0J˜[\nË¸ác¨}\rMnØ«´ÈÜÑ²Ìì¼÷+¶Óäøý-Î\r5ïo,ñ¿e(ø›ò=¼ÆŠ\nWìµ÷=º¶‚ªE+ý´17˜†¼Ï¡ÔètìOeAàýšºå˜Ð\\i¢Ð¨œù&¨ÑäøÐÐ{K»ym}  ”D@DD/q\nË_eËn-­†_gWW$ÔórÙƒÜ\\\0>.Ö»ô[/,Õöl@‹”o†Zº—T2ZÐð\'—›_­æ¯jP=”ã•’ÞÏ~+kXù5ö\\Ðe;ÿ\0Uø­7&¾Rã¶J«¥iüÜØ`=dwf´z“ ³¾	Ú*«\'ºfaº›„Žd.> »r8~©p\rŒò(5„D@DDD@DP‚T)P€¥âx£žÃ3\ZøÞÒ×±ÃaÀ÷bUQ\\¸A“\Zš8¥ªÆkž\ZcÞù|›³Ùí‰ø‡C×¨ÜVçIE]C5-Ê(¥¤•¼²²P9HõAÅe»Ð_-ÑWÚêYQO(èæ÷ÄÜâUß_>ÞcoïWáM\rD.pÛÝRÙ“šžŸGçÕ]q®2Y«šÈo°¾ÙSØÉ£$ý 6ßÚ\Zõ(4Zúú;m+ª®PRÓ´€ég1ƒgCdôî¼ŸËLWü¥³ÿ\0ŸEý¥Ýdöœ‚Ý$qMIp¢¨akÃÙöžàéc™G®”ÕRKK\r]#‰-§žNIcAÇ£‡© ýýÐjß–˜¯ùKgÿ\0>‹ûKÒ¶]m×h5ª¾–¶&;•Ï¦™²5®ï¢AïÕaÖ\rßk*\Zëä[©GÆ#K1ô\0{£ïÙûŠÙ¨©ì¸š:XßOACNÞòÈ\Z=\\çÔžä”ºéÝntVz	k®U1ÓRÄ6ù$v€ò¤øBÉ8Ãb·Åfd—Z‘°ÏrŸWžÿ\0²ÞjËÔyµõ“gy¡ ÛŽš(ŸËÛ³tYä\\â]ßH,S¾åÆ‘ÄÙi1ªíÎ=	óÿ\0ÜpèØißs×k£¥‚Š’\ZZH›°28Ø4\ZÐ4\0^f*ëmSãÑ¾‚ÊÑI sZ|vG‰îwÕ{(\n‡ÄŒÆºÉUCj°º“ëÙ%LòUc§§cI.vŽÆÈè}ï¥v¬©†Š’jª©Æé${ŽƒZÉ?%€DÚ¼ß!ÐHÉò9¹Þ<imq; ýR÷4zÐ~Ò\r›½UäX¥¾íp¥Õ%ÌnùH€àP¯~çº÷×<SA1¬Š&†1\Z\rh\Zr \"\"\" (R¡ujî–ú\'VWRÓ¸öÌÖç*½ÄûõF;†ÖVÑ;’©åBýo‘Ï:æûÀÙûÕá¦õa¤¼_*ë&ª¸D*í¡þðÙ —8‚	$÷A§Ür«²ŸÛ×^(¢Œü?Ÿi.ô\0Ÿ’Ãø«™QfSÁOemsé¨™#å.i¼_|³¸\r×ÄíwWê^âTr:iß]4c©d•Ô°4ÿ\0:ýÞsµTZ¨¢¤©cØèå¢·F×4CÝðŽ›ÞÎþôVà·lJšó-=LöDÔkßdöü`òŽ„Ú+1 µÃ~½´QGõ}²º±ô´R=Ä¶999¢c‹‰$Ÿs}~Ñ×’Š,ŠºË`¼Z!ŽX¨.Ñ¶F‰wÌÖo\\Í${ÁÌ„Ž‡[a’ð¶‚ÑL[âŸ’ºOÙªß1ëó-ß‡O$ž\'‰RÜ®ÕjË¥Uƒ&‚BÖ±ì’Žúi®ÞºüGcNðÞç´ŽÕu)ooÎK7ôà\\°¬»;¨§¬ÈãµXÌ\r7C–¤ëôœ×k[ê4î›\\¢ûŸ`Pº;õµ·ëL¥|2#X<\\tOAúCïqîƒÜ;ÏêŽ«s©òå›únÕ*ÁñìRŸé¹nE[s¸8n\ZX9Xù~÷<¼µ¾nØôê¬°ä\\EÍ)£“¶ÒYmÓ\r¶ºID„ý’FüþÇÌ/6L*÷„^Y’:Ž,´rƒ?;\\*!ï»Ÿ^}HµÝmUe¹Ç%^è]©é›Y,]\\i¢s€h7]õG¯/Sâ±UIƒTpÐdòc´,‘Ôú@GéäänÇÓ~]U‹ÅjdºUäìkî™së˜GÁ6?\'§†õà°K‹îT4u8Ìò¹ÔôÒÈà\ZO,Ì¿Ðhoö^¨-6É¿!*UwµÕ:Žë9*Ø5¶´»«Aèá²w£±¡ÐínÖLšÉ~§öÖ›•=C@÷š§³ÑÍ=GÌ*þ#~Ä2»ZVÀøâ±›mc8k@	èáêÝ¯!àþ&#žáôª»m4,t’µ¯kØÆ²G8$\rxm?.âxèñjzƒ®¢á;Oø\n8ýçžž|¤¢<W7mô•YEM8†[ž™I¿èôŒéÈë V39¥°ÈÊJy¥}ÁŽ¨stø­Ñ¿§6‡»Îñ·ÓLÅ}ƒßh²j’ºßÑâ\röN§ýåÍèYêM- ÷ÑB•<LÏ\'Ç*í2Iì(ŠMo’FZuâ6:úme6|ë áÜlÇ²k3§Š¤S=²†¸Æ‡+»=£Ã±[e]L4t³UUHØ …†I$yÐk@Ù\'ä±*;8—_{È/\r¤§©†ÊÙ]ËïŽ­:?¼@î\\ñàƒñ}É3> Ñ%7-%%TÁÞÜ²NC;ïsCu¾¤ŽúÐz3Ã,jÂÈ%4-¬­£u^þœ<ZÓî·¯Úéð#¨¯¶Ôc÷Žf^,Îö2±çntc£NüHÖ‰ñÐ>+@AŽq>&_8£‹Øƒ\ZDa¯”ë»\\þg4þÌGÿ\0’Ø–CiÕÏ÷A\\e~œ(iÜ#ý^XãgôÈïÅkè\n»ÄOûéóP«¯ñoÈ7ü?õ\n\n‡¬WmØÕò;ÜñÛã·_m\0ò=ÜÏ÷]xƒÛ~èë¥§,Ç…ö«ä¶ìjé\rëÙÙ¢¡|rÛ¹7íÌðþòÓ¾þî¼Vž€±éZ,¿º£CØÝ ÷Áí§FÞ„~%l+!âÀ4|GÃ+Øy\\é˜ÂGˆlÌßóHáóAìe|#³Ý¥5¶ih®æçî\"ï>MŽSêÒ:õYÖ_uÍl¶:ŒS\'{ä§©-Wss°–	5ïƒ®¡ÞðñØ+èµ×¯¡¤¸Ò¾–¾š*šyŸ¬k¾EE“[¬˜Åæâ*idÈ/ý\Z\Zj`K()šÞVƒ±¡¡áâC}JÔ¸G`ŸÃ)á«ŒÅSR÷TÉîÎm´ú††ï×kµmáÞ\'l¯mu%ž!;Ã#ß#c#±k\\Hî\nÓ¤ˆˆˆ€ˆˆ\n¯7\"¼ÓcöZ»­i>Æš2îPz¼ökG©:ïAAâÕÒªí[A‚Ù~™qs_Vöÿ\0Š‡{ëéÐ¸&ëíM¯³Õæµ”x¯3-8µ/² -=fœ’×~›ˆ\'›Ñ§í.	®¶œná”WùÃ”¹ñÒhèÁL5Îöùlr´zr5zÁrŒÇ)­‘ß)Ý0õ6?9)î~Ã € ¨K}”¶ÕÄ‹c¾à{(¯´ÑžƒŸ^O\Z{Ï\"·k}m=Æ†ž¶ŽA%=Dm’7´Ò6W}ÆíÙÝ\\Öê¸êñËô~Êçc˜!s‰Úp<ÛoôVÎ×ÏŒßëð+´›1Hé­²» •‡Þ yìmß8ðAÔág÷ß3*×ÌÉ$ŒC3‡ôFßÁkëÂ*\'§È2ymrÝþ˜úùÍ¢¡Švˆý£ù	/wBO?à®?Zä¾dÿ\0ÈÔßÚA£*ÿ\0ð\\ƒ_Á³ÿ\0³*µõ®GûæOüMý¥æÙŸ×ÓUœúêæ^<ŒžšåZênHù †–rž€‚IêPsp¶—$}¿ª§®§f8Ú\'²jW7r:^y:wÏ—¯7`F¼V¢²‹ÑÄí¶°ìèÏ®ãp4ÖÚ÷Ndq=Zbæ--#{ØéÝz?Zä¾dÿ\0ÈÔßÚA£,‹Žíöw,N¨weS›þœGýÕëýk‘þù“ÿ\0#SiRø“SSV,âí5ëé-¬oÑ£­ †;no1Û½ŽŸŠ\réiÆ+K‘‹uš‰µVæ-D~Ý¬æh4;dtÖûyøh--Br¾‹ˆ×X Šå†c5Ó7–Ï#:7rƒð©ù7šáþþiüE·¢N,w7d’,\rì!ÍwÑ#ØÎ(¾ãüK¾Ý-÷:«]ª\nêsA=4Á‡¸:vÞv6;zŸ5¶¢‚ŽeÙƒ*DÆ`d\r=„³skÓel&¸pžîo·+›(}½µ³¾bØ›#ï8»”–<lN—øa˜†žLö°»Àª\0ÿ\0hƒ^UÞ Að«üŠ7=¶ÚŽW9 ‘ù·v+Ì©/Ø“ã†£:©¬«q÷é ­œ:&èžgmú \Zï×Ð¯KÔÕPºó¼¬•¥¯…æGµÀŽ­ Í¢>]PnÜ†/î}j”FÏh}°/å?Š¼/”`ºÉCié²Û­,Møb‰²FÑ³àÑ0®×{­º^îAü¸­¡éõU³†Êw®^ÓO¡>P}@²5o–a”ûøªNÇß,!D|1ÌœÝ¿=«Ã–jƒÿ\0è=·…vß­·+ÖQ%Á´S²f¶VÈ÷{®\rï:´\ZÂ\" \"\"\" \"\"\" \"\"(R€ˆˆ7â¦cp·TÒãXÓ^ëÍsAæ`Û£k‰\07}9Ž_²\'Ái0â&)‘;- Êñ(ã¨¬‚1á{šHÃ˜€Ap#`ö× v°žÛ-\rmuù‘Üî¯<ï2ûñFóÔÄïÖw_¹z¼A´Û`Áï²Ãn¤ŽFPÊZö@ÐZyOPtªYñ“ø‹ð‡þ2ê]ÅË½²ªÝYd¥ú=TNŠ^C\0w)\Z:>×¡AßàEf/pu]4ïmÅÍ–&¸ì£:Ù¥Z²®cÙ)céER™SHÆ±ÃÐiÃÐ»K7Åí|QÅhæ¤³ØáÍ7¶x™ð<ór†ô>ÔtÓBö¾³ã\'ð%áüd\\^÷{áæKOŠäÒ{{UCƒ(ê:ÀNšZO^]OÃ±®öeŠË‹ç™¦Aj“0¤‚ŽŠ…üæFþf¹Í¯q.<€lè§ÐíA)P‚QB•%)P¥ÿÙ'),(2,2,'avatar','images.jpeg','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	&/\"; $*)-88 750*5(,,)	\n\n\r\r)))))))))))))))))))))))))))))))))))))))))))))))))))ÿÀ\0\0†\0d\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\07\0\0\0\0\0\0!1\"AQ2aBq‘R#3br‚¡±Á5’ðÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÚ\0\0\0?\0ÜiJP)JP+¢úçÊ‰äÁ;¶¾ÐN+¾ºçˆ:•=ˆÇïAÓ=J/aŠe+‰FJvdÈ\'7Gb>àÕ„V]Í£^;\rkss±°¤ySH¡ÔŸ”|óŽÄœdd= ‘šT¥(¥(¥(¥(>Qúæ¹œWÜ…TA¹ÝØ…TE÷b}¿?Š¨x§â2éFÝ|¿4É¹Šî€˜\0œƒŸQíö5Qð{G:ÅÆ£q¸í”ˆqÄrÙG¶ íîh6ÈäÜùýë•DÙß²IåHÛ%RB\0ÞÀ(qÆà3ÏÃ|s-AFñf×\Zdïœ`çðº±—›8äçéÆ9«GjÌiÖ²ç%áBOÉÚ?¾kñx‘ÿ\0Š¹%wMÅ~@#?íš‚ðß]t‹5Iƒ:ª£F\n³O¬^FÎ,Ðht¥(¥(¥(¥(3ü2MJ3r²ç‚3ŒŸC\"îrü\'¿¨~¿j—‡+{¤3Û¼LÎþbÄ<²€*¼«&ÿ\0YÆEý&·\'@Ad>ãâ³\r~õ¥Õ<åº-³vñ •äpA˜ö±ú€^AÜ™ä.Rë àÊ±¢¡FtgRêXæ2}ÈÜ~8ûüÐ:æÎöWŠô8ÚÃ°ÊÎ0Aàö5ŸA\njÒC[Ýna$…n¸’\"Ì3ŒpÄŒ?\0U{¤ºv[e°¸Ú)ÚÎ¼\"†_KpAä§œgŒÐmbPé÷JÜƒo!*;•\nsþø¬‡Á0Dóiì¼G*Ýo y{v*œþ.9ø\róÆ—Ò*.lZwg>=¬Œå¼½€¤‘Ã?ÞùóíñŠ£øc2E«È…“7Ð¾Ï©FTrrCoÏ?À6ZR”\nR”\nR”\nR”\rUü=ÐVÚÓs\"ÿ\01#ÈÓI½ØÈÿ\0Sw<cŽÕiªåÍìÖ×LŠ£”yª‘†Y0ÏŸ‘ø›â‚f}6\'mÅ~1¿\00»Öyâ•®ËoVàáÑà•cf2ŸFæPBgÏ|ÕÒßªa,÷DÌ@Ç¤“Œ\0ãÓ“\0$žÕ+\"ŽçóìG½sÐs5¤Ûb–ç›ÍÀ£–8ÚeŒ6|íÊä‘žeWBm]KƒGœÆ.ìŒxGÝ…lüöÈ­ÅµGÕ£´‘â‚\'Ú÷(deá£Ïÿ\0õùªï\\\\Giò7?–uR’I†e%ry(Ålg¾W$4«k¤•C£++‚Akº¨ý)<—v6×P>Ö’2dLIdC²B;”%Á!†Gõ)ÍYô}WÎ¬\nKˆx+žÇädA#JRJRJRUŽµ¾XÚÍr¡¤ºTû&×2Ê?|wíVzÃ‰[¶Í”‡ûGýG–£ý‰ ¿Þ´Vñ<²m(¡‹n¶pêoÂÀ~•DÖf2›Ù-î$¼‚ÚÜl‰\\ÉRÉ¹wÙÀ\08ã-Ûh¬JmBGP¯$Œ`ÌÄÈWÏ\núÆÞÎ;Ë{ƒ±ncÂ¹@`®0B‚° ô?KéñÚYÛÀ»Ô.8ÜBå~I9osTO´(ç¶¶’IVŽb­#+°U‘ä„©\0à{Öe¢ø£&¥içËèŽdRB¤ì`xÏÒH¯Au^o¨ÛÉc$ŠÔ6.õÚAW\nyî;ö ¢\ZÏ™a-¾A6ò’?Ë/#Á¿z¾_\\,z…¹æI!oô2gòñþcUî‘è»-\ZINãp@í,ƒélìÎ0¿X ½vtÄRÝê2ÈvÅitë\n…ö2—i%BI€£ÙíAz¥)@¥)@¥)@¬_ø“ÓÁ‚Ö~w+´l0\rÛòµ´VUüEZîÒã~}ØqêWŸj9í®vßZç¶GüÔ„‘mFp\Zàç‹ÊNÇìó÷ôg¶3°xÐ–·\Z|—C3¼¥SÌPûUû}ØŸØPcúåÐké¤Œä™Äƒ^ƒðÔÏ{W-/–éu;Ý&Ü´’ãdHXòª±1ð\0¨»o\rtñq=ÜˆŠ‚GeCéŠ8ãÝ|g±aæs‘ôýócèØ/çh˜/mÒáîŒñ»uØyºæÂÖFE¸PÅò##2DÇËã8\',<1â«žki§YzþTw2y»ndÚ£ÊòÙ€Â°;àŒƒ‹ž¹Ðq^‘çÍrJ0t*È…w)HÁð*£\ZKV´°QáH·V$±íõ0íå±<VìŽþ	ÕÔ:ÊÀ*AApF+²¢:\\‘n\"9Ìbçá1·óô?CRô\nR”\nR”\nÃÿ\0ˆ]mLÚ±|,fb\0ô—rÈ…°{€­þ,òá^Tñ{^{Zå8Ù»@å&I÷ìp;ŸrI\n¦«v%—vâÞ•>ûUAÀö`aŠôÏƒQ•Ñm¶…ÁWlñË$ÎqÎsÇ¿jòýÅ£Æ@u+¹CŒû«©üˆæ¶ºÌÛé¾\\û’!?“ƒ°y3#†Ï\0.wî\'±<P]mt—¼Ò\Z2y¢e`beç·$þµû¼>é)lÓ3LÓ2\'“ *%lªd}GhSœq]=#×Ï,\\FÅ˜œã;‰Ü£=Èoö öÅ]À ê¯´²}—¬Lé¹wäA ¨=Hèº”w6ñÍnI2œ~Ç‘YwŒö€ÜÅêþÒâÝí£V´ci‹Ôr>hºe²iºtq»–Ðª³cØ ’}¾ô4’×‹Œ*L\0?$Æ„ÿ\0ÕMÔOLÚ:[îbY™¦KHrý+µ?ÓRÔ\nR”\nR”W3ˆÑŽT±?\0Iý«Å·Ó™î]ùÌ²çülOý×±z’ÒI¬®#ˆâI ‘çvF\nsíÎ9¯2OÑëg¥ìWÊí¼á;F¸áHsŽãžý¨%ú×¤\Z}aâ‰“e¼Q#8È†\0À`wä`~uoð¯L´›F’ÂéáÝ4Œæ2À6@¥sP+œŒãŠüžu\råÃC5¤‚V>‰ÇšåøÀ3à>×ÀüªÕqà>#/vàbQé°_Gƒ=ÔüÔ –9lXIŒ8-\"+Æêr98Vç#ö­Në½N\0!¾Ó.L€}kœðJ¡À? ÐUûLÓÖÞáRÅb@ŠXåˆP\0É÷?zý8 Âú·¨¥Õu«8í¬îKÙ+Ç*¬OËFyW8QôòO½h¶Z=íÝÈšüEP°hm¢bà¿´“9qÀ{ûTù´Qx$\n2Ñ\'ÒÊ@\'õ5#AðWÚRJRJR\\JÒ”R”È]”¥”¥”¥”¥”¥ÿÙ'),(3,3,'avatar','images-1.jpeg','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	( \Z%\"1!%*+2..\"383,7(-.+\n\n\n\r\r7+,++,+++,,++++7,+++++++++++++,++++++++++++++++++++ÿÀ\0\0½\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0N\0\n\0\0\0\0!1A\"QaqB‘#2RU‚’¡Ñ3Tbr“±S¢³ÒÔctƒ”²Óð%5C£´ÁáÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÚ\0\0\0?\0¸¢\"\" \"\"\" \"\"\" \"\"\" \"\"\" \"\"\" \"\"\" \"\"\" \"\".)ê»ÜÖ÷Ñï*[o.£ÒæŠ‘øt1Â@ÏU#›KžCcÜ‚®‹]ØM¥øN“–žKšæ}XâÜÃ®Sn«b@DDD@DDD@DDD@DDD@DXÝ¢Æb ¥’¢o™oaÍÄèÖ6þ³œ@h:ûSµ¸d<Z—å½Ã5{ÈõZÞ¾\'êBÐ£Ä1üsµNH~kÝ~+ÛÞ\r³:·(îq_­‡Ù¹1i¾ÄÀ~czXN±µ€ö]cÍ¿DuùÇ˜µPJ}ÍQ¼ç¬žª²CÌ¹Ù}ÇWid~(ðk[ƒ\'Ÿ{ÿ\0Ïe½©59ŒVO5U$ôÆ!Q,ÒNC¬Š×‘Žæ]íëÝ¢…Væ0âsC%M;Ç\'5áÄ}àOâº¯À¶‹íRUJ!Î)¯žÝÃ9¹>OEwv[i1jœ]ÔÕM‚E’Xâ´–.-¼—=­oaÑQi;¼Zzçð&k¨êÁ±†M.à.C	\0ßöHð<Öìµ-»Øx1Hï¤U,Ša¡j\Zâ5-¿´s»M¬šs%\rwf¶ŸG_œŒm†¶äsêƒ~DDD@DDD@DDD@DD-Þi8–%E…´ž<z›;6†ß°Ù=¯j©)†ÇIÚ<Jc¯­…ž-iþéÞôÈ£\rhk@h\0\0 €ûDA¯íVÙPáa¾•(Ï¾F†¹î6ëfƒa~§EØŸž’ž¥¦H½®[9½£VEÃšAè=Ê¶TóÐâqblõpð\r<ìŒf’1˜¸JÆõçcäokÜplÕpÅ1ÏL§ŽVSCFaÏ#3Hù3e\0ó°¿»Ä\\6Í—Øú/?¢Fc/Ëœ—=ä†ÞÂî&ÃSË½gÑ»{tŽ¡ž—€ðÈØç·­®üÁtïr¨¬ÞaÂ«ªŠ×&¹¿¿ÎÃ÷šÔªJ†Ë^Ã™¯hsOxp¸>â¹V›º\Zþ>N~€t^ÈžZ?²\Z·$D@DDD@DDD@E‰Ú]¢¦Ã`3T»+of«ÞëhÆ§ðS`. û[¼ÚêòæÆãI 27ò?nAcìh.ø¶ÔPQ›TTÁ¾‹žÜÿ\0pß‚l¦ßA‡Ö×?…5W¤ÔFbËrÑ$„hâ¹Å‚›[ÿ\0Õõ® ‚	j6 Ž ŽEvøàgÕØ‡ÜoæŸú»ûüÖ­±ûÞžœëšê˜Æ‚FÛŒÑûWÒO;ƒæ«¸ÕÐ×‹ÓO†×,¾Yœn³‡¹¥üp3êìCî7óOŽ}]ˆ}Æþjœˆ&?ú»ûüÓãŸWbq¿š§.–\'ŠÓÒ³=D±ÀÞù\Z<…ùŸ\0‚}ñÀÏ«±¸ßÍuëwÉ\0akèkc£8 Ü[«µæ¿;S¾hX0øÌîåÅ9‘Óg?Û”x•!ÆqššÙLµ2¾gžW:4}´hÑàQwS¼\n,6Ñª¸¬\"G<<0½–pn›º÷Õê¬8>7KZÌôÓG;zäp$x8sið6^J]Š\nÙiäA#árs\r—ˆð: õê)Îë·†ìHšzPÖgn• €M½W‹ŽF÷@£ \"\"\" \"\"\" ’oë–FAP$`Š ö9Žuœ_!m‹¬lÓ§@/Êê*·=êmC±\nç5§ä s£ˆt.Ï—Ì‘`{€ï+LE0zŽG¨ñˆ3ø~Úâ”à«\'\0ts„ƒÿ\0p9e[½L`qÚ|âŠÿ\0ò­,”A³Öï›GUÊÑÜÀÈÿ\04Åk•>Gg‘Î‘ßIî.w½Ú®4@DDDADÜMuÿ\0.^Ú‡4²ÄŽÍk°‹\\<¡&ÇQÎ×ô\nñØ6Ô ‚4 ƒpAŠô¶ì6˜âT\r|†óFxSx¹ ÿ\0´ÒÑr\" \"\"\" .Ž9T`¥žQÎ8dxóc¿ú]åÁ]+Ý%²5®sï¨Ê\ZI¿²è<€Á`:è¾¯Ü²‡¸¸4FKƒ[É¡ÆùG€½½‹ðŠ\"ç¢¤’yYMÏ$Žk;Üãaä;ÏAªô%ìé#Ã_Hí_(i–`;fFæ¹·äÖ¸hÞëß™AçD“²lîÉ\0†Ä\\|5T0|\n­É_Q%s£v¬†\"i”¤¼ç·V¶ýÆü•Æš**ÖG;YCKAåvž‹‹wtDI·7±‘þ›UÉ†¹°1ãç—4´ÈZy³) _ïÐ›Æ·-K,…ÔÓ>•¤Ü°·ˆÑû—p xUDõ§Ýƒ%!.ªaÎ!\0Ë¥ŒG£GÑî#S©*>ü¬KÂ4õ[Û\'\rù¯~€\rGˆÑzÙ|²!×ÑKO#¢™ŽŠF›9® ÿ\0ßQÍ!¢•ñÉ#çG^+€¸fr@.îÇ^JÉ·[E³µ“pª¸¯|d°Ï]Ø±Õ¹Û«À=\\.·‘Ùº\Z*\\”€>)Fw=ÄIÅn„žDeä9YåÅñn›ÓÙ†Uƒµ<ÁÎˆ}3Eä.ð6è´´jþ´ò6*·9®¹ÑsZüÖïÐµEW wŠ™ðÓ‰&	]¿Ðphöf#Ø‚ˆˆˆ‚\" \"\"Àíæo‚ëróôJ‹[Ÿè\\³ËŽxšö¹®kk‡x\"Ä{xùÉŽl=u-Y¦dÏÚ´/cæÈÂ{.ÌV›Z÷\"Æý5X*ÚWC+â}³F÷1Ö7˜âÓc×PQ[æãpöË‰—»^/{yÅ±ßî¹Þõè%	ÜŒµ\0¸Py›H­åÙ÷«²#Èøí$´õ3G8-‘²?=ù’\\N\'|àzÝ_w-G,8S8 ·<’I<ò8‹w‡ï-º·¦Ít°Ã+›ó\\ö5Äy4]À}DD×Ä#s¢‘¬9^XàÓÜâÒ÷Ùv\'…Ð¹Ì”ÞÃ•ív…®ÁºôÖì(æƒ\n¦dÀµùì®Ðµ¯{œÖyÒ4è³sáÒH%|0¾Aó^æ4¼[¹Ä]wN·ëH×áaäkñ9¿nñŸÁÿ\0‚óúô–ø)Œ˜5HÛÂ±“ÆãýW›P¿ú?S8RÔÈ~kæk[ã’=Oö­ìQ¼\r–²vAsÈó`;‡W»¹ jJõ6Ìà‘aô±ÓÅóXÛÕÎ:¹çÄ¸’ƒ(ˆˆˆ€ˆˆˆƒå——w‡‡º›ªc…³Jé[âÉIx#ÞG˜+ÔkXÛM‡¥ÅƒxÙã‘š6Hò‡e:–œÀ‚<Æˆ û;ƒ×2™Ø%Á¦˜-s”09Ï·¬Á˜5Ã¸žâ¯{µÐb´áì³$hhÉ¹c¼;Úz;ù…‘Ùì\n\nfSÀcoÏRâãrç¤’§;[»êš9ý;&7‚Kàm‡>|0tsOXÏ³[”Sm’ÞÅ4äC\\=\npr¸ºâ\"îë»XÏì¿•ù•GŽF¸Ò ƒpGx=P~‘hÛÈÙÊú†	°ú‰â•‚Î‰²¹Œ•¿³­šñì¯B¡õÛIŠS¼²jšÈ^9¶I%c½Î(=R‹Ï›†ãØ›ÛjšØ ¿ngÉ ÿ\0V	í»ºÚwžûÝ0†6Æ÷†´½Åï6êçI=è;á6X¡Új<=™ªfl}ÍùÒ;÷X;GÜ¥˜ŽÑb{HóOA©©/idqµÇt\Z»eÉÒæÄØ96ói&Æê[†a½¸ó^iŒ~C}]Ò&›\\úÎ°3JYE3¦µŽ3ðÄvígÍ—\'¿ù/MìfÈSaPäˆf{¬e‘ÀfyÉ££z~+&Ì\Z™³šBr,eoŽVÍk ëìÆÊ*Xa¥ÑÄÆ9à¸´joÌ‹Ü¬º\"\" \"\"\" \"\"\" .½}lTñºYžØ£`»œâ\0Ä®w8s Q9ä¨Úª÷FÇ:,>\\=a{Û‘‘ö6¿Ín¼ô!†ÞFÖSâ¥Æ–“³Rú§4‰2—\0‡Íi$ŸS}\0+Ÿb¶cô6UaÕ&¹Î´Nyh!®#0kšèÍÈ<íæ±ûo‰TÁOð{¨†fÌÒÏ70ng»IMìâàu h·a±Z	é#Ž†F½‘FÆeù¯nVÛaÔn}|PhMÛ\r¦¤Táüp:²7|ož?øvö«?õ0‰	æaüéÊÞ÷‰´oÃ(<MkäÌÆ35ò‚ólÎR\0¾M–·º}»ªÄ¤š\Z Ç9Œ5ñ·(±vR×‘}Ax÷ Å·z8´ÚA„ÈB[Pð<íGâ¿$mn!¡É@ÃÖì‹Ní’Áeö¿{ÐV:”î¨&vpË²°e9ˆs-×OAÃëQrÆnÉ×°ò»^Ðà}Åš¶£gê0ìA±Íjé#f8M˜‘ö³»´µîtï²°nóoèk\ZÚqhfhÊØt6æ\" ÚÇ²@:5®oæX¦|rÆÚ¸d6h7xaí‡9Yìe¯nfËê#´ÜYà¤4SÆÖ¾9Ãw¬n9@¸¸{I\"Âè.¨§Û©Û+XúZ»Š¸4qvŽ{\Zr—8}6»²ï0zéA@DDD@DDD@DDDAŠÚ¨e’‚©ÜÊêy›¹çtN\r·ì´-Â×AèrB,Ù›+Ÿ#N„µÁ¡®à[/!T”gz˜0é†%C7£Ìd\r‘¶¯x$¼—±ÌÒ<ûî¬XAÀÔ:Ç:@ðÜ­i$tä\nl^ÅÏ‹zMM4¿†ÈD!¡àv‰3\\CA`¸¿>Z.}¤ÞmeMé* I#YšFænxÉ#†á¦`-pâ,J¨ìè¨0¨G¤Såk3Êñ#rçiæäô${Ki©qS‡\rÄ§sxåÀžÓƒFc”g¸´èãÉ·<î\r»\0ÙÊJ¹´±6ãwZåÎ·+¹Ä“e,À+™Šm1«‹³=·vs¢i×é’sU‡ÒâúlûÍüÐM÷¥»–U6jÊ|Â¤49ìÉ(`\0žWÈ4±± ©lû±} k ŽaIKOq½ÑækNVØhÒÜ@¾[†ì½»|rÃ$|Fìs/˜i™¤_ŸŠ”n_†‹CTæÁ/¹¥Ä¸††9™Ž——àéÉ3w=JÜ^¢’¾1<Ñ\\Ä_rÇ8]Å§GÇ1Â÷ÐvcE€\0@h±Fw©4t8µ!ØçÜ	X×4¸†hMõ¢{Û\0¿8öõjkÜÚ\\2\'@éNA$Ž`Þÿ\04_$zk˜¸ø\0uAÏ¬;`=‡4µâ£/+Šgf¿Û_ö¼Ui[µØ˜ðÈ‹ÜæÍS ùY\ZnÐ/~	Ô‹êO2uÓ@7TD@DDD@DDD@DDæJ>‚¦º³Ó¦¨…Üy8|Ì¯ÊÉ›5˜ã \r^›P]‚Ùÿ\0N©ÄŒo0TÃ8’šQÍãO¡³`Þ¡Xl¶úÖ)ÿ\0	\'ùuóýÀoJÅ/ßè’_ÿ\0Ž¬{%´f±¯Žfð*á!µ1‡¤ŒúQ»˜>ÅÚœny§~mPáz‰¹¶’#ëžù\\/‘¾Ó`‚PÝ›Ùé.f\"ü§´+”÷ ÐèWëýÙÿ\0Ö1?ø7ÿ\0—Tzý”v#ªÂÚç>e¨„›š¸¯w³ƒw5ÞÏ·àøÌtí¨…áÑ9¹:ZÜÃ¾‰\Z‚+ ƒÉ²{<ÐKª±&ÌšG\0<É§Ñ~£ÙœÍµx›šyJòð\"*H.ÇæêÜ.\'øM‘‡û†‘öˆ÷|•®À&/mÝ…Êÿ\0”h¹ô9Hßõ<ÇªMÇq	ËvSª±AåI\'ùuÅY³Xc{…V$Hi#=+ÚÒm q0ÛªôMtQÄf{ØØšÜåäŒ¡¶¾kòµ”þ¹•ärM }>o|¶J§5¤¶iz¶ @-o^g¢=À“ðt£ ©u‡Ax£&ÞÕMSèþðéÚ÷Q*r\" \"\"\" \"\"\" \"\"„nêzÖVâ>†ê&1Ïéf@ãMl™=·¿‚»©FÓî—\rkj*åž¥ŒYÞÑÂ s{ƒsFO}¹ åÅ0¼^zˆê[Q„AQ-DùsÎ9mõ\ZK“gh1ZË\"—sœâùd’J‡K+ÝÍïv—?€QýÙ„êÛNÐÖ]’=Î°9CXmÓQœ°}¥—Ø”Ã*ÄÌ¯Ô3Dü¹K¡cHÔòŒ=¦¹®^¡{ásúÜïÔ~kU­ÙLNS8mV5.kê!ŠY›ËOkÕ.fq£²‘uÒø¶Ùß¬Çñi?ÀŸÛ;õ˜þ-\'øntÕÌLk#~Æ4µ­u@\0`\0¿%öz¬fF–¾L	íp-sKª ‹EõKø¶Ùß¬Çñi?ÀŸû;õ˜þ-\'øvãÙK$q>«–š)‘Ó>YŒ7½ÚÇvs=:µ¥Öó[#[Œð$“ËÃx!Ž¨Í—!¸n¶½¹)nÈìX¬µœæÃ]Àsƒ.ù	<0û6Ö!¤›\0EÂÃl¦\rMU[9 lŽ1æf@æInÈ9šF®³|Ü‚Á¸üº_ö“ýÔJœ°;²ÐáTæ]$Ï/s¤-.$€=P\0hè³Èˆ€ˆˆˆ€ˆˆˆ€ˆˆ\nm¿Lgƒ@Ø\Zlê‰\06:ðã³Ü|‰Èß´U%yË|x¹ªÅuàµ°ÆÞ®{€q°ñs€û!×¹\Z(éi*q	Èš°9Ü„qvžïk´ûWŸ“h±e ƒÑá.ùId\'-ú¼¦F¼6ù’/u¿í¾ÍKÎ6–\0^alN”7›Ã#€ûW}¼d7«†PÑAv¹Œü1kŸnÓî^	ÌnuPg(·3†¶0%}D¯õœ	ðh\ZŸ2´ïl…. 4¢O”gvoÑˆím4ùÅo_ØgõUv/úª½}µ¥Æ²³†%â†ñ2ZÙ\\~‰AF¦Ýö5ÄT\\´Òž¢ýËRÛMÐËN´Õ\Z˜n+GRÂ4“÷t=ÙŽ‹a¤ßN\ZÈØÓUÚÖƒfÅk†§Ê®oŽÜ3úª¿»ýT»—ÆhŸLêx#4ó0—ÊÇ8¸¼›#IÔ\0±ùºâg[ÕÁM(÷Gv6kTÄE»/ï·ˆp.ûMYÍ”«n%´ª¡ðÀÖ¹ÓÞÂ÷…ì%Á¤€\\òÎÍý\\Þ[vúðS>*/%+Äž<3`ñä;/?¸ƒkÙiµôPÔ]ìÀõ^;/o±À¬Âî}E 7oéâë—PÇ´÷saiY§a9‹Z]ßa}<W* ùeÑvHMÍ<ž&ÏÉwÑ?à:OÕéÿ\0‡äŸÒ~¯Oü8ÿ\0%Dÿ\0€é?W§þ’|Iú½?ð£ü–ApRÑÅ\"620MÈcCA=úÌá~z¯¨ƒŠ*v3æµ­ò\0%Êˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆ?ÿÙ'),(4,4,'avatar','Unknown-1.jpeg','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	\Z\Z(#\Z /\"$\'),,815066&-,,	\n\n\r\Z,$,,,,,,,,,,,,,,,,,,,,,,,,,,,,)),,,,,,,,,,,,,,,,,,,,ÿÀ\0\0Â\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0I\0	\0\0\0!1\"AQa#2q3B‘¡$Rb4CScs±ÑÒ5rƒ“¢á%T‚’”£´ÁÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0!1AÿÚ\0\0\0?\0î4¥(¥(¥(¥(¥(¥(¥(¥(¥FØu¬ÓMoªÓ@@••Î>~G8$gƒÍ•)J)J)J)J)J)J)J)J)_€äñAö•\rqÖšlgkÞZ©Æpf@|âùZØÓúŠÎã÷KþÎElÿ\0	ùPHÒ” T,}afnÞÄÊá6úÓ»r«\0„ðç8óâ¦«šK{eûKQ¶¼…åY\Z	T`¢;xc/„RÀîp(÷ö«ƒ¥×.ê-m÷ËNò5Ó´7PMÙ–?´ÍÂ0Ê¿¤¿ð—nHão¥/¬Î¬ÊIŒ_d—¹9\në-¾Ï»¸9_Cê8÷©ßˆÖìöƒ\nÅhšRƒs$a½rª€Kàñ‘â®v7º%œéö­#¼ŽÐDÌîrÍ½Cäœœž~u7\\ÖÎæÂÞK%Ò®šV’hãxVå®Å°«»#³vö*†Ü¡ßŽ•Y\nR”\nR”\nR”\nR”\nR”\nVþ¯oóE|wS?–â3Y-5eŠD`£>¤ø4¥Rúû¨æIm´Ûf)=ãe=¨×ñÈ¿ãÇòÁ?*ºï\\Iöƒa§Ä.n€BNØ`ã30ç>û?î­ø^n[¹ªÝÍvÐ©0[¯äˆrqóÈÏ½Zzs¦íì`[®Õ³YØù‘Ïñ1ùÿ\0.8©J¢¹Ã!F¯s±ñ,	¬7¿ôyF\rœ+ç˜Á„óõŒ©«M*QG^“ÔlT>í¦G¦ÖïÖ¤áI†>€äxÏŒÔŸJuÄ7…¢ek{¸ø–ÚNÄ¿ßOñ§ÌU–ª?úInmÚâ c½íæOK‚ ¶ÌŒe[•ÁãÕT[«™Ûh]býšê[c÷xHØFò#E$Ëè/¤yÎHðmÝÔn°‚èãs§¬ï©(ÿ\0Ü¤þ¢·u^´¹*n †b‡*dEr=øÈñôñAÊ´Ùÿ\0o»{ÛÙ…bZÞ)ð.×–\"¨ïŒ.Þ>¾sÅÛáõÃ1ºÈòÙ,ª-BÌÄvÔÈªïËÄ®v«ø<œT–­Ôv6\nœ#ÛB›¤oHÐp>§ëQ_m×®è¡´³ÙnO+|‰¨1í’h-±YF¤²¢)9É\n9Ær@÷ÀþB³Us¦z­§’KK˜Ä€^0w+©àOyhÏ×N\rXê)J)J)J)JQú³Y¼¸¼M*ÅÌM°Kur\0&ÉÂ¢güã{{Ž÷\"ñT‡C¹>©tq¹ï¤‹>ÛuXÔË\'ùÐIi?tØü&“’ÓN¢iXŸ%Æ–x¾øe¥JÁþÊ‘8ððfÝ‡9Îb+Î}ÎjÑJ´S¤é½JÔ3XÞ4ëÉ÷¹”rBÎ‘xànÜ>uP~£–ç]³ûE¼–¯\ZlíËŽ\\³—1¸âUÛ·cù×`­-_E·ºˆÃq\ZÉyVÔ b0E(Ý¥UÆ™¨ZìÒ}ªŸ¸¸|J¹$ø;€ùJ	ÿ\0ŠÕ—â	ÚxE¤˜åÏØByôÆêdñä0óúT*TVZ„ž¦¼…Pò;0yþô²8\'ê+,š=Ñmô ûf(ýGlüÅÕ|\"«\Z…ÝÕ /5õ§oßÇÚ?\\2HÏ°ÙZºo[Ý]¶ÖeÎxœ¹ŽÔŒPy#Y‘ác>|ãš°D|\'¼[u¿´öÖÚá˜o8\nŽ¼¶IÀ£v>ÃuKKÔ—WíÛÓ0g_8Êñåm‘‡Þ·¶óè>k_GøYvk‹×¼î$xP­²œn\'ºC;`ÈOŸyŽ%P@\n\0\0€\0à\0MúI[ZxÕži?{<‡¹,Ÿö˜û}*j”¨)ÿ\0¡ì,Z¤k÷–n­!Qêhìž3ó[xùÍ[¢0A\0ƒók§b³Ã$/ødGFàJžþõðîõ¥Ó-™ÎYS¶ÇÎL,Ð“ú”ÏëTXéJT\nR”\nR”\nR”\n¡ü/Sš¾\0ßÌË” 8? _*´Yë¹ñ£?ï­¿Ý˜›ú\ZÅ)J)JcžÝJ:«)ò¬ùƒÁ¬” ƒ~‰±ß½bí1òay-ýóâQçšøýnÙ\r%ÙËœpsÞø©ÚRˆ­7¥¬íÛ|PF®|¾79ç<»e<ù©ZRJRJRU_†ŠEˆOx·îaÏ×9«õÚÅÊç\nŠÎÇè ±óôðÞºm»7™U§8ÿ\0^í>?”•E–¡º‡ª ³í÷Cžã@ 6Òà1,1?#Rï H™ÅRí> ž9¡–8åš`Æ¾s/s	,…ÊÈ‹Ý8%r6®=Í0Z´C¿S…*%)ò7(`×šÜ¥*)J)JV>!h\\Únƒü¦ÝÒâßï;?&\\¯ŸqVzPEt¿PG{kÔ|	¾êÃ‡CõV~•+T;×\ZMÿ\0±¾uãÄ7ñ1ö	 áÍr~·Ê)^]À’\0’xôª÷«­’SžqŒÅ÷YsþLüìµOøƒÔI§OuI¶Ã³+%És±_8ÊAÎáSœ…#u‹¦º~ÞÛLŠ\rÂ4(+«v÷³íg%¼€Ìvù\0|UƒÚj\Z´§ÑkºgÌó=\r ý;Ÿñ¨ÔÚ¶ç%­6,ÒDÂìçµ\"¡3~\'U˜ ÷1Î[í£ë÷1—·utVdÊøçåT>¬Ðîlä¹»‡ÛO±ä„Ê¬¡Ã†Pc;6îv>Æ ¨$0ZcMAãîCui `\nn·p§î“ç’?Lž8­VêB.m¡“¸áÛMêc´±Äs*ðY¯€=ëè¿$…w¥ÓF	$—Fq&\0(ãos<¶%$óê8\0d¸ëK™.c¸¸žH¡‘$X\'hŒ°•Y{\0oU%ˆ]ùÈ\nNsŠ°v]7®lå*…Ú©:˜‰*ÅJ©>‡!†o`®KÚêebchôì¯lÇ(·ŒH—‘T¹e]ÞaØ‚—¾‡šÐ,{rÜÄ¥‰fÛ\rÄ±&IäˆOœTÜô¥`½½ŽÚYYQfc€\0òI¨*¿.YíÒÂ\"{ÙÚ2Dy\r<„ub\'üU¹­K,Oggnëo›Ó¸T9(ÁH?˜däƒÄgŠÒé-)î._W¹R¯\"öícaƒ\0’‡´’YÏ =È«µ£GsmË)]N7S”‘³úA*Ž{PÍ\"ß‹-BrêCË¼4hÀmŒÄ°Ê±(\'ØÛ³Œù•éÞŽ²¸‰Ûº²BÎÍö{Y]-¢l( !‹q“œ’B)5£¹q¥;Å|w,óe\'Š.Ü~¾ì’LçÔ{ m£ü1.Ò}XÑ}t4ë$W°Âc…!»¾–1u¥dhŠDØê¨ä3z¸qžET_zJRauî4¢9ç‰]ŽæÛŒ¡Y,Ww“·$“ÍMÖ–¦EopÃû´\\)ÎâsÉb}ËXŸrMnÖT¥)@¥)@¥)A«ªipÜÂðNãme>ãýàƒÈ#‘€j™ÓÚ„š\\«¦Þ9hŠØÜ±È#ÚÖSü2/ð“Ã1Š¾Ö®§¥ÃsC<k$l0ÊÃ ÿ\0À ŽGµÕs¾¹×.ï\ZëIÓ¢We„‹™]Š*w+cñHËúsÏ½o<·šLaBMh‰}Ûî BizŠAõd6ã\'_á&¯op—Ï	Ékë‰pÃmæ2ÃÈAÿ\0tl\n0êúô3Úé[ÑW¿-«í8Ú¸1Ç$x>zWn<gòªÇÝzx¤¶²‹tp,bF)•±’5OÚ¨Ä¯Ò¬]W¢ªj6qO‘k-ÓÉ‚Êb•“lÀ-:+®A»(ö®=SÓ_iPÈ\"2/fA$.»+*w\0FT‚¬ƒ‚ÀÑËèù®Éß¸²]ßgÚÓF‚T‡D# \0r¬¤àc#ëÏqªçKôºZ¶æ%í…Ä1ö K)üËrÌIfÚ¹À\0	ÛÎçm»[;˜;wçn}‹mç—þµ4{¨\0c9Æ=þuÀ¿éÌoâÜÄ–ÃÊ­#Ì2H4Sƒçf+¸Z¥ÊÓÍ RNØŒDƒœ™XmÆxÇëX5f!²ñÊ2±Ë$†!ÁY2£†p0A¦)Ózìz3Ìë.-n­®\"f8\"=ÅYFpBà8À<÷~G›¦“os¥ý–êIÅy\"-Ü.IMpY„ÉÎo!Xx÷®šM ·0\\Ÿ´—`ó<‹ûÇ¬®HØ€(àl¨‹ÿ\0yb¶‰ƒ5ÌöñÂ=÷	BÃä©Éð3õ«EŸ]êk8Œ÷2,h=Ï’º rÍô[³Ó®u9#¹»F·´ƒÃhØß#”–äx\0pD^Ç“ò­íáý¼2‹™ž[»‘âk†ÞWýšþÇä2>uh¨>W™%U˜€’N\0üÉ­_·³®.\"/ó\'ÙTy,}€ª¿MÜkR­B6†Ìc³jI ‘$Üú3Ç¥pO8!×c=ëÒ­Úé-ÖiBwc&Hž®AqµÎY~˜àó\"Ôâ	®¡]¬¯gÅÐ )“Ð,`ÉŒm\0ìRÎÙÆâLæ‹yÏfmˆ·¹2Ih!Ž-–êdFØ]Ìhä¹ó€Ú/C=¤ñÍg*¼Á—$q¼¥s‚*¥Uù ø8«Ð’Ñôáooº–aifòB(\\Ÿ©ÅnU?ážµ$¶ò[Îåç´• v`Êî«ÌR2¸!Ç#¤ûÕÂ²¥(¥(Wˆÿ\0nM=W˜ÈÉ\'  Œ*3ïõrÊvŒãœçÀ6Š¬è]Ö÷·†rýðAM¤œi³3¶J+l]¡\0Qàžh,Ôª§Ä\rZú(BY@ò¼¢E.›‰ŒmSƒ–-–ÂýÙŒŠ›Ð4¶¶·H\ZY&eÝ™d9v%™‰cúãô Û’ê5eFuÙÚ¤€N1œ\'>uUê—ž9ÿ\0héÝµ¹Ù¶XXK•Ý»ÃðÈ=ŸòŠ¨ü|Òm½äˆÒE\ZÏ;J¼©÷2ds´H£ Ÿ—Ì×<nâIc’kÛhþÄ“ª¤Ír³ô#3!\n‘¹ÈúxóTv¾/Z1h$¶ºh}V«}÷(Ýé1åO·\'È©®‰ëû]J2Ñ’¯ï!r;‰õÇºü˜CÅs+Ð£’–æCÙÜna4±âC%¾0#ÚA;\\ž0Øp*ÊÂÚF±ÇPy£·Ü’Pc>—Ÿ±ª±ÜTíàp7UƒôsF°çãåÈÿ\0}{¯Î}9ñ«WL,Ñ¦7¼ªÙ\nH\0³Cõ*»¶ž]sæ¬W_.LN^Ù\"Úû$)u\ZÎ„ØåL“|©~uj­{ËˆãS$®©\Zƒ¸¹UNqËñòóïùW¾øÉ</!µ’æášB3t±öâô€4·8v%p)Éc%ÒÓ­íÜ1ksä•R{HÃ¯ÙòW˜ä\0Ä£äÙõåö~¤Ô®\nÉ¦ÛÀöÃŽåÃ´f_ñÂdF1Ì=YÊŒŸZIÝ5ÐÔ5)#’á–¢Ïfn®îYØpXþ_,[À¯´\nƒêîªŽÂ‘‘äy$X¢D,ïªXúTy5—¨zªÚÍ™‰vâ8o–Cœ,sús\\ªëX¼Õ¯#¶îÂ§~õ·VÅn±”c-ÉS÷Ó€±°$EAm]RU¿ÕdÝÍºÇ\0ýÒ¶72ðZgÀ‘€kÍ®§=ôq4WSBe@n±Ä…v±=§drä(mÌe½­\r:	 ¼{mE\ZîgÛvŒ\0—[žès€Ñ’VnÒ\n€Ø-·Ô1ÝÝOHcºDIXÂÇ$P;ÊºÊ¤ò€®§pàrHô5ìcY4ë^å¿uEÍÑË³ Évt˜#¸@Oçºù­-\'šòvû8‘e¸°ì]™œí 1•\0°Çv6ÔOõµÌúm¬R]N­\"¢0DŽ²ÊÒ¦Õ1ªºŒ( aJâÛcÑ2NÉ>«(¹•ä…FÛhÍSÌŒ9¤ÏŸ‚¤ï§»Öd¿‚¢±’Ô!iAA3#’¢þDã>Ùþõtªø}¬©JRJU{â\rÅÄzeÓÛ%X˜©_ /#›ˆ#‘Š	-sYŠÒÞK™O¢5ÉÇ’|*ñ3£êEP\'ø‡«ÀŸjº² pV8ÄÀMÜäª¶î	;Xm\06ApLø[\n[›[™¤ûÈ$¸ûÝñÎÒF|‚DˆÏðãÎ+^ç¤¿±]žQj.ÞpŒ©4’4r.w©]¥ãm¨$òÄîÚ,v_´ÿ\0g\rI¯ÏÛiÞ{oíÛ½jà°bAfóZÖ}©Ê#¾H :{„îl~ü°€Þ¶*¡›iÁU ûang¾“R}.öëû<Q¹‰U;,FT‡<¼b@„y$)Ã\0,pôÝ…ËÜiñ3Ekjm˜Ç1ì˜I4¬û™wd¨AÇàÕÚŸUh×ˆÖrÏ‘Í„<·l–åTJÍù\0€pÀ5Í:£ ¦ÒQš+†’Þà5 ‰÷ˆ•˜¢íueù F>|äÕ¢ûªôétAo¶2Ïi-£ÆG±SÊ*3w¶\0Æìò3¥¬jéuz’[Ý¶}¨mvâyA—Ô­…$¢ÞÛ”osƒ‚@W‡]ËYµÄñG2Ã$3	l&Y#WHØ±Ã\'® 7.1¸¼‘P¶w3Ým;—-n.È.¿g·kr7o8\"G¶¿o9ÏF}.5PÒÚ÷e¥•XZú°&ûÀB¦I0ù^Ù\'ÒJï«%†L-Ê³Â6ÍwJîñ3Ü\"E2‘Tye` ïÔ@Ç¢ÛØý™áfy$,²ÀNøÞ\"ÌŒ»\n“•Œ\"#7ïƒA¶NÇáæ³pTÃ\n[Û$ŒðÇtW…ÞÎ£b†‘@,}Çóîoúa§)ªÞæIJµ\rÌ‘d²ÈÅ‹#îÎI%FMtz”pmKá–±èÅnð,Œï—jmÄ·1¦p8\0“ø|V^œ‚;‘>Ÿ!šÞgÉ‰!W’$¸œ+7¥À*« e$Ï¨o\n{¥@uWHExªà˜ncæ„âHÏÐÄ§ÁSÁÉüéUÒŸ­˜-½ÌÀL»@™”Çá‹ä€Ûio©Xâ±k»¢Óv¾#]2³Â¬|Ç\n¨Ýq69€ŽrN3\\é4û›¹Œ7®¬ñ;Àcƒ,f£•—ÐÀ´;ã,#@¡HpÏZmtÅTB\n„´õÇóû:}s¶rL0 ÷FRJ«~œº¼–h-å\rp±¡ºº–BfÉÅ¹xÃlÊ«M±@õ3“…¾ÅÓÖ“[Eqeoï÷aB£+Âæ9m“ñ+xÎI;¾F«\rõˆŽ­qRÛFÎ7+áàq\Z®èÇlŸ‚<¢ð85ÕÔRxUbx\0y,Çú’jQÏ¾+A¾ãLE•b‘ç•Ù;€nÖ\\€Q˜¢OñŠß‡¥uƒ¶òá ¶\nZÙe`\0wJÊ)Çá\\pqž9Å˜šž£ò>m-€XÈäO\"³;2Ÿôhû9‰£ù.MîƒBÏE†Ž8bŽ2HDPªr¬¼ñõÎ|œVý)P)JP)JP*¬ÿ\0Ù[öx§$IÂxb»ˆ]Ã9¸àÔåUuþ¢¿ïµ¶Ÿm¯\Z£Ë$ÏÛEînÚŠ,Ä)$Ž:\n-ÃíUm6a¬}g\\ƒÞoãeXceŒeeb1‘ÅGºêôÝM•-n\\GÊŸiŒ°dô¬«p&EÉfåsíŽ.Çâ=Õ¯ýg§Í\nÌðh‡Î2ÛyAäàäÿ\0:‹êmkJÕ/tøÖx8L—29` *ªíˆî#–}¤©äÎEhTz·N¸·¹—M0ŠæXWlsw®±#h×µ°ª Ë¥jÇñ/D¸Š(lí%uiRY.æw Ž$iç`7†QÁÁðA$cYu,W\Z„Omý¥m»,ïÆån¢œF¤È;„F„úäãÜíßëö·Ô›KŠ	»¢âfGdlDsNŽ9Ž3‚}¨4ú¡%¿‰nµœÛ² †Õœ\rÈ miŒh›— \\y¾jÚ·Õ¥‚ÑeNäÉ6åbD-¾ÖY¶‘·*ž9õ‘ŒŽ½\Z\0\0\0\0\0\0€*“ñ\"ÌD`Õ6î¥–áB†/o0íÊ9ó·;€ñäÔ£î•ŽÂ8¤ºš[<}£yX¤xŠìËÆp®dˆAÀã’DMö‘\rÊÃÊ&-fèˆ­ºÒ!FäÊ”#hRT’rÄS+•·Hín®×²a˜í’2Œò–´dÅIÁßÄäI M–Ðµ½¬2˜]A7k±™VÄðÄ6>ðTT@hK.’ÑYÈêË¶¬³Æ…ÌYC#…*H–Ý@$7\0ÃµÔ¬ï#•X]eYHe#æà×Ö®“gÛQd=®ÌV–†`©]YKm§NòªøÌ²î8Kh¿b²··Ó6¼1F©/Ú#vÚÙlk=æs¸  ŒsíMÅt½SXŠÜå‹6B\")wrpŠ¼ŸÏÀ÷\"©÷šÌ×k–=«|€J±ebN;JcÃ\\Ê|lîÆpZLm¨éïUŒ!ÞÙêÏäã÷wrDÎ|Z[ƒÉõ‘7§t›\\-Öà»v…#d…¹…$[ÄG¤;˜ÜsÊ\0¥ëö›¯ …Ú;pRá7W‰H%&dtVdm¬-áûµêÄnÚ ´Bú“w1%U[d„rýà\rlÌ˜(…J‘á}Kœ²â»WSÚÄšmÌaU\"ÓŒ*€ª½¦ð c\0{b¸®xmÔRE,æ–hKÆˆÀÆÿ\0…‰{ÚGé88$ïa½‚Fë§-íÚ[%™áh˜]*ÌJ¦Àä	/ÞäPV@~%&µ/-¥¸Ôâ²7Íbg…].L»˜û¢6Îí„&º¯ï¹«\'JuNt³X«ºÁ\'ß³ÜL#pû‘¶\0ÀAbÅ\\¶wnlöRIyykiÉq¥Ã\\I4C1¢F› ·Þ8i=G#’’H&ª:…µºFŠˆ¡Q@UU\0€\0\0’”¬)JRJRJRZ1ian^áXýâ\"ºc‚P¶×Øáˆ#ßå[Ô ëËþÎ›w.â¥`—%J®	÷ÜEQ¬¾IqgT¹´Q²ÚÜ¡ˆ@É<p[óê>jÃñŸ?±®@Ï=‘Žs4cüüqÍY/ìÖæÍáä,Ð²}@t#<ãž~•Ej?ƒ:2£*Ú®YYw3;‘‘ŒÍÁLW=èÍ.Ö=bÁâ ÏÚ¢“ÔJI40\rÏl•Vœú`cž×¢^mâùhÔ°ó†ÀÜ8÷\r‘úW;×•­ÚÚý£hÅ¾§*>à@1Î¢ß¼?Ãœø<þUGR¬w+£#¨e`U”Œ‚ÁR=Á’¢zžúhmÚHv‚\nïb¥ö!`P Û–ÆG\n#‘ÎmÒ9ÅÔhlÐXLe\Z&%&³vf	ÜŒåFâ288£­jÖÅ ·QÈw}š]®î	;IVì3yqœwœ·µe¿¿î«Á¨–pîÎ-»˜î•gÇqË	©\Zm®W¸Ø\"½G!Ò.MìqÆ‰qn8d\nâ8ãP°ÆmÄÌ¹Ï#5¡=Ò+]\rJý#ImmUH€PÜ\'¤É´\0[hU8v~&ôú_ØÍ%¾Ö¸fNKûÈÈ:ü™‡žd:›®¡³k6ycHçvî;ˆNË¸pPŸr2ÿ\0Ö«Ö_;Iy-¥…äérÉØb‹,ËÂÒ1rTìrxÍAbè=ÔZÛ\\¡î»B›d`£he–4P NrªOâ$óV£Uý--ô­>ç™#HcTgvÚ`–Æ~m¸…¨¹~%‰x°¶šä·àvÛm	Ïøæ!ˆü”çÚƒ\'ÄýD‹Agëç[hÇœ	8’LeLçóHÐþÇ+Üé÷“ÝwâU*ë.#–E B?„«+)$8<Õó§úRcqûBþD–ëiX–<ˆmÔùX·rXû¹äø­E›=G´M;¹÷7@Œýqš\r^ŸÓãŽDÒõ{idŽ?ì“SlÑ¯âP²\'”|÷}jwTêÍ3OB’Molg²…wò2Æž®*®üAê»IcíZ³\\^Á,SD¶èóteY£WrR÷¦Iåëwí{7M½¹Ð	DÌ¬g8åKÀr 	ÁóTJ/Æ8Ÿ˜m%eãñÍorq€.IÏ··½Oô÷Ä+;·ìŽäíŠuí»\0pJrUÇý–\'ƒYúªÜ:ÛC…Ú÷P†pDe®ñÆ{_¯|Ö¿R|:Ó¯»¢>Ü,±Ž§Èa·Áùæ§ÏJ£ü&Ö.%µxnÈð2*ÈNKÇ$1Í7×kã\'Ï9«Å@¥)@¥)@¥)AQø±	m&äƒ‚ªŽ=ùIÀ?BF?Z°h—‹5´R§áhÐŸáàñúV—\\[ïÓo\0æÚ|gæ#bè@9úUsá÷TÄ¶ã·0RìˆÏi{³¾ÏYÀ`K(ÊîÆyÆ/‚k¤¯ÇrîØ“º+‰YsÆRWiÄ	‹ôØ3æªZÌ×zÄ—Úd\ZÃ…f–X÷`úBCÒ9WØ±çÀUš!Û¾Þ6…i¤…†yÄ–ñ\\!?÷‘¸\0ÿ\0¥8<àÆüoì÷jÙî­õ×{\'w¯p÷ÀöÇõ>ø –øÔ†êÔ,¾›«sÙ¹CådOIn=›r~UgªOWèW0\\\rWO]ó(so’Ì`qõ¨?	Ç>9ÆÖ°t×S[ß@\'‰Ã«pñ°üQºû0ÿ\0ÔqPA·@fè°u[cBªpŒñò¤¬`B¬FÅð‚¤íºLŒ\0¶`cÊð1“»98ã\'šŸ¥Z ´N‡Ó¬ÙžÚÚ8Ù†\0IÇºå‰Àú\nœÅ}¨.±êAelÒºfôAå¤‘¸DP9<òqàPQõÛ;]Bòê{ÝÒÚZ•¶¶‰YK9¥ †u>Œä\0\'…&«º\'Fi×²˜Öx²Þ…=âp¥YY±µ°ZE/µl\0+^å\rª½‹O$²ªœ•%Dm>Zé†Ó½Ø•1Œp9Ì†¬ÿ\0zjF¹ŽäÅ ‰•‘Ø¨rAjrFB±lØ_pÛñ	ÑÉÄÀóFªÑâ•íÔ«¸Elw¥p¬HEs·ÎíŽªØÝêkI¢¼–ö[›;§·†ã¸æ)Ln\n¦ée¢ç,£np3ã\"G« ¼³“`hä[‡B¸ã\rŠ4–H–2îÊŠ¸&ÒÉœí­>µêÄºÓ,NÖŒ½â)\\á—°ÿ\0œSñŒÿ\0¹V=;«BÉªClXÆ`ªd±b¬¢>x89ß†Fn£ºQy£Þ”+Ü‘á9aöˆ	Do~xöõU-£²eD¶ÛpÌáíW\0øŽ &C)•;ÞCGÃl®§¨Í#YDä¸ƒT³Pù-’EÈuÉ,HUÁ$%\0“Æn…¬076k“ûÉ_Çl\'<{w<Â¥.¤ÚŒß%cü5q778ÜþY/kŒûxÎ?ZÓø…¨vt»ÉÁHúºì_êÂ …ø6„Ø4øÀšgeÁcHí—ò1Ÿ¯ëWº…è½$Úéö¶äa£†0Ãü[AüÄÔÕM\nR”\nR”\nR”&Œ2•> þ¼\Záý+fb²‰pwºÜÛƒ†&VK‰nð6~÷œŸÆr±®æj‘ð±c¾ˆöõÅÿ\0Ì¤CW}V]†î@9ŠêÎFÀÎWm¸v#ŽD{¿úER¦Öîtí[U¸Š>å°6æt˜Ì†KŒYü@ûql¸‰§–î NÉèei% ²A>– |ƒôªŒ×Kµ9<Ë§X¾å>KZ±lcøyþµD¼?^e&2cŒ¥Ì 8eÏ§ËëU{ËÛ¡p×v±j]·âh4×HfÉÈ$“œŸ#v3Îy5Ò¾ÄFœ™òfº\'åŸ´Ê>™ù«uAÎt¯‰Z‚B¯¥]§ÍàNàã9fˆtäÿ\0Q[ñü\\³;~âû-á~Ë&xàŽ8$–jïJƒžë?îÖì\Ztè¥£E–ïl®#V(	v˜xÇ?CPÓ¯þÑ%ÌòEs21Ur%AÒ¨{¿L\0JHîIøˆ`9«gÅ9î.?÷lT›y.™˜dÉØu)~ÛË\0Iö\0|ê;£ìŸSG¹À79%šóDÎœÂr5\'ð«	*X’Ù¬]-ÝŽR’ÈáÜ@ëh³Ou\"Ç“!m!AÆë¦àšµü;ê)DÑÂ¯ÜÕÁ·\"3ÂU@ÌjQJìÀÛ–Ž{akssQH#Iadáâ\"Ê>çc V_X{«ºzæ`ë7¸b8ÖÙ¼n;­Û9Ÿj3äW|€¥T@[tÕ­Ó™n§Ž…º•®\ZBË1PØXb~à½£i[¾`T§$ê}µíýŠŸde˜vŒ‘È~Òç—-é’à\n)ä`Y­®íE¨L«â®x‚(žëœHÀÉ\'r\0…ÅGô×Ov¡ìÌ#½Ì‡ŒG˜ÄGŸã¼`ÑãŒä1èº^@WïKÊâ¸„¬–?h‹‹ÚÜøÚ.E£YÒÅÌÐØiàZÅg\'Úe¹\n\n«¯r0ˆ­Ã¾íùfàvÏ$©rÔ:b	ÈŠ‘LÇÕ2\"‰H<8Œ†dÊîòãœo¤“o:@Š“v@\\.Ècu¶p…RVŽXñ““(ŒÑ4iâîXá‰1î´‰‰OácÈÆáêÇ° |kõ‡Oë’ÚIrÚí£bip’$…W,c9ÛQ|ûWF±ÜN±£Hä*ª–bx\0’OÐQZ;Ô1^CÝŒ:Ì‹±ãuüQ¸öa‘üÅJUGá»´°ÏxWjÞ\\É<`Œ7ojEo<‘ï8õUº R” R” R” \Z¥ü5‹\r©Ÿž§wþèÿ\0ãWJ«t[>§‚/KÞÜƒÇ¹ÁÍ]\Zõ³0HØ©{·\'ÛrNaáËlco¯2Xfý—~ò…V}6Á¶‚@C*#d\r ¸BáGÊ<×p¨1ôÍµÅôÖjlàíÉ<C;gš_¼E|ÿ\0šUX Âå×Œ\Z1|3ë+Ó“»uo÷n+ÊŠFû™]xfÎ`GçV–ë0y¾³ÿ\0î\"ÿ\0š¾Ž‰Ó?ø+Oüÿ\0å¯c£ôáâÎ×ÿ\0?ùh)ýmñz+^ßÙ$³¹¾\'ÜWj–Qˆóø°FIý9GÑþ(ê¦kÙÐ:Üå„¢úq@ý”î;Ôÿ\0Ïa×ºJ+‹u¶R!ˆ0b‰\Zm`¤°B¸ñ»\rÆ9QT>œøM,*ßáaRÑÆ‘…Às™7Ì©È\r–løË^ž‰¨K©½X0·»·’%·ŽY6ª$qî–7÷r—|’ 6Õ_§7ËxÆÂim£¸“eŠ(.;†ÉŸ$T$~ÑÁ%p:\nôKýµ­‘í>ævŽi¬Ò{…¤P¹eRS²\0b¤àŒä‚LŽ‘ðÀÂñœ<È’(í•Ú\"LY7+æÀTLäfƒk¥zfãOÈUžæi™6/¹Þï·žKU3ëŽ)/õ+ƒ¶ÞUoïK\n,p«áN%2ûƒ²<{§5lÔ´ñ2vË2¡#x^7¨ó>vŸ|`‘‘îkb(‚€ª\0\0\0\0\0\0\0x(¡j=©Om,/©½\\2­¬H˜Ç)¹0ûIÀ\'>3Ç5¬]]LöÚEÄQÚ¹,VdlÛËpºâ†ÞKAå†ð+¨T_Qôü7¶ïo(á‡¥‡â‡á‘³)ä~T¢¥´}L\\÷ï\Z5Q¡Xå’^ë³F{Ì@<P?p3ŠµYY$K±s¶2O.í#O»1?­rË\r[[N’ïíJ`2Æé4;¡”Äv¼l7d\0rÃ>ª¶Ã¦ëÄ—–qœVÌÍÿ\0ä—hþGò ³^ßE\n4²ºÆŠ2Ìä*ÌšæW]Sûbú-9U°di¥r¦3r‘œ\\á„%ð	¶àU“ÿ\0fVÒÈ%½–âùÊ­ÃŽÒŸ}±F\0?\"â³}?m+ÆË£Œ5ÀÀË‡óÝô ´GP@\0\0\0\0€+Õ)P)JP)JP)JP*¯Ó?õ†©þÚÛÿ\0Ôˆü¬_i|ý£fÎŽ®åuÚAôºËœ2…õdåp1’j\'FÑuq1•V5ºm÷G!$v‡mR#ø—¸¥0x*±¿† Š/UGMr+=Rî9·/ÚE¼3\ZÈÉ‰âGªaÆˆnv,4]JÕq‘H­4ø…øH£‘¤xÈp7–RW+à†Ú\0Æâ×ú~úXd·-Ú\\!Fî…‹°Ì\n™c‡rŒä);Që9$ùêÏq‘ÆzÛßÖ+ž´í®÷„*û–¸¶\\|2ãŸÏÚ¡ô?‡‹n\Z\'¶³¹Q°FÒG|™|BÎ9\'™¸QêäÕª.—±S¹mm”B€ÿ\00´oñ>6‹sœñö¸¿ú½ÜcŸ×ùiÝü[µŒ\rÁCð\\óÆr6¡%~¤n9«ÌPª€ªàü…zÅ+›âm³ßÛ\\Æ¯ÛÚö÷-Û¨I\n:I¼¨P#uç>Ò7`¿ø¥j“Ç	%ê²±v´s8•9ùûñÇ5tÅ\0 ƒÒúÚÂá¶$è$ÿ\0E&asŒóô©ÌÖ®¡¤ÛÎ»gŠ9WŽ$EqÇŽ\Z¸øe¦0À€Æ>QI$#ùFàJ‚Ãy*^WHÐrYØ\"©,qTÍ[¬®î”Ç¥C#/ñ^:ªÄ£øŒ\"fQ+|ï’*nÇ 4ÈœH–°ïÃ²÷cÁòAúÔû(<AóTr=g]-K†ÚV#‘¤i`“p7	,’6ÉbÞ§c6x_MêëgŠ,‘G4É1o•¤PÛ1çßÜ\nÚ´é‹(†#¶?áWñŒ?î8?AèôíŸhAöx{@†ö×fG†ÛŒgëŠ¶Zý¬Û»SÅ&ÜnÚêØÈÈð}Æ‘ù\Z‰Ñõ8æÔ®ûnŽ±Áh„©\r†/täd{à¯5s£[ÉŽä1>Ñ…ÜŠØp28Ê³[ZGÛ\Z*(ðBŸùÿ\0Zƒ5)J)J)J)J)J)J)J)J)J)J)J)J)J)J)J)J)J)J)J)J)J)J)J)J)J)J)J)J)JÿÙ');
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

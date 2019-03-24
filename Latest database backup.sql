-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2019 at 05:03 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bharat`
--
CREATE DATABASE IF NOT EXISTS `bharat` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `bharat`;

-- --------------------------------------------------------

--
-- Table structure for table `ak_follower_detail`
--

CREATE TABLE `ak_follower_detail` (
  `unique_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `followers_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ak_follower_detail`
--

INSERT INTO `ak_follower_detail` (`unique_id`, `user_id`, `followers_id`) VALUES
(61, 140, 137);

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `q_id` int(11) NOT NULL,
  `a_id` int(11) NOT NULL,
  `answer` varchar(21000) CHARACTER SET utf8 NOT NULL,
  `Answer_by_id` int(11) NOT NULL,
  `vote` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`q_id`, `a_id`, `answer`, `Answer_by_id`, `vote`) VALUES
(164, 191, '<p>मेरे हिसाब से ये विद्यार्थी पर निर्भर करता है की वो Engineering करना चाहता है की नहीं।&nbsp;<br />मेरे हिसाब से लगता हैं करनी चाइये अगर कोई विधार्थी रूचि रखता हैं तो , बस इस बात का ध्यान रखना कि &nbsp;donation( घुस ) देकर किसी college में admission ना ले। विधार्थी के आपने हिसाब से कॉलेज और stream choose &nbsp;करना चाहिए , मेरा कहने का मतलब हैं की हर एक विधार्थी के पास अपनी अपनी मानशिकता ( mentality ) होती हैं। &nbsp;हर एक स्टूडेंट तेज़ तरार नहीं होता हैं। अगर कोई student किसी HIFI college में admission ले लेता हैं तो वो हो सकता हैं की वो वह पे survive न कर पाए , वह &nbsp;मानशिक तनाव ( frustration ) का भी शिकार हो सकता हैं और मुझे ऐसा लगता हैं की वो आपने जीबन में कभी भी सफलता हासिल नहीं कर पायेगा।&nbsp;<br />Note : ये सिर्फ मेरे विचार हैं।</p>', 138, 0),
(164, 192, '<p>जहां तक मैं समझता हूँ कि करनी चाहिए यदि तुम दिल से करना कहते हो तो,किसी के बातो में आकर नहीं।&nbsp;<br />मैं पूछता हु क्यू नहीं करना चाइये ,सिर्फ इसलिए की अब Engineering के बाद जॉब नहीं मिल रही है ये फिर इसलिए की हर घर &nbsp;में दो बेरोजगार Engineer बैठा हुआ हैं।&nbsp;<br />अगर पढाई के मकशद सिर्फ job पाना हैं तो मैं सलाह दूंगा की मत करो लेकिन अगर तुम दिल से करना कहते हो तो जरूर करो , हां ये बात अलग हैं &nbsp;की बहुत सारे College में पढाई अच्छी से नहीं हो रही हैं ,मैंने खुद इसका अनुभव बहुत अच्छे से किये हैं। लेकिन इसका मतलब ये नहीं हैं की कॉलेज ही पूरा ख़राब हैं ,आप self study &nbsp;से अच्छा कर सकते हो। अब आप सोच रहे होंगे की सेल्फ स्टडी ही करना हैं &nbsp;तो कही भीं की जा सकती हैं तो फिर कॉलेज ही क्यू ,तो मैं कहना चाहूँगा की एक माहौल होता हैं। College में हर एक दिन नए लोगो से मुलाकात होती हैं कुछ न कुछ नया ही मिलता हैं सिखने को, जो माहौल आप घर पर ये कही और रह केर self study में अनुभव नहीं कर सकते।&nbsp;<br />मैं मानता हु की बहुत college में टीचर ही जायदा टैलंटेड नहीं होता है वो आपके हर एक सवाल का जवाब दे सके लकिन आपको एक platform मिल जायेगा ,आपको ये पता लग जायेगा की क्या करना हैं और कैसे करना हैं।&nbsp;<br />बाकि मैं समझता हु की अगर कोई स्क Student Engineering &nbsp;के लिए Search कर रहा हैं तो जाहिर सी बात हैं की स्टूडेंट ने 12th पास किया ही होगा। मुझे लगता हैं की अब तक में student इतना mature ( मानशिक रूप से समजदार &nbsp;) हो ही गया होगा की वह आपने dicision खुद ले सके।&nbsp;</p>', 139, 1),
(165, 193, '<p>जैसा की हम लोग जानते हैं, राहुल गांधी एक राजनैतिक परिवार से संबंध रखता हैं। अपने पार्टी को प्रतिनिधित्व ( Represent ) करने के लिए रैली करनी पड़ती हैं।&nbsp;</p><p>राहुल गांधी जब भी किसी show में जाते हैं तो किसी टॉपिक का अजीबो गरीब टिपण्णी करता रहता हैं ,जैसे की उसका एक टिपण्णी बहुत ही जायदा चर्चित हैं ,आलू और सोना। एक video clip में मैंने देखा की वो बोल रहे हैं की मैं एक ऐसे मशीन का आविष्कार करुगा जो की आप अगर एक तरफ से आलू डालेंगे तो दूसरे तरफ से सोना निकलेगा। ऐसी बहुत सी बाते हैं जो ये साबित करता हैं की वो पप्पू हैं।&nbsp;</p><p>जब भी कभी वो भाषण देता हैं तो उसके पास लिखित नोट होती हैं। वो आपने मन से एक &nbsp;भीं सब्द नहीं बोल सकता हैं और जब भी कोसिस करता हैं पप्पू बन जाता हैं।&nbsp;</p><p>हाल में ही एक घोटाला को लेकर राहुल गाँधी और उनके पार्टी के नेता काफी उत्साहित थे ,वो हैं राफेल घोटाला। हलाकि वो अकसर किसी भी बात का बतंगड़ बनाते रहते हैं ,इसलिए भी उसे पप्पू कहते हैं।&nbsp;</p><p>मैंने हाल ही में एक video clip देखि उसमे कांग्रेस के समर्थक रैली कर रहे थे ,एक बक्ति ने रैली में आये हुए समर्थक से सवाल किये किया की आपने रैली क्यू निकली हैं तो बहुतो को पता भी नहीं था, और जिसको पता था की ये रैली राफेल घोटाला के खुलासा के लिए है तो उसको ये पता नहीं था की राफेल घोटाला हैं क्या।&nbsp;</p><p>ऐसी बहुत सारी बाते हैं जो की साबित करता हैं की पप्पू (राहुल गांधी ) सच में पप्पू ही हैं। ये सिर्फ मेरे विचार हैं।&nbsp;</p>', 140, 0),
(166, 194, '<p>Air strike भारत के तरफ से की गई एक कदम था &nbsp;जिसमे पाकिस्तान के बॉर्डर के पार आताकबंद के ट्रेनिंग कैंप पे वायु द्वारा बमबरी की गई थी ,army in chief का कहना हैं की ये Strick पुलवामा में हुए जवानो के मौत का बदला हैं। हलाकि इस बात को पाकिस्तान के बजीरे आजम इमरान खान का कहना हैं की ये बॉर्डर के तीन किलोमीटर के अंदर एक सुनशान जगह में की गई थी ,जिसमे किसी भी जान माल का नुकशान नहीं हुआ। वही india के माने तो ,कहा गया है की करीबन 300 आतंकबादी मारे गए थे।&nbsp;</p><p>ये Attack 26 februari 2019 को की गई थी जो की एक पूर्ण रूप से palaned थीे ।&nbsp;<br />इंडिया के की गई इस strick के जवाबी में पाकिस्तान ने कुछ दिन के बाद एक बार फिर वायु हमला किया जिसमे उन्होंने F-16 का उपयोग किया ,जो की पाकिस्तान को अमेरिका की तरफ से एक भेट थी आतंकबाद के खिलाफ।&nbsp;</p>', 140, 0),
(167, 195, '<p>I can&#39;t say which one is better. Since both have their own advantage and disadvantage so i can only say which one is better in that particular situation. As Php is lighter, more faster, and easy to write and debug. But JSP make numerous means accessible to Web developers to secure applications. Resources are protected by recognizing them in the application deployment descriptor and assigning a role to them.</p><p>So I can say php is better, when security is not important or little bit imooimpor. But JSP is better when we have to focus on security. ;</p>', 143, 1),
(169, 196, '<p>Ye aman ke taraf se v hain</p>', 139, 0);

-- --------------------------------------------------------

--
-- Table structure for table `asked_help_query`
--

CREATE TABLE `asked_help_query` (
  `ID` int(11) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Email` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Query` varchar(5000) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `blog_id` int(11) NOT NULL,
  `blog_subject` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `blog` varchar(20840) CHARACTER SET utf8 NOT NULL,
  `blog_posted_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`blog_id`, `blog_subject`, `blog`, `blog_posted_by`) VALUES
(5, 'कुछ वक्त एक गुरु के साथ : विदेशी सर', '<p>ये कहानी मैं &nbsp;उस आदमी को समर्पण करता हु जिन्होंने एक छोटे से गाँव में एक छोटे से विद्यालय से शिक्षा स्तर को काफी उभारा हैं।</p><p>स्थान : भदौरा</p><p>मुझे याद है जब हमारे गाँव में विद्यालय नहीं हुआ करता था , उस वक्त मैं लोहची के किसी विद्यालय में पढ़ने जाया करता था. मुझे सही से उस विद्यालय का नाम याद तो नहीं हैं लकिन सायद वो विद्यालय अभी भी चल रहा हैं। मैं मेरे सारे भाई बहन और &nbsp;गाँव के कुछ ही &nbsp;बच्चे जाया करते थे। मुझे उस वक्त कोई एहसास नहीं थे की गाँव के सरे बच्चे हमरे साथ पढ़ने क्यू नहीं जाते &nbsp;है, लैकिन अब हमे बहुत दुःख होता हैं &nbsp;उस समय की बाते सोच कर। खैर , उस वक्त कुछ लोगो के मन में एक चिंगारी उठी, की क्यू ना हमारे ही गाँव में विद्यालय खोला जाए और वो विद्यालय आज बाल विद्या विकास एकेडमी के नाम से प्रसिद्ध हैं। मुझे बहुत खुसी होती है जब कोई व्यक्तिअपनी नहीं सोच के साथ कुछ अलग कर के दिखता हैं, जिससे खुद का भी भला होता हैं और दुसरो का भी।</p><p>इस विद्यालय के कामयाबी के पीछे एक खास व्यक्ति का हाथ हैं, जो की हैं हमरे सबसे प्रिय विदेशी सर। मैं उनके &nbsp;बारे में जितना बोलू उतना कम हैं।वो &nbsp; ऐसे इन्शान हैं जिन्होंने लाख दिक्क़ते सह कर भी विद्यार्थी के भविष्य को बर्बाद नहीं होने दिया। भदौरा के बासी बहुत अच्छी तरह से जानते हैं।</p><p>जहा तक मैंने अनुभव किया हैं की सर के पास चैन से आराम करने का भी फुर्शत नहीं है ,दिन भर आपना समय बच्चो को पढ़ने में ही लगाते है। सुबह में स्कूल जाना उसके बाद बच्चो को घर पर ट्यूशन पढ़ना और कुछ बच्चो के घर में भी जाकर ट्यूशन पढ़ना ,इतना व्यस्त होने के बाबजूद भी अगर कोई बक्ति समय मांगता हैं तो सर को कभी ना कहते हुए नहीं देखा।</p><p>एक बार की बात मुझे याद हैं , मैंने कहा की सर मुझे किसी कॉलेज से ट्रांसफर सर्टिफिकेट निकलवाना है आप मेरे साथ चलेंगे तो आसनी होगी &nbsp;,सर उस वक्त व्यस्त थे लेकिन सर ने बिना हिचकिचाए हुए एक बार में हा बोल दिया ,एक बार भीं &nbsp;ये नहीं सोचा की उनके निजी काम का क्या होगा। वही एक &nbsp;दिन था जो मैं सर के साथ पुरा बिताया था ।</p><p>कोई नेता या अभिनेता नहीं होते हुए भी सभी &nbsp;के दिलो पे राज किया।<br />मैं अपने आप को बहुत भाग्यशाली मानता हु की मुझे उन जैसे गुरु के सरन में शिक्षा हासिल करने के सौभाग्य प्राप्त हुआ।</p>', 139);

-- --------------------------------------------------------

--
-- Table structure for table `example`
--

CREATE TABLE `example` (
  `unique_id` int(11) NOT NULL,
  `textValue` varchar(500) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `example`
--

INSERT INTO `example` (`unique_id`, `textValue`) VALUES
(1, '<p>This is the Example</p><p>with the break line</p>'),
(2, '<p>This is the Example</p><ol><li>with the break line</li></ol><p>Let me <strong>Do </strong>one thing</p><p><em>This is aman kumar</em></p><p>this is how <a href="http://www.google.com">Google.com</a> works</p>'),
(3, '<p>This is the Example</p><ol><li>with the break line</li></ol><p>Let me <strong>Do </strong>one thing</p><p><em>This is aman kumar</em></p><p>this is how <a href="http://www.google.com">Google.com</a> works &#39; !@#$%^&amp;*</p><p>? weahkljaw&nbsp;&nbsp; 1!&#39;</p>'),
(4, '<p><strong>this is the examnple</strong></p><p>&nbsp;</p><p>Ho<em>w will you behave</em></p>'),
(5, '<p>adjknklad</p><p>3845u9egfng</p><p>*(%943n</p><p>x/,sldkgjisrg</p><p>&nbsp;</p><p>idsh</p>'),
(6, '<p>adjknklad</p><p>3845u9egfng</p><p>*(%943n</p><p>x/,sldkgjisrg</p><p>&nbsp;</p><p>idsh</p>'),
(7, '<p>This is <em><strong>pankja</strong></em></p><ol><li>Connect with us and make sure</li></ol>');

-- --------------------------------------------------------

--
-- Table structure for table `exception`
--

CREATE TABLE `exception` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `computer_ip` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `urlparameter` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `exception_message` varchar(5000) CHARACTER SET utf8 NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exception`
--

INSERT INTO `exception` (`id`, `username`, `userid`, `computer_ip`, `urlparameter`, `exception_message`, `time`) VALUES
(7, 'Anonuous', 0, '127.0.0.1', 'http://localhost:8084/inquiryhere/SearchBar.jsp?value=Topic&search=%E0%A4%B0%E0%A4%BE%E0%A4%B9%E0%A5%81%E0%A4%B2', 'java.sql.SQLException: Illegal mix of collations (latin1_swedish_ci,IMPLICIT) and (utf8_general_ci,COERCIBLE) for operation \'like\'', '2019-03-13 21:21:05'),
(8, 'Anonuous', 0, '127.0.0.1', 'http://localhost:8084/inquiryhere/SearchBar.jsp?value=UserProfile&search=%E0%A4%B0%E0%A4%BE%E0%A4%B9%E0%A5%81%E0%A4%B2', 'java.sql.SQLException: Illegal mix of collations (latin1_swedish_ci,IMPLICIT) and (utf8_general_ci,COERCIBLE) for operation \'like\'', '2019-03-13 21:22:00'),
(9, 'Anonuous', 0, '127.0.0.1', 'http://localhost:8084/inquiryhere/SearchBar.jsp?value=UserProfile&search=%E0%A4%B0%E0%A4%BE%E0%A4%B9%E0%A5%81%E0%A4%B2%27', 'com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'%\' OR lower(lastname) LIKE \'%?????\'%\'\' at line 1', '2019-03-13 21:33:45'),
(10, 'Anonuous', 0, '127.0.0.1', 'http://localhost:8084/inquiryhere/SearchBar.jsp?value=Question&search=%E0%A4%B0%E0%A4%BE%E0%A4%B9%E0%A5%81%E0%A4%B2%27', 'com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'%\'\' at line 1', '2019-03-13 21:36:39'),
(11, 'Anonuous', 0, '127.0.0.1', 'http://localhost:8084/inquiryhere/SearchBar.jsp?value=Question&search=%E0%A4%B0%E0%A4%BE%E0%A4%B9%E0%A5%81%E0%A4%B2%27', 'com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'%\'\' at line 1', '2019-03-13 21:45:46'),
(12, 'ankit@gmail.com', 137, '127.0.0.1', 'http://localhost:8084/inquiryhere/SearchBar.jsp?value=Question&search=%E0%A4%AA%E0%A4%B9%E0%A4%B2%E0%A5%87%27', 'com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'%\'\' at line 1', '2019-03-13 21:46:44'),
(13, 'ankit@gmail.com', 137, '127.0.0.1', 'http://localhost:8084/inquiryhere/SearchBar.jsp?value=Question&search=%E0%A4%AA%E0%A4%B9%E0%A4%B2%E0%A5%87', 'java.sql.SQLException: Parameter index out of range (1 > number of parameters, which is 0).', '2019-03-13 21:48:44');

-- --------------------------------------------------------

--
-- Table structure for table `full_form`
--

CREATE TABLE `full_form` (
  `unique_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_mail` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_word` varchar(100) CHARACTER SET utf8 NOT NULL,
  `full_form` varchar(500) CHARACTER SET utf8 NOT NULL,
  `category` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `full_form`
--

INSERT INTO `full_form` (`unique_id`, `user_id`, `user_mail`, `short_word`, `full_form`, `category`) VALUES
(4, NULL, NULL, 'CRPF', 'Central Reserve Police Force', 'defence'),
(5, NULL, NULL, 'RAF', 'The Rapid Action Force', 'defence'),
(6, NULL, NULL, 'COBRA', 'The Commando Batallion for Resuolute Action', 'defence'),
(7, NULL, NULL, 'BSF', 'Border Security Force', 'defence'),
(8, NULL, NULL, 'ITBP', 'Indo-Tibetian Batallean Police', 'defence'),
(9, NULL, NULL, 'CISF', 'Central Industrial Security Force', 'defence'),
(10, NULL, NULL, 'SSB', 'Sahastra Seema Bal', 'defence'),
(11, NULL, NULL, 'NSG', 'National Security Gaurd', 'defence'),
(12, NULL, NULL, 'SPG', 'Special Protection Gaurd', 'defence'),
(13, NULL, NULL, 'DG', 'Director General', 'defence'),
(14, NULL, NULL, 'SDG', 'Special Director General', 'defence'),
(15, NULL, NULL, 'ADG', 'Addl Director General', 'defence'),
(16, NULL, NULL, 'ADG', 'Addl Director General', 'defence'),
(17, NULL, NULL, 'IGP', 'Inspector General', 'defence'),
(18, NULL, NULL, 'DIG', 'Deputy Inspector General', 'defence'),
(19, NULL, NULL, 'CO', 'Commandant', 'defence'),
(20, NULL, NULL, '2I/C', 'Second in Commandant', 'defence'),
(21, NULL, NULL, 'DC', 'Deputy Commandant', 'defence'),
(22, NULL, NULL, 'AC', 'Assistant Commandant', 'defence'),
(23, NULL, NULL, 'APJ ABDUL KALAM', 'Avul Pakir Jainulabdeen Abdul Kalam', 'general'),
(24, NULL, NULL, 'ASAP', 'As Soon As Possible', 'general'),
(25, NULL, NULL, 'CFL', 'Compact fluorescent lamp', 'general'),
(26, NULL, NULL, 'COO', 'Chief Operating Officer', 'general'),
(27, NULL, NULL, 'DSLR', 'Digital single-lens reflex', 'general'),
(28, NULL, NULL, 'DSP', 'Deputy Superintendent of Police', 'defence'),
(29, NULL, NULL, 'F.O.R', 'Freight on Road', 'general'),
(30, NULL, NULL, 'IPL', 'Indian Premier League', 'general'),
(31, NULL, NULL, 'NCR', 'National Capital Region', 'general'),
(32, NULL, NULL, 'PS', 'Postscript', 'general'),
(33, NULL, NULL, 'PVC', 'Poly Vinyl Chloride', 'general'),
(34, NULL, NULL, 'RDX', 'Research Department Explosive / Royal Demolition Explosive', 'general'),
(35, NULL, NULL, 'RPM', 'Revolutions Per Minute', 'general'),
(36, NULL, NULL, 'RSVP', 'Repondez s\'il vous plait', 'general'),
(37, NULL, NULL, 'SDM', 'Sub Divisional Magistrate', 'general'),
(38, NULL, NULL, 'SHO', 'Station House Officer', 'general'),
(39, NULL, NULL, 'SIT', 'Special Investigation Team', 'general'),
(40, NULL, NULL, 'SSB', 'Service Selection Board', 'general'),
(41, NULL, NULL, 'VISA', 'charta visa, lit in Latin', 'general'),
(42, NULL, NULL, 'ABS', 'Anti-lock Braking System', 'automobile'),
(43, NULL, NULL, 'PUC', 'Pollution Under Control', 'automobile'),
(44, NULL, NULL, 'RPM', 'Revolutions Per Minute', 'automobile'),
(45, NULL, NULL, 'JCB', 'Joseph Cyril Bamford', 'automobile'),
(46, NULL, NULL, 'MRF', 'Madras Rubber Factory', 'automobile'),
(47, NULL, NULL, 'RTO', 'Regional Transport Office/ Road Transport Office', 'automobile'),
(48, NULL, NULL, 'SUV', 'Sport Utility Vehicle', 'automobile'),
(49, NULL, NULL, 'TVS', 'Thirukkurungudi Vengaram Sundram', 'automobile'),
(50, NULL, NULL, 'ADB', 'Asian Development Bank', 'banking'),
(51, NULL, NULL, 'ATM', 'Automated Teller Machine', 'banking'),
(52, NULL, NULL, 'CBI', 'Central bureau of Investigation', 'defence'),
(53, NULL, NULL, 'HDFC', 'Housing Development Finance Corporation', 'banking'),
(54, NULL, NULL, 'HSBC', 'Hong Kong and Shanghai Banking Corporation', 'banking'),
(55, NULL, NULL, 'ICICI', 'Credit and Investment Corporation of India', 'banking'),
(56, NULL, NULL, 'IDBI', 'Industrial Development Bank of India', 'banking'),
(57, NULL, NULL, 'IFSC', 'Indian Financial System Code', 'banking'),
(58, NULL, NULL, 'INR', 'Indian Rupee', 'banking'),
(59, NULL, NULL, 'NEFT', 'National Electronic Funds Transfer', 'banking'),
(60, NULL, NULL, 'RTGS', 'Real-Time Gross Settlement', 'banking'),
(61, NULL, NULL, 'RBL', 'Ratnakar Bank Limited', 'banking'),
(62, NULL, NULL, 'PAN', 'Permanent Account Number', 'banking'),
(63, NULL, NULL, 'PO', 'Probationary Officer & Post Office', 'banking'),
(64, NULL, NULL, 'TDS', 'Tax Deducted at Source', 'banking'),
(65, NULL, NULL, 'ECS', 'Electronic Clearing Service', 'banking'),
(66, NULL, NULL, 'ESI', 'Employees\' State Insurance', 'banking'),
(67, NULL, NULL, 'IRDA', 'Employees\' State Insurance', 'banking'),
(68, NULL, NULL, 'SEBI', 'Securities and Exchange Board of India', 'banking'),
(69, NULL, NULL, 'SIDBI', 'Small Industries Development Bank of India', 'banking'),
(70, NULL, NULL, 'SLR', 'Single Lens Reflex & Statutory Liquidity Ratio', 'banking'),
(71, NULL, NULL, 'UCO', 'United Commercial Bank', 'banking'),
(72, NULL, NULL, 'AICTE', 'All India Council for Technical Education', 'defence'),
(73, NULL, NULL, 'AMIE', 'Associate Member of the Institution of Engineers', 'education'),
(74, NULL, NULL, 'BBA', 'Bachelor of Business Administration', 'education'),
(75, NULL, NULL, 'BCA', 'Bachelor of Computer Applications', 'education'),
(76, NULL, NULL, 'BA', 'Bachelor of Arts', 'education'),
(77, NULL, NULL, 'B.TECH', 'Bachelor of Technology', 'education'),
(78, NULL, NULL, 'B.COM', 'Bachelor of Commerce', 'education'),
(79, NULL, NULL, 'B.ED', 'Bachelor of Education', 'education'),
(80, NULL, NULL, 'BE', 'Bachelor of Engineering', 'education'),
(81, NULL, NULL, 'BHMS', 'Bachelor of Homeopathic Medicine and Surgery', 'education'),
(82, NULL, NULL, 'BSC', 'Bachelor of Science & Base Station Controller', 'education'),
(83, NULL, NULL, 'CGPA', 'Cumulative Grade Point Average', 'education'),
(84, NULL, NULL, 'CV', 'Curriculum Vitae', 'education'),
(85, NULL, NULL, 'CS', 'Company Secretary', 'education'),
(86, NULL, NULL, 'DP', 'Display Picture, Data Processing', 'education'),
(87, NULL, NULL, 'GPA', 'Grade Point Average', 'education'),
(88, NULL, NULL, 'HSC', 'Higher Secondary Certificate & Higher Secondary School Certificate', 'education'),
(89, NULL, NULL, 'ICSE', 'Indian Certificate of Secondary Education', 'education'),
(90, NULL, NULL, 'IAS', 'Indian Administrative Service', 'education'),
(91, NULL, NULL, 'ISC', 'Indian School Certificate', 'education'),
(92, NULL, NULL, 'PCS', 'Provincial Civil Service', 'education'),
(93, NULL, NULL, 'LLB', 'Legum Baccalaureus in Latin (commonly known as Bachelor of Laws)', 'education'),
(94, NULL, NULL, 'LLM', 'Legum Magister (Latin) & Master of Law', 'education'),
(95, NULL, NULL, 'MBA', 'Master of Business Administration', 'education'),
(96, NULL, NULL, 'MCA', 'Master of Computer Application', 'education'),
(97, NULL, NULL, 'MSC', 'Mobile Switching Center & Master of Science', 'education'),
(98, NULL, NULL, 'MS', 'Master of Science, Master of Surgery & MicroSoft', 'education'),
(99, NULL, NULL, 'MD', 'Doctor of Medicine', 'education'),
(100, NULL, NULL, 'NDA', 'National Defence Academy, National Democratic Alliance', 'education'),
(101, NULL, NULL, 'NIIT', 'National Institute of Information Technology', 'education'),
(102, NULL, NULL, 'PHD', 'Doctor of Philosophy', 'education'),
(103, NULL, NULL, 'PGDCA', 'Post Graduate Diploma in Computer Application', 'education'),
(104, NULL, NULL, 'PGDM', 'Post Graduate Diploma in Management', 'education'),
(105, NULL, NULL, 'PUC', 'Pollution Under Control, Pre University Course & Personal Unlock Code', 'education'),
(106, NULL, NULL, 'SSC', 'Secondary School Certificate, Staff Selection Commission', 'education'),
(107, NULL, NULL, 'SSLC', 'Secondary School Leaving Certificate', 'education'),
(108, NULL, NULL, 'TGT', 'Trained Graduate Teacher', 'education'),
(109, NULL, NULL, 'JAIIB', 'Junior Associate of the Indian Institute of Bankers', 'exam'),
(110, NULL, NULL, 'CAIIB', 'Certified Associate of Indian Institute of Bankers', 'exam'),
(111, NULL, NULL, 'CAT', 'Common Admission Test', 'exam'),
(112, NULL, NULL, 'CPT', 'Common Proficiency Test', 'exam'),
(113, NULL, NULL, 'GATE', 'Graduate Aptitude Test in Engineering', 'exam'),
(114, NULL, NULL, 'IAS', 'Indian Administrative Service', 'exam'),
(115, NULL, NULL, 'ICSE', 'Indian Certificate of Secondary Education', 'exam'),
(116, NULL, NULL, 'IELTS', 'International English Language Testing System', 'exam'),
(117, NULL, NULL, 'NDA', 'National Defence Academy, National Democratic Alliance', 'exam'),
(118, NULL, NULL, 'NET', 'National Eligibility Test', 'exam'),
(119, NULL, NULL, 'PCS', 'Provincial Civil Service', 'exam'),
(120, NULL, NULL, 'SSB', 'Service Selection Board', 'exam'),
(121, NULL, NULL, 'TOEFL', 'Test of English as a Foreign Language', 'exam'),
(122, NULL, NULL, 'UPSC', 'Union Public Service Commission', 'exam'),
(123, NULL, NULL, 'BPL', 'Below Poverty Line, British Physical Laboratories Group', 'finance'),
(124, NULL, NULL, 'CA', 'Chartered Accountant', 'finance'),
(125, NULL, NULL, 'CAG', 'Comptroller and Auditor General of India', 'finance'),
(126, NULL, NULL, 'COB', 'Close of Business', 'finance'),
(127, NULL, NULL, 'CST', 'Central Sales Tax, Chhatrapati Shivaji Terminus, Central Standard Time', 'finance'),
(128, NULL, NULL, 'CTS', 'Cheque Truncation System, Clear to Send', 'finance'),
(129, NULL, NULL, 'CRR', 'Cash Reserve Ratio', 'finance'),
(130, NULL, NULL, 'ECC', 'Excise Control Code', 'finance'),
(131, NULL, NULL, 'EMI', 'Equated Monthly Installment', 'finance'),
(132, NULL, NULL, 'EOD', 'End of the Day', 'finance'),
(133, NULL, NULL, 'FEMA', 'Foreign Exchange Management Act', 'finance'),
(134, NULL, NULL, 'FDI', 'Foreign Direct Investment', 'finance'),
(135, NULL, NULL, 'GDP', 'Gross Domestic Product', 'finance'),
(136, NULL, NULL, 'GST', 'Goods and Service Tax', 'finance'),
(137, NULL, NULL, 'HDFC', 'Housing Development Finance Corporation', 'finance'),
(138, NULL, NULL, 'HSBC', 'Hong Kong and Shanghai Banking Corporation', 'finance'),
(139, NULL, NULL, 'IT', 'Information Technology ↦ Income Tax', 'finance'),
(140, NULL, NULL, 'IPO', 'Initial Public Offering', 'finance'),
(141, NULL, NULL, 'KYC', 'Know Your Customer', 'finance'),
(142, NULL, NULL, 'MICR', 'Magnetic Ink Character Recognition', 'finance'),
(143, NULL, NULL, 'NPA', 'Non Performing Assets', 'finance'),
(144, NULL, NULL, 'NIFTY', 'National Stack Exchange Fifty', 'finance'),
(145, NULL, NULL, 'SENSEX', 'Stock Exchange Sensitive Index', 'finance'),
(146, NULL, NULL, 'NASDAQ', 'National Association of Securities Dealers Automated Quotations', 'finance'),
(147, NULL, NULL, 'PSI', 'Pound per Square Inch', 'finance'),
(148, NULL, NULL, 'SKU', 'Stock Keeping Unit', 'finance'),
(149, NULL, NULL, 'SIP', 'Systematic Investment Plan', 'finance'),
(150, NULL, NULL, 'SLA', 'Service Level Agreement', 'finance'),
(151, NULL, NULL, 'TA&DA', 'Travelling Allowance & Dearness Allowance', 'finance'),
(152, NULL, NULL, 'TAN', 'Ticket Deposit Receipt, Term Deposit Receipt & Time Domain Reflectometer', 'finance'),
(153, NULL, NULL, 'TDR', 'Tax Deduction and Collection Account Number', 'finance'),
(154, NULL, NULL, 'TIN', 'Taxpayer Identification Number', 'finance'),
(155, NULL, NULL, 'VAT', 'Value Added Tax', 'finance'),
(156, NULL, NULL, 'COMPUTER', 'Common Operating Machine Purposely Used for Technological and Educational Research', 'technical'),
(157, NULL, NULL, 'ACD', 'Automatic Call Distributor', 'technical'),
(158, NULL, NULL, 'CPU', 'Central Processing Unit', 'technical'),
(159, NULL, NULL, 'DVD', 'Digital Video Disc, Digital Versatile Disc', 'technical'),
(160, NULL, NULL, 'MCB', 'Miniature Circuit Breaker', 'technical'),
(161, NULL, NULL, 'MCB', 'Miniature Circuit Breaker', 'technical'),
(162, NULL, NULL, 'FAX', 'Facsimile', 'technical'),
(163, NULL, NULL, 'LCD', 'Liquid Cristal Display', 'technical'),
(164, NULL, NULL, 'LED', 'Light Emitting Diode', 'technical'),
(165, NULL, NULL, 'HTC', 'High Tech Computer', 'technical'),
(166, NULL, NULL, 'PDA', 'Personal Digital Assistant', 'technical'),
(167, NULL, NULL, 'PSU', 'Public Sector Undertakingt &Power Supply Unit', 'technical'),
(168, NULL, NULL, 'TFT', 'Thin Film Transistor', 'technical'),
(169, NULL, NULL, 'TDR', 'Ticket Deposit Receipt, Term Deposit Receipt & Time Domain Reflectometer', 'technical'),
(170, NULL, NULL, 'UPS', 'Uninterruptible Power Supply', 'technical'),
(171, NULL, NULL, 'VGA', 'Video Graphics Array', 'technical'),
(172, NULL, NULL, 'BRB', 'Be Right Back', 'internet slang'),
(173, NULL, NULL, 'DP', 'Display Picture', 'internet slang'),
(174, NULL, NULL, 'LMAO', 'Laughing My Ass Off', 'internet slang'),
(175, NULL, NULL, 'LOL', 'Laughing Out Loud', 'internet slang'),
(176, NULL, NULL, 'OK', 'Olla Kalla or Oll Korrect', 'internet slang'),
(177, NULL, NULL, 'PFA', 'Please Find Attachment, Predictive Failure Analysis', 'internet slang'),
(178, NULL, NULL, 'ROFL', 'Rolling On Floor Laughing', 'internet slang'),
(179, NULL, NULL, 'TBH', 'To Be Honest', 'internet slang'),
(180, NULL, NULL, 'TTYL', 'Talk To You Later', 'internet slang'),
(181, NULL, NULL, 'ETA', 'Estimated Time of Arrival', 'internet slang'),
(182, NULL, NULL, 'FYI', 'For Your Information', 'internet slang'),
(183, NULL, NULL, 'AJAX', 'Asynchronous JavaScript and XML', 'information technology'),
(184, NULL, NULL, 'API', 'Application Programming Interface', 'information technology'),
(185, NULL, NULL, 'APK', 'Android Application Package', 'information technology'),
(186, NULL, NULL, 'ASP', 'Active Server Page', 'information technology'),
(187, NULL, NULL, 'ASCII', 'American Standard Code for Information Interchange', 'information technology'),
(188, NULL, NULL, 'ATA', 'Advanced Technology Attachment & Parallel Advanced Technology Attachment', 'information technology'),
(189, NULL, NULL, 'BASIC', 'Beginner\'s All-Purpose Symbolic Instruction Code', 'information technology'),
(190, NULL, NULL, 'BIOS', 'Basic Input Output System', 'information technology'),
(191, NULL, NULL, 'CNC', 'Computerized Numerical Control', 'information technology'),
(192, NULL, NULL, 'CPU', 'Central Processing Unit', 'information technology'),
(193, NULL, NULL, 'DNS', 'Domain Name System', 'information technology'),
(194, NULL, NULL, 'DTP', 'Desk-Top Publishing, Distributed Transaction Processing', 'information technology'),
(195, NULL, NULL, 'EJB', 'Enterprise Java Bean', 'information technology'),
(196, NULL, NULL, 'ICT', 'Information and Communications Technology', 'information technology'),
(197, NULL, NULL, 'ITES', 'Information Technology Enabled Services', 'information technology'),
(198, NULL, NULL, 'IT', 'Information Technology', 'information technology'),
(199, NULL, NULL, 'HTML', 'Hyper Text Markup Language', 'information technology'),
(200, NULL, NULL, 'HTTP', 'Hyper Text Transfer protocol', 'information technology'),
(201, NULL, NULL, 'JPG', 'Joint Photographic Experts Group', 'information technology'),
(202, NULL, NULL, 'MMS', 'Multimedia Messaging Service', 'information technology'),
(203, NULL, NULL, 'PDF', 'Portable Document Format', 'information technology'),
(204, NULL, NULL, 'PHP', 'Hypertext Preprocessor (earlier called, Personal Home Page)', 'information technology'),
(205, NULL, NULL, 'RIP', 'Routing Information Protocol', 'information technology'),
(206, NULL, NULL, 'RSS', 'Really Simple Syndication', 'information technology'),
(207, NULL, NULL, 'SEO', 'Search Engine Optimization', 'information technology'),
(208, NULL, NULL, 'SIM', 'Subscriber Identity Module', 'information technology'),
(209, NULL, NULL, 'SMS', 'Short Message Service', 'information technology'),
(210, NULL, NULL, 'SQL', 'Structured Query Language', 'information technology'),
(211, NULL, NULL, 'URL', 'Uniform Resource Locator', 'information technology'),
(212, NULL, NULL, 'USB', 'Universal Serial Bus', 'information technology'),
(213, NULL, NULL, 'VIRUS', 'Vital Information Resources Under Seize', 'information technology'),
(214, NULL, NULL, 'WIFI', 'Wireless Fidelity', 'information technology'),
(215, NULL, NULL, 'WWW', 'World Wide Web', 'information technology'),
(216, NULL, NULL, 'XML', 'eXtensible Markup Language', 'information technology'),
(217, NULL, NULL, 'XMPP', 'Extensible Messaging and Presence Protocol', 'information technology'),
(218, NULL, NULL, 'ABG', 'Arterial Blood Gas', 'medical'),
(219, NULL, NULL, 'ACS', 'American Chemical Society', 'medical'),
(220, NULL, NULL, 'ADHD', 'Attention Deficit Hyperactivity Disorder', 'medical'),
(221, NULL, NULL, 'ALS', 'Amyotrophic Lateral Sclerosis', 'medical'),
(222, NULL, NULL, 'AIDS', 'Acquired Immune Deficiency Syndrome', 'medical'),
(223, NULL, NULL, 'ARDS', 'Acute Respiratory Distress Syndrome', 'medical'),
(224, NULL, NULL, 'BAMS', 'Bachelor of Ayurvedic Medicine and Surgery', 'medical'),
(225, NULL, NULL, 'BCG', 'Bacillus Calmette-Guerin', 'medical'),
(226, NULL, NULL, 'BDS', 'Bachelor of Dental Surgery', 'medical'),
(227, NULL, NULL, 'BMD', 'Bone Mineral Density', 'medical'),
(228, NULL, NULL, 'BMI', 'Body Mass Index', 'medical'),
(229, NULL, NULL, 'BMR', 'Basal Metabolic Rate', 'medical'),
(230, NULL, NULL, 'BMT', 'Bone Marrow Transplant', 'medical'),
(231, NULL, NULL, 'CABG', 'Coronary Artery Bypass Graft', 'medical'),
(232, NULL, NULL, 'CBC', 'Complete Blood Count', 'medical'),
(233, NULL, NULL, 'CHF', 'Congestive Heart Failure', 'medical'),
(234, NULL, NULL, 'CMO', 'Chief Medical Officer', 'medical'),
(235, NULL, NULL, 'COPD', 'Chronic Obstructive Pulmonary Disease', 'medical'),
(236, NULL, NULL, 'CPR', 'Cardio-Pulmonary Resuscitation', 'medical'),
(237, NULL, NULL, 'DNA', 'Deoxyribonucleic Acid', 'medical'),
(238, NULL, NULL, 'EBV', 'Epstein - Barr virus', 'medical'),
(239, NULL, NULL, 'ECG', 'Electrocardiogram', 'medical'),
(240, NULL, NULL, 'ECT', 'Electroconvulsive Therapy', 'medical'),
(241, NULL, NULL, 'ENT', 'Ear Nose Throat', 'medical'),
(242, NULL, NULL, 'FHR', 'Fetal Heart Rate', 'medical'),
(243, NULL, NULL, 'GFR', 'Glomerular Filtration Rate', 'medical'),
(244, NULL, NULL, 'GTT', 'Glucose Tolerance Test', 'medical'),
(245, NULL, NULL, 'GMO', 'Genetically Modified Organism', 'medical'),
(246, NULL, NULL, 'HIV', 'Human Immunodeficiency Virus', 'medical'),
(247, NULL, NULL, 'IVF', 'IN Vitro Fertilization', 'medical'),
(248, NULL, NULL, 'ICU', 'Intensive Care Unit', 'medical'),
(249, NULL, NULL, 'MC', 'Menstrual Cycle', 'medical'),
(250, NULL, NULL, 'MMR', 'Measles Mumps and Rubella', 'medical'),
(251, NULL, NULL, 'MBBS', 'Bachelor of Medicine, Bachelor of Surgery (Medicinae Baccalaureus, Baccalaureus Chirurgiae in Latin)', 'medical'),
(252, NULL, NULL, 'MD', 'Doctor of Medicine', 'medical'),
(253, NULL, NULL, 'MRI', 'Magnetic Resonance Imaging', 'medical'),
(254, NULL, NULL, 'OCD', 'Obsessive-Compulsive Disorder', 'medical'),
(255, NULL, NULL, 'OPD', 'Outpatient Department', 'medical'),
(256, NULL, NULL, 'OSA', 'Obstructive Sleep Apnea', 'medical'),
(257, NULL, NULL, 'PID', 'Pelvic Inflammatory Disease', 'medical'),
(258, NULL, NULL, 'PKD', 'Polycystic Kidney Disease', 'medical'),
(259, NULL, NULL, 'PMS', 'Premenstrual Syndrome', 'medical'),
(260, NULL, NULL, 'PTSD', 'Post-Traumatic Stress Disorder', 'medical'),
(261, NULL, NULL, 'RBC', 'Red Blood Cell', 'medical'),
(262, NULL, NULL, 'RNA', 'Ribonucleic Acid', 'medical'),
(263, NULL, NULL, 'RHD', 'Rheumatic Heart Disease', 'medical'),
(264, NULL, NULL, 'STD', 'Subscriber Trunk Dialing, Sexually Transmitted Diseases', 'medical'),
(265, NULL, NULL, 'TLC', 'Total Lung Capacity', 'medical'),
(266, NULL, NULL, 'TT', 'Tetanus Toxoid', 'medical'),
(267, NULL, NULL, 'UTI', 'Urinary Tract Infection', 'medical'),
(268, NULL, NULL, 'WBC', 'White Blood Cell', 'medical'),
(269, NULL, NULL, 'AAI', 'Airport Authority of India', 'organizational'),
(270, NULL, NULL, 'ABP', 'Ananda Bazaar Patrika News', 'organizational'),
(271, NULL, NULL, 'ACC', 'Associated Cement Companies', 'organizational'),
(272, NULL, NULL, 'ACS', 'American Chemical Society', 'organizational'),
(273, NULL, NULL, 'ADIDAS', 'Adolf "Adi" Dassler', 'organizational'),
(274, NULL, NULL, 'AHRC', 'Asian Human Rights Commission', 'organizational'),
(275, NULL, NULL, 'AIAAA', 'American Institute of Aeronautics and Astronautics', 'organizational'),
(276, NULL, NULL, 'AMW', 'Asian Motors Limited', 'organizational'),
(277, NULL, NULL, 'AYUSH', 'Ayurvedic, Yoga and Naturopathy, Unani, Siddha and Homeopathy', 'organizational'),
(278, NULL, NULL, 'AMC', 'Annual Maintenance Contract, American Motors Corporation', 'organizational'),
(279, NULL, NULL, 'AMUL', 'Anand Milk Union Limited', 'organizational'),
(280, NULL, NULL, 'AT&T', 'American Telephone & Telegraph Company', 'organizational'),
(281, NULL, NULL, 'BARC', 'Bhaba Atomic Research Center', 'organizational'),
(282, NULL, NULL, 'BBC', 'British Broadcasting Corporation', 'organizational'),
(283, NULL, NULL, 'BCCI', 'Board of Control of Cricket in India', 'organizational'),
(284, NULL, NULL, 'BMW', 'Bayerische Motoren Werke', 'organizational'),
(285, NULL, NULL, 'BIFR', 'Board of Industrial and Financial Reconstruction', 'organizational'),
(286, NULL, NULL, 'BIS', 'Bureau of Indian Standards', 'organizational'),
(287, NULL, NULL, 'BPO', 'Business Process Outsourcing', 'organizational'),
(288, NULL, NULL, 'BPL', 'Below Poverty Line & British Physical Laboratories Group', 'organizational'),
(289, NULL, NULL, 'BRICS', 'Brazil Russia India China And South Africa', 'organizational'),
(290, NULL, NULL, 'CBSE', 'Central Board of Secondary Education', 'organizational'),
(291, NULL, NULL, 'CBI', 'Central bureau of Investigation, Central Bank of India', 'organizational'),
(292, NULL, NULL, 'CEO', 'Chief Executive Officer', 'organizational'),
(293, NULL, NULL, 'CID', 'Crime Investigation Department', 'organizational'),
(294, NULL, NULL, 'CISF', 'Central Industrial Security Force', 'defence'),
(295, NULL, NULL, 'CRISIL', 'Credit Rating Information Services of India Limited', 'organizational'),
(296, NULL, NULL, 'CRPF', 'Central Reserve Police Force', 'defence'),
(297, NULL, NULL, 'DHL', 'Dalsey Hillblom Lynn', 'organizational'),
(298, NULL, NULL, 'DIG', 'Deputy Inspector General', 'defence'),
(299, NULL, NULL, 'DLF', 'Delhi Land and Finance', 'organizational'),
(300, NULL, NULL, 'DRDO', 'Defence Research and Development Organization', 'organizational'),
(301, NULL, NULL, 'DST', 'Department of Science & Technology', 'organizational'),
(302, NULL, NULL, 'DVC', 'Damodar Valley Corporation', 'organizational'),
(303, NULL, NULL, 'DS GROUP', 'Dharampal Satyapal Group', 'organizational'),
(304, NULL, NULL, 'ERP', 'Enterprise Resource Planning', 'organizational'),
(305, NULL, NULL, 'EPFO', 'Employee Provident Fund Organization', 'organizational'),
(306, NULL, NULL, 'FBI', 'Federal Bureau of Investigation', 'defence'),
(307, NULL, NULL, 'FCI', 'Food Corporation of India', 'organizational'),
(308, NULL, NULL, 'FIFA', 'Federation Internationale de Football Association', 'organizational'),
(309, NULL, NULL, 'FMCG', 'Fast-Moving Consumer Goods', 'organizational'),
(310, NULL, NULL, 'FSSAI', 'Food Safety and Standards Authority of India', 'organizational'),
(311, NULL, NULL, 'GOOGLE', 'Global Organization Of Oriented Group Language Of Earth', 'organizational'),
(312, NULL, NULL, 'GAIL', 'Gas Authority of India Limited', 'organizational'),
(313, NULL, NULL, 'HP', 'Hewlett-Packard', 'organizational'),
(314, NULL, NULL, 'HUDCO', 'Housing and Urban Development Corporation Limited', 'organizational'),
(315, NULL, NULL, 'IBM', 'International Business Machines', 'organizational'),
(316, NULL, NULL, 'IATA', 'International Air Transport Association', 'organizational'),
(317, NULL, NULL, 'IB', 'Intelligence Bureau', 'organizational'),
(318, NULL, NULL, 'IEEE', 'Institute of Electrical and Electronics Engineers', 'organizational'),
(319, NULL, NULL, 'IFFCO', 'Indian Farmers Fertilizer Cooperative Limited', 'organizational'),
(320, NULL, NULL, 'IIFL', 'India Infoline Finance Limited', 'organizational'),
(321, NULL, NULL, 'IPI', 'International Press Institute', 'organizational'),
(322, NULL, NULL, 'IL&FS', 'Infrastructure Leasing & Financial Services', 'organizational'),
(323, NULL, NULL, 'IMA', 'Indian Military Academy & Indian Medical Association', 'organizational'),
(324, NULL, NULL, 'IOC', 'International Olympic Committee', 'organizational'),
(325, NULL, NULL, 'IPCC', 'Integrated Professional Competence Course', 'organizational'),
(326, NULL, NULL, 'IRCTC', 'Indian Railways Catering and Tourism Corporation', 'organizational'),
(327, NULL, NULL, 'IRDA', 'Insurance Regulatory and Development Authority & Infrared DATA Association', 'organizational'),
(328, NULL, NULL, 'ISI', 'Indian Standards Institute, Inter-Service Intelligence & Indian Statistical Institute', 'organizational'),
(329, NULL, NULL, 'ISO', 'International Organization for Standardization', 'organizational'),
(330, NULL, NULL, 'ISRO', 'Indian Space Research Organization', 'organizational'),
(331, NULL, NULL, 'IBPS', 'Institute of Banking Personnel Selection', 'organizational'),
(332, NULL, NULL, 'ITI', 'Industrial Training Institute', 'organizational'),
(333, NULL, NULL, 'IIT', 'Indian Institute of Technology', 'organizational'),
(334, NULL, NULL, 'JBL', 'James Bullough Lansing', 'organizational'),
(335, NULL, NULL, 'JCB', 'Joseph Cyril Bamford', 'organizational'),
(336, NULL, NULL, 'ICWA', 'Institute of Cost & Works Accountants of India, Indian Child Welfare Act', 'organizational'),
(337, NULL, NULL, 'ITC', 'Indian Tobacco Company, International Trade Center, Independent Telephone Company', 'organizational'),
(338, NULL, NULL, 'JK TYRE', 'Juggilal Kamlapat Ji Tyres', 'organizational'),
(339, NULL, NULL, 'KEI', 'Krishna Electricals Industries Limited', 'organizational'),
(340, NULL, NULL, 'KFC', 'Kentucky Fried Chicken', 'organizational'),
(341, NULL, NULL, 'KPMG', 'KLYNVELD PEAT MARWICK GOERDELER', 'organizational'),
(342, NULL, NULL, 'KRA', 'Key Result Area/ Key Responsibility Area', 'organizational'),
(343, NULL, NULL, 'LG', 'Lieutenant Governor', 'organizational'),
(344, NULL, NULL, 'LIC', 'Life Insurance Corporation of India', 'organizational'),
(345, NULL, NULL, 'L&T', 'Larsen and Toubro', 'organizational'),
(346, NULL, NULL, 'MPEG', 'Moving Picture Experts Group', 'organizational'),
(347, NULL, NULL, 'MS', 'Master of Science, Master of Surgery & MicroSoft', 'organizational'),
(348, NULL, NULL, 'MTNL', 'Mahanagar Telephone Nigam Limited', 'organizational'),
(349, NULL, NULL, 'MTNL', 'Mahanagar Telephone Nigam Limited', 'organizational'),
(350, NULL, NULL, 'NABARD', 'National Bank for Agriculture and Rural Development', 'organizational'),
(351, NULL, NULL, 'NAAC', 'National Assessment and Accreditation Council', 'organizational'),
(352, NULL, NULL, 'NCC', 'National Cadet Corps', 'organizational'),
(353, NULL, NULL, 'NCERT', 'National Council of Educational Research and Training', 'organizational'),
(354, NULL, NULL, 'NDTV', 'New Delhi Television', 'organizational'),
(355, NULL, NULL, 'NTPC', 'National Thermal Power Corporation', 'organizational'),
(356, NULL, NULL, 'NASA', 'National Aeronautics and Space Administration', 'organizational'),
(357, NULL, NULL, 'NATO', 'North Atlantic Treaty Organization', 'organizational'),
(358, NULL, NULL, 'NSDL', 'National Securities Depository Limited', 'organizational'),
(359, NULL, NULL, 'OEM', 'Original Equipment Manufacturer', 'organizational'),
(360, NULL, NULL, 'ONGC', 'Oil and Natural Gas Corporation', 'organizational'),
(361, NULL, NULL, 'PSU', 'Public Sector Undertaking, Power Supply Unit', 'organizational'),
(362, NULL, NULL, 'PSI', 'Pound per Square Inch & Population Services International', 'organizational'),
(363, NULL, NULL, 'PVR', 'Priya Village Roadshow', 'organizational'),
(364, NULL, NULL, 'RAW', 'Research and Analysis Wing', 'organizational'),
(365, NULL, NULL, 'RSS', 'Really Simple Syndication, Rashtriya Swayamsevak Sangh', 'organizational'),
(366, NULL, NULL, 'SEBI', 'Securities and Exchange Board of India', 'organizational'),
(367, NULL, NULL, 'SME', 'Small and Medium-sized Enterprises', 'organizational'),
(368, NULL, NULL, 'SOS', 'Save Our Souls', 'organizational'),
(369, NULL, NULL, 'SAARC', 'South Asian Association for Regional Cooperation', 'organizational'),
(370, NULL, NULL, 'SAP', 'systems, applications and products', 'organizational'),
(371, NULL, NULL, 'SIT', 'Special Investigation Team', 'organizational'),
(372, NULL, NULL, 'SWAT', 'Special Weapons and Tactics', 'organizational'),
(373, NULL, NULL, 'TAFE', 'Tractors and Farm Equipment', 'organizational'),
(374, NULL, NULL, 'TOI', 'Times of India', 'organizational'),
(375, NULL, NULL, 'UPA', 'United Production of America & United Progressive Alliance', 'organizational'),
(376, NULL, NULL, 'USSR', 'Union of Soviet Socialist Republics', 'organizational'),
(377, NULL, NULL, 'UGC', 'University Grants Commission', 'organizational'),
(378, NULL, NULL, 'UNESCO', 'United Nations Educational, Scientific and Cultural Organization', 'organizational'),
(379, NULL, NULL, 'UNICEF', 'United Nations Children\'s Fund', 'organizational'),
(380, NULL, NULL, 'UPSC', 'Union Public Service Commission', 'organizational'),
(381, NULL, NULL, 'WEF', 'World Economic Forum', 'organizational'),
(382, NULL, NULL, 'WIPRO', 'Western India Products', 'organizational'),
(383, NULL, NULL, 'WWF', 'World Wide Fund for Nature, World Wrestling Federation', 'organizational'),
(384, NULL, NULL, 'MLA', 'Member of Legislative Assembly', 'political'),
(385, NULL, NULL, 'RSS', 'Really Simple Syndication, Rashtriya Swayamsevak Sangh', 'political'),
(386, NULL, NULL, 'UNESCO', 'United Nations Educational, Scientific and Cultural Organization', 'political'),
(387, NULL, NULL, 'SAARC', 'South Asian Association for Regional Cooperation', 'political'),
(388, NULL, NULL, 'UPA', 'United Progressive Alliance, United Production of America', 'political'),
(389, NULL, NULL, 'ASR', 'Automated Speech Recognition', 'technical'),
(390, NULL, NULL, 'BLOB', 'Binary Large Object', 'technical'),
(391, NULL, NULL, 'CAD', 'Computer Aided Design', 'technical'),
(392, NULL, NULL, 'CCTV', 'Closed Circuit Television', 'technical'),
(393, NULL, NULL, 'CDMA', 'Code Division Multiple Access', 'technical'),
(394, NULL, NULL, 'CRT', 'Cathode Ray Tube', 'technical'),
(395, NULL, NULL, 'DSL', 'Digital Subscriber Line', 'technical'),
(396, NULL, NULL, 'DSLR', 'Digital single-lens reflex', 'technical'),
(397, NULL, NULL, 'DTP', 'Desk-Top Publishing & Distributed Transaction Processing', 'technical'),
(398, NULL, NULL, 'EDGE', 'Enhanced Data Rates for GSM (Global System for Mobile) Evolution', 'technical'),
(399, NULL, NULL, 'EDP', 'Electronic Data Processing', 'technical'),
(400, NULL, NULL, 'FTP', 'File Transfer Protocol', 'technical'),
(401, NULL, NULL, 'GIF', 'Graphics Interchange Format', 'technical'),
(402, NULL, NULL, 'GNU', 'GNU\'s Not UNIX', 'technical'),
(403, NULL, NULL, 'GPRS', 'General Packet Radio Service', 'technical'),
(404, NULL, NULL, 'GPS', 'Global Positioning System', 'technical'),
(405, NULL, NULL, 'GSM', 'Global System for Mobile communication', 'technical'),
(406, NULL, NULL, 'GUI', 'Graphical User Interface', 'technical'),
(407, NULL, NULL, 'HDMI', 'High Definition Multimedia Interface', 'technical'),
(408, NULL, NULL, 'HVAC', 'Heating Ventilation and Air Conditioning', 'technical'),
(409, NULL, NULL, 'IC', 'Integrated Circuit', 'technical'),
(410, NULL, NULL, 'IDE', 'Integrated Development Environment & Integrated Drive Electronics', 'technical'),
(411, NULL, NULL, 'IMEI', 'International Mobile Equipment Identity', 'technical'),
(412, NULL, NULL, 'INTERNET', 'Interconnected Network', 'technical'),
(413, NULL, NULL, 'IP', 'Internet Protocol', 'technical'),
(414, NULL, NULL, 'IPS', 'Indian Police Service, In-Plane Switching & Intrusion Prevention System', 'technical'),
(415, NULL, NULL, 'ISD', 'International Subscriber Dialing', 'technical'),
(416, NULL, NULL, 'JSF', 'JavaServer Faces', 'technical'),
(417, NULL, NULL, 'LASER', 'Light Amplification by Stimulated Emission of Radiation', 'technical'),
(418, NULL, NULL, 'MSC', 'Mobile Switching Center & Master of Science', 'technical'),
(419, NULL, NULL, 'MSC', 'Microsoft Transaction Server, Mobile Telephone Service & Multichannel Television Sound', 'technical'),
(420, NULL, NULL, 'PFA', 'Please Find Attachment & Predictive Failure Analysis', 'technical'),
(421, NULL, NULL, 'PING', 'Packet InterNet Groper', 'technical'),
(422, NULL, NULL, 'RADAR', 'Radio Detection And Ranging', 'technical'),
(423, NULL, NULL, 'RAM', 'Random Access Memory', 'technical'),
(424, NULL, NULL, 'RO', 'Reverse Osmosis', 'technical'),
(425, NULL, NULL, 'UV', 'Ultraviolet', 'technical'),
(426, NULL, NULL, 'UF', 'Ultrafiltration', 'technical'),
(427, NULL, NULL, 'SONAR', 'Sound Navigation and Ranging', 'technical'),
(428, NULL, NULL, 'SLR', 'Single Lens Reflex, Statutory Liquidity Ratio', 'technical'),
(429, NULL, NULL, 'SMPS', 'Switched-Mode Power Supply & Switching Mode Power Supply', 'technical'),
(430, NULL, NULL, 'TFT', 'Thin Film Transistor', 'technical'),
(431, NULL, NULL, 'UML', 'Unified Modeling Language', 'technical'),
(432, NULL, NULL, 'UPS', 'Uninterruptible Power Supply', 'technical'),
(433, NULL, NULL, 'VHDL', 'VHSIC (Very High Speed Integrated Circuit) Hardware Description Language', 'technical'),
(434, NULL, NULL, 'VPI', 'Virtual Path Identifier', 'technical'),
(435, NULL, NULL, 'WPA', 'Wi-Fi Protected Access', 'technical'),
(436, NULL, NULL, 'BSC', 'Bachelor of Science, Base Station Controller', 'telecom'),
(437, NULL, NULL, 'CDMA', 'Code Division Multiple Access', 'telecom'),
(438, NULL, NULL, 'FM', 'Frequency Modulation', 'telecom'),
(439, NULL, NULL, 'GPRS', 'General Packet Radio Service', 'telecom'),
(440, NULL, NULL, 'GSM', 'Global System for Mobile communication', 'telecom'),
(441, NULL, NULL, 'ISD', 'International Subscriber Dialing', 'telecom'),
(442, NULL, NULL, 'ITC', 'Indian Tobacco Company, International Trade Center, Independent Telephone Company', 'telecom'),
(443, NULL, NULL, 'PCO', 'Public Call Office', 'telecom'),
(444, NULL, NULL, 'PCS', 'Provincial Civil Service & Personal Communication Service', 'telecom'),
(445, NULL, NULL, 'WIFI', 'Wireless Fidelity', 'telecom'),
(446, NULL, NULL, 'AD', 'Anno Domini', 'mixed'),
(447, NULL, NULL, 'AM AND PM', 'AM: Anti Meridiem, PM: Post Meridiem', 'mixed'),
(448, NULL, NULL, 'CC', 'Cubic Capacity/ Cubic Centimeter, Carbon Copy', 'mixed'),
(449, NULL, NULL, 'CNG', 'Compressed Natural Gas', 'mixed'),
(450, NULL, NULL, 'DDT', 'DichloroDiphenylTrichloroethane', 'mixed'),
(451, NULL, NULL, 'DJ', 'Disc Jockey', 'mixed'),
(452, NULL, NULL, 'ICU', 'Intensive Care Unit', 'mixed'),
(453, NULL, NULL, 'INDIA', 'No, but can be termed as Independent National Democratic Intelligent Area', 'mixed'),
(454, NULL, NULL, 'LOVE', 'No, but can be Life\'s Only Valuable Emotion, Long Lasting Original Valuable Emotion', 'fun'),
(455, NULL, NULL, 'MIS', 'Management Information System', 'mixed'),
(456, NULL, NULL, 'MRI', 'Magnetic Resonance Imaging', 'mixed'),
(457, NULL, NULL, 'NGO', 'Non-Governmental Organization', 'mixed'),
(458, NULL, NULL, 'OPD', 'Outpatient Department', 'mixed'),
(459, NULL, NULL, 'OK', 'Olla Kalla or Oll Korrect', 'fun'),
(460, NULL, NULL, 'PNR', 'Passenger Name Record', 'railway'),
(461, NULL, NULL, 'RIP', 'Rest In Peace, Routing Information Protocol', 'mixed'),
(462, NULL, NULL, 'TRP', 'Television Rating Point', 'mixed'),
(463, NULL, NULL, 'PKMKB', 'Pakistan Ka Maa Kaa Bhosra', 'fun'),
(464, NULL, NULL, 'MC', 'Madhar Chod (In english "Mother Fucker")', 'fun'),
(465, NULL, NULL, 'BC', 'Bahan chod (In english "Sister Fucker")', 'fun'),
(466, NULL, NULL, 'GM', 'Good Morning(Some time used for Gand marao)', 'fun'),
(467, NULL, NULL, 'XOXO', 'Hugs and kisses', 'fun');

-- --------------------------------------------------------

--
-- Table structure for table `joke`
--

CREATE TABLE `joke` (
  `joke_id` int(11) NOT NULL,
  `joke` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `joke_on` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `joke_posted_by` int(11) DEFAULT NULL,
  `like_dislike` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `joke`
--

INSERT INTO `joke` (`joke_id`, `joke`, `joke_on`, `joke_posted_by`, `like_dislike`) VALUES
(14, '<p>दुकानदार : कैसा सूट दिखाऊँ ?<br />महिला : पड़ोसन तड़प &ndash; तड़प कर दम तोड़ दे ऐसा &hellip;&hellip;</p>', NULL, NULL, 0),
(15, '<p>कुछ तो पढ़ी लिखी होगी गर्मी &hellip;. वरना इतनी डिग्रीयाँ लेकर कौन घूमता है ?</p>', NULL, NULL, 0),
(16, '<p>सोनू निगम : सुबह -सुबह मेरी नींद आज़ान से खुलती है<br />पाकिस्तानी : खुशनसीब हो भाई जान , हमारी तो बम धमाके से खुलती है</p>', NULL, NULL, 0),
(17, '<p>टीचर &ndash; संजू यमुना नदी कहॉं बहती है ?<br />संजू &ndash; जमीन पर<br />टीचर &ndash; नक्शे में बताओं कहॉं बहती है ?<br />संजू &ndash; नक्शे में कैसे बह सकती है, नक्शा गल नहीं जाएगा</p>', NULL, NULL, 0),
(20, '<p>सुबह एक महिला फल वाले से अंग्रेजी में फल मांग रही थी ये बोलकर &ndash; &ldquo;Give me some destroyed husband&rdquo;<br />एक घंटा लगा यह समझने में कि वह &ldquo;नाशपति &rdquo; मांग रही थी।</p>', NULL, NULL, 0),
(19, '<p>पत्नी:- अजी सुनते हो ? हमारी शादी करवाने वाले पंडित जी का देहांत हो गया&nbsp;<br />पति:- एक ना एक दिन तो उसे उसके कर्मों का फल मिलना ही था.</p>', NULL, NULL, 0),
(21, '<p>संता (नौकर से) &ndash; ज़रा देख तो बाहर सूरज निकला या नहीं ?<br />नौकर &ndash; बाहर तो अँधेरा है !<br />संता &ndash; अरे तो टॉर्च जलाकर देख ले कामचोर</p>', 'santa banta', NULL, 0),
(22, '<p>Santa(संता): हम पति-पत्नी तमिल सीखना चाहते हैं!<br />Banta(बंता): वो क्यों?<br />Santa(संता): हमने एक तमिल बच्चा गोद लिया है!हम सोचते हैं जब वो बोलने लगे तो उससे पहले पहले हम तमिल सीख लें!</p>', 'santa banta', NULL, 0),
(23, '<p>Santa(संता) &ndash; डॉक्टर साहब 2 साल पहले मुझे बुखार आया था ।<br />डॉक्टर- तो अब क्या ?<br />Santa(संता) &ndash; आपने नहाने को मना किया था, आज इधर से गुजर रहा था तो सोचा कि पूछता चलू ..&rdquo;अब नहा लूँ क्या&rdquo; ??</p>', 'santa banta', NULL, 0),
(24, '<p>संता का सर फट गया&hellip;.<br />डॉक्टर:- ये कैसे हुआ?<br />संता:-मैं ईंट से पत्थर तोड़ रहा था।<br />एक आदमी ने मुझसे कहा, &ldquo;कभी खोपड़ी का इस्तेमाल भी कर लिया कर।&rdquo;</p>', 'santa banta', NULL, 0),
(25, '<p>संता :-आज फिर मुझे आलिया भट्ट को किस करने को दिल कर रहा है ।<br />बंता:-क्या ??????तुम आलिया को पहले किस कर चुके हो?<br />संता:- नहीं, एक बार पहले भी दिल किया था !</p>', 'santa banta', NULL, 0),
(26, '<p>संता एक बार double decker वाली बस में चढ़ गया &hellip;.कंडक्टर ने उसे ऊपर भेज दिया , संता थोड़ी ही देर में भागता हुआ वापिस आया और बोला<br />&rdquo; साले मरवाएगा क्या ऊपर तो ड्राइवर ही नहीं है&nbsp;</p>', 'santa banta', NULL, 0),
(27, '<p>एक नीग्रो बस में अपने बच्चे के साथ जा रहा था&hellip;.<br />कंडक्टर ने उसका बच्चा देखकर कहा- &ldquo;इतना काला बच्चा मैंने आज तक नहीं देखा&rdquo;&hellip;&hellip;<br />नीग्रो को गुस्सा आया, लेकिन वो कुछ नहीं बोला और सीट पर आकर मुह फुलाकर बैठ गया।<br />संता ने उससे पूछा: &ldquo;क्या हुआ भाई साहब&rdquo;?<br />नीग्रो ने संता से कहा: अरे यार, उस कंडक्टर ने बेइज्जती कर दी। . . . .<br />संता : अरे मार साले को जाकर . . . ला ये चिम्पांजी का बच्चा मुझे पकड़ा दे&hellip; साला काटेगा तो नहीं&hellip;&hellip;..</p>', 'santa banta', NULL, 0),
(28, '<p>संता पेड़ पर उल्टे लटके हुए था,<br />बंता ने पूछा &ndash; क्या हो गया?<br />संता- कुछ नहीं, सिर दर्द की गोली खाई है, कहीं पेट में ना चली जाए.!!!</p>', 'santa banta', NULL, 0),
(29, '<p>बीवी &ndash; सुनो जी, जब हमारी नयी नयी शादी हुई थी,<br />तो जब मैं खाना बना कर लाती थी तो तुम खुद कम खाते थे,<br />मुझे ज्यादा खिलाते थे।<br />संता &ndash; तो ?<br />बीवी &ndash; तो अब ऐसा क्यों नहीं करते ?<br />संता &ndash; क्यूंकि अब तुम अच्छा खाना बनाना सीख गयी हो&hellip;.﻿</p>', 'santa banta', NULL, 0),
(30, '<p>संता शराब पीकर नंबर dial करता है , तभी लड़की की आवाज़ आती है &rdquo; Call करने के लिए आपके पास पर्याप्त Balance नहीं है , कृपया recharge करवाएँ<br />संता : बस जानेमन तुमसे बात हो जाती है ये ही काफी है मेरे लिए</p>', 'santa banta', NULL, 0),
(31, '<p>संता : आज सुबह एक बिल्ली ने मेरा रास्ता काट दिया<br />बंता : फिर ?<br />संता : फिर क्या आगे जाकर उस बिल्ली का एक्सीडेंट हो गया। &hellip;.. साला हमसे पंगा</p>', 'santa banta', NULL, 0),
(32, '<p>संता बड़ा परेशान था, बेचारे की शादी जो नहीं हो रही थी। हर बार शादी होते होते टूट जाती। सारे दोस्तों से पूछ लिया लेकिन कोई समाधान नहीं मिला।<br />बेचारा एक दिन एक पंडित जी के पास पहुंच गया और बोला- पंडित जी कोई उपाय बताए मेरी शादी नहीं हो रही हमेशा टूट जाती है।<br />पंडित जी ने कहा- शादी हो जाएगी, लेकिन सबसे पहले तुम लोगो से सदा सुखी होने का आशीर्वाद लेना बंद करो।</p>', 'santa banta', NULL, 0),
(33, '<p>संता मोबाइल कम्पनी में नौकरी लेने गया तो पहले ही सवाल का जवाब देने पर उसको भगा दिया गया!<br />सवाल: सबसे बड़ा नेटवर्क कौन सा है?<br />संता: कार्टून नेटवर्क!</p>', 'santa banta', NULL, 0),
(34, '<p>संता रोटी का एक निवाला खुद खा रहा था और एक पास बैठी मुर्गी को खिला रहा था&hellip;<br />बंता :- &ldquo; ये क्या कर रहा है ? &rdquo;<br />संता :- &ldquo; चिकन के साथ रोटी खा रहा हूँ &rdquo;</p>', 'santa banta', NULL, 0),
(35, '<p>संता और बंता शराब के नशे में धुत्त होकर रेल की पटरियों के बीचों-बीच जा रहे थे&hellip;.<br />संता : हे भगवान, मैंने इतनी सीढ़ियां पहले कभी नहीं चढ़ीं<br />बंता : अरे सीढ़ियाँ तो ठीक हैं, मैं तो इस बात को लेकर हैरान हूं कि हाथ से पकड़ने के लिए रेलिंग कितने नीचे लगी हुई हैं &hellip;.</p>', 'santa banta', NULL, 0),
(36, '<p>एक मोटरसाइकिल वाले ने पता पूछने के लिए संता से पूछा&hellip;.<br />Excuse me&hellip; मुझे &ldquo;लाल किला&rdquo; जाना है ?<br />संता: तो जा ना भाई, ऐसे हर किसी को बताते बताते जायेगा तो पहुचेगा कब ??</p>', 'santa banta', NULL, 0),
(37, '<p>संता ने एक हलवाई की दुकान पर आधा किलो जलेबी लेकर खाई और बिना पैसे दिए जाने लगा..<br />दुकानदार बोला &ndash; अरे जलेबी के पैसे तो दिए जा ।<br />संता &ndash; पैसे तो है नहीं ..<br />इस पर दूकानदार ने अपने नौकर को बुला कर संता की भरपूर पिटाई करवा दी।<br />पिटने के बाद संता उठा और हाथ पैर झाड़ते हुए बोला- इसी भाव पर एक किलो और तौल दे ।</p>', 'santa banta', NULL, 0),
(38, '<p>संता अंडरवियर लेने दुकान पर गया।<br />दुकानदार ने उसे 300 रूपये का अंडरवियर दिखाया।<br />पैसे सुनकर संता बोला: यार रोज पहनने वाला दिखाओ,पार्टीवियर नहीं चाहिए।</p>', 'santa banta', NULL, 0),
(39, '<p>बंता wife को English सिखा रहा था।<br />दोपहर में Wife बोली, &ldquo;Dinner लो जी&rdquo;&hellip;..<br />बंता &ndash; जाहिल औरत ये Dinner नही Lunch है&hellip;.&rdquo;<br />Wife &ndash; जाहिल तू, तेरा सारा ख़ानदान करमफूटे&hellip;.ये रात का बचा हुआ खाना है&hellip; दिमाग मत दौड़ा, रोटी चरले।</p>', 'santa banta', NULL, 0),
(40, '<p>संता के हाथ में नया फोन देखकर बंता बोला: नया फोन कब खरीदा?<br />संता : नया नहीं, गर्लफ्रेंड का है!<br />बंता : गर्लफ्रेंड का फोन क्यूँ ले आया?<br />संता :रोज कहती थी, मेरा फोन नहीं उठाते..! आज मौका मिला, तो उठा लाया!!</p>', 'santa banta', NULL, 0),
(41, '<p>भिखारी: 5 रुपए का सवाल है बाबा !<br />संता: पूछो, शायद मुझे आता हो।<br />भिखारी: बेहोश &hellip;..संता rocks&hellip;.</p>', 'santa banta', NULL, 0),
(42, '<p>संता पहली बार 5 स्टार होटल में गया&hellip; झिझकते हुए चाय का आर्डर दिया&hellip;.<br />कुछ ही मिनट में एक सजा धजा वेटर एक केतली में गर्म पानी, एक केतली में दूध, एक चाय पत्ती का पाउच और थोड़े चीनी के क्यूब देकर चला गया&hellip; संता ने जैसे तैसे चाय बना कर पी ली&hellip;<br />थोड़ी देर बाद वेटर आया और पूछा : would u like to have anything more, sir?<br />संता बोला : इच्छा तो बिरयानी खाने की भी थी, पर रहने दो &hellip; मुझे बनाना नहीं आता !!!</p>', 'santa banta', NULL, 0),
(43, '<p>संता :- तुम ऑपरेशन कराए बिना ही हॉस्पिटल से क्यों भाग गए ?<br />बंता :- नर्स बार बार कह रही थी कि डरो मत, हिम्मत रखो, कुछ नहीं होगा.. ये तो बस एक छोटा सा ऑपरेशन है!<br />संता :- तो इसमें डरने वाली कौन सी बात है ? सही तो कह रही थी नर्स !<br />बंता :- साले, वो मुझसे नहीं डॉक्टर से कह रही थी !!!</p>', 'santa banta', NULL, 0),
(44, '<p>जज औरत से : हाँ तो बताइए आपके तलाक की ज़मीन क्या है ?<br />औरत : ज़मीन, शहर के बीचो बीच एक बहुत बड़ा बंगला है और उसके पास थोड़ी सी खाली ज़मीन है&nbsp;<br />जज : नहीं &ndash; नहीं , मेरे कहने का मतलब है कि तलाक़ के लिए ग्राउंड्स क्या है ?<br />औरत : ग्राउंड तो बंगले के पास ही है पर ज्यादा बड़ा नहीं है&nbsp;<br />जज : आप समझ नहीं रही है मैं आधार की बात कर रहा हूँ &nbsp;?<br />औरत : आधार कार्ड तो बना हुआ है पर उसका कैमरा अच्छा नहीं था तो फोटो अच्छी नहीं आई&nbsp;<br />जज : तलाक की नींव क्या है ? ?<br />औरत: नींव बहुत गहरी है आप फ़िक्र न करे&nbsp;<br />जज : देवी जी आप तलाक़ क्यों लेना चाहती है ?<br />औरत: तलाक मैं नहीं मेरे पति लेना चाहते है&nbsp;<br />जज औरत के पति से : आपके अपनी पत्नी से तलाक लेने की वजह क्या है ?<br />पति : यही मगज़मारी जो अभी आपके साथ हुई मेरे साथ रोज़ होती है |<br />जज की आँखों में ऑंसू आ गए</p>', 'husband wife', NULL, 0),
(45, '<p>गणेश जी की दो पत्नियाँ है &ndash; रिद्धि और सिद्धि<br />और इन्सान की एक ही है और वो भी ज़िद्दी</p>', 'husband wife', NULL, 0),
(46, '<p>वर्मा जी वकील से : मुझे अपनी पत्नी से तलाक चाहिए , वो पिछले 6 महीने से मुझसे बात नहीं कर रही<br />वकील : एक बार अच्छी तरह से सोच लो , ऐसी पत्नी बार बार नहीं मिलती</p>', 'husband wife', NULL, 0),
(47, '<p>पति ने नहाने के बाद बाथरूम से आवाज़ लगाई : &ldquo;सुनो ज़रा तौलिया देना मेरा &rdquo;<br />पत्नी (गुस्से में ): तुम हमेशा तौलिये के बिना ही क्यों जाते हो ? अब नाश्ता बनाऊँ या तुम्हें तौलिया दूँ ?<br />बनियान भी धोकर नल पर टाँग देते हो वो भी मैं उठाऊँ &hellip; नहाने के बाद wiper भी नहीं मारते तुम , कल तो light भी बंद नहीं की&hellip;. गीले गीले पैर लेकर बाहर आते हो पहर पूरे घर में घुमते हो फ़िर उस पर मिट्टी पड़ जाती है और सारा घर गंदा हो जाता है , अपनी कामवाली बाथरूम साफ़ करने गयी फिसल कर गिर गयी और 3 दिन नहीं आयी , कितना बुरा हाल हुआ था मेरा काम करके&hellip;..<br />पति (मन में सोचते हुए ) : तौलिया माँग कर गलती कर दी या शादी करके&nbsp;</p>', 'husband wife', NULL, 0),
(48, '<p>पत्नी (गुस्से में ): मैं घर छोड़ कर जा रही हूँ &hellip;&nbsp;<br />पति (गुस्से में ): हाँ &ldquo;जान &rdquo; छोड़ो अब&nbsp;<br />पत्नी : बस आपकी यही &ldquo;जान &rdquo; कहने की आदत ना हमेशा मुझे रोक लेती है</p>', 'husband wife', NULL, 0),
(49, '<p>पति हाथ पाँव छिलवाकर और एक आंख सुजवाकर घर आया&hellip;&nbsp;<br />पत्नी ने घबराकर पति से पूछा : क्या हुआ ???<br />पति : कुछ नहीं, एक औरत स्कूटी से टक्कर मार के निकल गई&nbsp;<br />पत्नी : &ndash; तो उसके स्कूटर का नंबर नोट किया, कौन थी ?? कुछ तो याद होगा&nbsp;<br />पति : &ndash; नहीं, दर्द के कारण स्कूटर का रंग और नंबर तो नहीं देख पाया पर&nbsp; बहुत गोरी व सुनहरे बाल वाली थी |&nbsp;उसने गहरे हरे रंग का सूट पहना था, गुलाबी कलर की चूड़ियां , गहरे लाल कलर की लिपस्टिक, कानों में हीरे की बालियां थी, हाथों में मेहंदी लगी थी और हाँ दायें गाल पे होठों के पास तिल भी था &hellip;&nbsp;इतना बताते ही पतिदेव की दूसरी आंख भी सूज गयी&nbsp;</p>', 'husband wife', NULL, 0),
(50, '<p>बरसात के इस सुहाने मौसम में<br />singles &ndash; सपने देखते हैं<br />couples &ndash; date करते है<br />शादीशुदा : ये कपड़े कहाँ सूखने डालूँ ?&nbsp;</p>', 'husband wife', NULL, 0),
(51, '<p>पत्नी : तुम कोई भी काम ढंग से नहीं करते हो ?<br />पति : अब क्या हुआ ? क्या कर दिया ऐसा मैंने ?<br />पत्नी : तुमने जो कल cylinder लगाया था&nbsp;<br />पति : हाँ लगाया था&nbsp;<br />पत्नी : पता नहीं कैसे लगाया कल से दो बार दूध उबला दोनों बार ही दूध फट गया</p>', 'husband wife', NULL, 0),
(52, '<p>पति : तुम हर बात पर हमेशा मेरा-मेरा करती हो, तुम्हें हमारा kehna चाहिए<br />पत्नी कुछ ढूंढ रही होती है अलमारी में&hellip;.<br />पति : क्या ढूँढ रही हो ?<br />पत्नी : हमारा पेटीकोट</p>', 'husband wife', NULL, 0),
(53, '<p>पत्नी : तुम मेरे साथ करवाचौथ का व्रत रखोगे ना ?<br />पति : मैंने तुम्हें कभी कहा मेरे साथ दारु पीने चलो</p>', 'husband wife', NULL, 0),
(54, '<p>डॉक्टर : आपकी पत्नी बस दो &ndash; तीन दिन की मेहमान है , I am sorry<br />पति : इसमें सॉरी की क्या बात है डॉक्टर साहिब ये 2-3 दिन भी जैसे तैसे कट ही जायेंगे</p>', 'husband wife', NULL, 0),
(55, '<p>पति ने पत्नी से कहा पिछले महीने का हिसाब दो<br />पत्नी ने हिसाब लिखना शुरू किया और बीच बीच में लिखने लगी भ. जा. कि. गे .<br />800भ. जा. कि. गे .<br />2000भ. जा. कि. गे .<br />500भ. जा. कि. गे .<br />पति ने पूछा ये भ. जा.कि. गे की क्या है ?<br />पत्नी : भगवान् जाने किधर गए</p>', 'husband wife', NULL, 0),
(56, '<p>पति को बाजार जाते हुए देख पत्नी ने पैसे देकर कहा &ldquo;कुछ ऐसी चीज़ लाना जिस से मैं सुन्दर दिखूं&rdquo;&nbsp;<br />पति खुद के लिए Whisky की दो बोतल ले आया।</p>', 'husband wife', NULL, 0),
(57, '<p>भु यह क्या मोह माया है?<br />अपना बच्चा रोये तो दिल में दर्द होता है &hellip;.. और दूसरे का रोये तो सर में!! !!<br />अपनी बीवी रोये तो सर में दर्द होता है&hellip;&hellip; और दूसरे की रोये तो दिल में<br />सब प्रभु की माया है&nbsp;</p>', 'husband wife', NULL, 0),
(58, '<p>मुझे किसी ने सलाह दी की बीवी से बहस में नहीं जीता जा सकता इसलिए बस मुस्कुरा दिया करो&nbsp;<br />मैंने भी कोशिश की&nbsp;<br />बीवी : बहुत हंसी आ रही है आजकल तुम्हे ? लगता है तुम्हारा भूत उतारना ही पड़ेगा&nbsp;</p>', 'husband wife', NULL, 0),
(59, '<p>जब लड़की अपने, पिता के घर होती है,&rdquo; रानी &rdquo; बन कर रहती है&hellip;..<br />पहली बार ससुराल जाती है,&rdquo; लक्ष्मी &ldquo;,बनकर जाती है&hellip;&hellip;.<br />और ससुराल में काम कऱते-करते &rdquo; बाई &rdquo; बन जाती है&hellip;&hellip;&nbsp;<br />इस तरह लड़कियाँ &ldquo;रानी-लक्ष्मी-बाई&rdquo; बन जाती है&hellip;!!!<br />और फिर वो पति को अंग्रेज समझ कर बिना तलवार के ही इतना परेशान कर देती है कि&nbsp;<br />बेचारा पति, अंग्रेज न हो कर भी &ldquo;अंग्रेजी&rdquo; &nbsp;लेना शुरू कर देता है</p>', 'husband wife', NULL, 0),
(60, '<p>कर्मचारी अपने साहब से &ndash; साहब, आप ऑफिस में शादीशुदा आदमियों को ही क्यों रखते हो ?<br />साहब- क्योंकि उन्हें बेइज़्ज़ती सहने की आदत होती है और घर जाने की जल्दी भी नहीं होती।</p>', 'husband wife', NULL, 0),
(61, '<p>पति- तेरे बाप की जले पर नमक छिड़कने की आदत गई नहीं।<br />पत्नी- क्यों क्या हुआ?<br />पति- आज फिर से पूछ रहा था कि मेरी बेटी से शादी करके खुश तो हो ना?&nbsp;</p>', 'husband wife', NULL, 0),
(62, '<p>अगर आपकी पत्नी आपका कहना नहीं मानती है तो..&hellip;&hellip;&hellip;&hellip;&hellip;..<br />तो..&hellip;&hellip;&hellip;&hellip;&hellip;.<br />इतना ध्यान से मत पढ़ो&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;<br />किसी की नहीं मानती &hellip;&hellip;&hellip;&hellip;&hellip;..<br />इसका कोई इलाज नहीं है</p>', 'husband wife', NULL, 0),
(63, '<p>पत्नी : अजी सुनते हो, आपका दोस्त एक पागल लड़की से शादी करने जा रहा है&hellip;उसे रोकते क्यों नहीं ?<br />पति &ndash; क्यों रोकूँ ? उस दोस्त ने मुझे रोका था क्या ?</p>', 'husband wife', NULL, 0),
(64, '<p>पत्नी : अजी सुनते हो दो किलो मटर ले लूँ ?<br />पति : हाँ &hellip;.. ले लो जो ठीक लग रहा है कर लो<br />पत्नी : राय नहीं माँग रही आपकी &nbsp;&hellip;&hellip; पूछ रही हूँ &hellip;&hellip; छील लोगे इतने &hellip;.. कि कम लूँ&nbsp;</p>', 'husband wife', NULL, 0),
(65, '<p>पति Whisky का एक गिलास बनाता है और पत्नी से कहता है- लो पीओ इसे&hellip;<br />पत्नी Whisky का एक घूँट पीती है और कहती है- छी छी&hellip; कितनी कड़वी है&hellip;.<br />पति- और तू सोचती है कि मै अय्याशी / मज़े करता हूँ&hellip;जहर के घूँट पीता हूँ &hellip; जहर के&hellip;</p>', 'husband wife', NULL, 0),
(66, '<p>friends : Asian Paints ( जो दुनिया बदल दे )<br />girlfriend : Everest Msala ( taste में best )<br />पत्नी : mosquito coil ( कोने -कोने से ढूँढ कर मारे )</p>', 'husband wife', NULL, 0),
(67, '<p>पति ने पत्नी को phone किया&hellip;.. बहुत देर घण्टी बजती रही<br />पति (गुस्से में ) : इतनी देर से फ़ोन क्यों उठाया ?<br />पत्नी (खीज में ) : ringtone पर नाच रही थी&nbsp;</p>', 'husband wife', NULL, 0),
(68, '<p>आजकल बीवी बात-बात में GST बोलने लगी है&hellip; कैसी भी बहस चल रही हो वो GST बोल कर बहस को ख़त्म कर देती है. तंग आकर मैंने पूँछ ही लिया: ये तुम बात करते-करते बीच में ही GST बोल कर चल देती हो&hellip;क्या मतलब है तुम्हारा ? और उसने जो जवाब दिया वो सुनकर मैं बेहोश होते होते बचा<br />G &ndash; गलती<br />S &ndash; सिर्फ<br />T &ndash; तुम्हारी है</p>', 'husband wife', NULL, 0),
(69, '<p>बीवी : आप सुलेमान की बीवी के जनाज़े पर नहीं गए ?<br />पति : किस मुँह से जाऊँ तीसरी बार बीवी के जनाज़े में बुला रहा है और मैं उसे एक बार भी नहीं बुला सका</p>', 'husband wife', NULL, 0),
(70, '<p>एक आदमी डॉक्टर के पास गया<br />डॉक्टर: आपको आराम की ज़रूरत है , नींद की गोली दे रहा हूँ , अपनी बीवी को खिला देना</p>', 'husband wife', NULL, 0),
(71, '<p>एक प्रश्न : पत्नी क्या है ?<br />उत्तर : पत्नी उस शक्ति का नाम है जिसके घूरने भर से देखने पर टिंडे की सब्ज़ी में पनीर का स्वाद आने लगता है</p>', 'husband wife', NULL, 0),
(72, '<p>पत्नी : अजी सुनते हो ? अगर मैं वक़्त होती तो लोग मेरी कितनी कदर करते है न ?<br />पति : लोग तुम्हे देख कर डर जाते&nbsp;<br />पत्नी : डर क्यों जाते ?&nbsp;<br />पति : लोग कहते देखो बुरा वक़्त आ रहा है</p>', 'husband wife', NULL, 0),
(73, '<p>एक बॉस ने अपने नए ऑफिस में एक कैलेंडर टाँगा<br />&rdquo; I am the Boss , Don&rsquo;t Forget and remain in your limits&rdquo;<br />जब बॉस लंच से वापिस आया तो टेबल पर एक नोट देखा उसमें लिखा था &ldquo;आपकी बीवी का फ़ोन आया था बहुत गुस्से में थी और कह रही थी आपको कह दे की जो कैलेंडर वो घर से लाये हैं वो शाम को वापिस ले आये</p>', 'husband wife', NULL, 0),
(74, '<p>पति अपने दोस्त से : यार मेरी पत्नी बहुत खर्चीले स्वभाव की हो गई है , आये दिन कभी 1000 कभी 2000 मांगती रहती है&nbsp;<br />दोस्त : तुम्हारी पत्नी इतने पैसों का करती क्या है ?&nbsp;<br />पहला दोस्त : क्या पता ? मैंने कभी दिए ही नहीं</p>', 'husband wife', NULL, 0),
(75, '<p>पत्नी : अगर मेरी किसी राक्षस के साथ भी शादी हो जाती तो भी मैं इतना दुखी न होती जितनी तुम्हारी साथ हूँ&nbsp;<br />पति : पगली !! खून के रिश्तों में कहाँ शादी होती है</p>', 'husband wife', NULL, 0),
(76, '<p>पत्नी तैयार होकर अपने पति से पूछती है : कैसी लग रही हूँ मैं ?&nbsp;<br />पति : कसम से दिल तो कर रहा है कि तुझे पाकिस्तान फेंक आऊँ&nbsp;<br />पत्नी : क्या मतलब ?&nbsp;<br />पति : बम लग रही है बम</p>', 'husband wife', NULL, 0),
(77, '<p>पहला दोस्त : यार ये शादी का क्या मतलब होता है ?<br />दूसरा दोस्त : धूमधाम से खुद की सुपारी देना</p>', 'husband wife', NULL, 0),
(78, '<p>नेहा : कल तुम किट्टी पार्टी में क्यों नहीं आयी ?<br />दीपिका : यार कल मेरी BMW नहीं आई थी इसलिए<br />नेहा : BMW ??<br />दीपिका : बर्तन मांजने वाली&nbsp;</p>', 'husband wife', NULL, 0),
(79, '<p>संजू : यार, तू कल इतना दुखी क्यों था?<br />राहुल : मेरी पत्नी ने साड़ी के लिए मुझसे 5,000 रुपये लिए थे।<br />संजू : लेकिन आज इतना खुश क्यों हो रहा है?<br />राहुल : मेरी पत्नी वही साड़ी पहनकर तेरी पत्नी से मिलने जा रही है&nbsp;</p>', 'husband wife', NULL, 0),
(80, '<p>कहते है कि पति परिवार का हेड होता है ..लेकिन लोग भूल जाते हैं कि पत्&zwj;&zwnj;नी परिवार की गरदन होती है ..और गर्दन जिधर मुड़ेगी .. हेड को तो उधर ही मुड़ना है</p>', 'husband wife', NULL, 0),
(81, '<p>पत्नी मायके से फोन करती है पति को -अपना ध्यान रखना, सुना है बहुत डेंगू फैल रहा है<br />पति-मेरा सारा खून तो तू पी गई थी, मच्छर क्या &ldquo;रक्त दान&rdquo; करने आएगा??</p>', 'husband wife', NULL, 0),
(82, '<p>पत्नी: कहाँ पर हो&hellip;???<br />पति: accident हो गया है&hellip;. हॉस्पिटल जा रहा हूँ,,<br />पत्नी: ध्यान देना&hellip;.. टिफ़िन टेढ़ा ना हो जायें वरना दाल गिर जायेगी&nbsp;</p>', 'husband wife', NULL, 0),
(83, '<p>अर्ज़ किया है..LIC वाले भी ग़जब ढाते हैं&hellip;वाह वाह &hellip;LIC वाले भी ग़जब ढाते हैं&hellip;दुसरो की बीवियों के पास घंटो बैठकर, उन्हें उनके पति की मौत के फायदे समझाते है</p>', 'husband wife', NULL, 0),
(84, '<p>सुबह सुबह बीवी ने कहा &ndash; उठो जी, मेरे लिए नाश्ता बना दो ..<br />पति उठा और बाहर जाने लगा<br />पत्नी -अरे कहाँ चल दिए ?<br />पति &ndash; अपने वकील के पास, मुझे तुमसे तलाक़ लेना है<br />पति वकील के घर गया और वहाँ से उलटे पैर लौट आया और चुपचाप नाश्ता बनाने लगा &hellip;<br />क्यों?????<br />क्योंकि वकील बर्तन मांज रहा था&nbsp;</p>', 'husband wife', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `like_count`
--

CREATE TABLE `like_count` (
  `like_id_auto` int(11) NOT NULL,
  `Ans_id` int(11) NOT NULL,
  `liker_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `newuser`
--

CREATE TABLE `newuser` (
  `ID` int(11) NOT NULL,
  `firstname` varchar(50) CHARACTER SET utf8 NOT NULL,
  `lastname` varchar(50) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email_s` int(11) NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 NOT NULL,
  `higher_edu` varchar(300) CHARACTER SET utf8 DEFAULT NULL,
  `age` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `bio` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `best_achievement` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `imagepath` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newuser`
--

INSERT INTO `newuser` (`ID`, `firstname`, `lastname`, `email`, `email_s`, `password`, `higher_edu`, `age`, `bio`, `best_achievement`, `imagepath`) VALUES
(136, 'Alok', 'Kumar', 'alok2274@gmail.com', 0, '9939393215', NULL, NULL, NULL, NULL, 'inquiryhere_Logo.PNG'),
(137, 'Ankit', 'kumar', 'ankit@gmail.com', 1, 'ankitkumar', NULL, NULL, NULL, NULL, 'inquiryhere_Logo.PNG'),
(138, 'ajay', 'pandit', 'panditajay@gmail.com', 0, 'panditajay', NULL, NULL, NULL, NULL, 'inquiryhere_Logo.PNG'),
(139, 'Aman', 'kumar', 'aman@inquiryhere.com', 0, 'mysite', '', NULL, 'Part time jsp programmer and nothing else', '', 'photoof139.jpg'),
(140, 'Pankaj', 'kumar', 'pankajkr.cse2017@gmail.com', 1, 'pankaj@kumar', NULL, NULL, NULL, NULL, 'inquiryhere_Logo.PNG'),
(141, 'Versha', 'Chaudhary', 'varsha24@gmail.com', 0, 'kharagpur', NULL, NULL, NULL, NULL, 'inquiryhere_Logo.PNG'),
(142, 'ben', 'lleve', 'b3n_tot@hotmail.com', 0, 'p@55w0rD', NULL, NULL, NULL, NULL, 'inquiryhere_Logo.PNG'),
(143, 'swami', 'Pushkar', 'swamipushkar95@gmail.com', 0, 'demo123', NULL, NULL, NULL, NULL, 'inquiryhere_Logo.PNG'),
(144, 'mohan', 'lal', 'mohan@gmail.com', 0, 'mohanlal', NULL, NULL, NULL, NULL, 'inquiryhere_Logo.PNG');

-- --------------------------------------------------------

--
-- Table structure for table `nodification_count`
--

CREATE TABLE `nodification_count` (
  `table_unique_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `total_number_of_answer` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nodification_count`
--

INSERT INTO `nodification_count` (`table_unique_id`, `question_id`, `total_number_of_answer`) VALUES
(496, 164, 0),
(497, 165, 1),
(498, 166, 1),
(499, 167, 0),
(500, 168, 0),
(501, 169, 0);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) DEFAULT NULL,
  `q_id` int(255) NOT NULL,
  `question` varchar(2555) CHARACTER SET utf8 DEFAULT NULL,
  `TotalLiked` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `vote` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `q_id`, `question`, `TotalLiked`, `vote`) VALUES
(136, 164, 'अभी के हालात को देखते हुए क्या 12th के बाद Engineering करना चाहिये', NULL, 0),
(137, 165, 'राहुल गांधी को पप्पू क्यों कहते हैं', NULL, 0),
(137, 166, 'पहले surgical strike था ,अब ये air strike क्या है ', NULL, 0),
(142, 167, 'Which is better for website development, JSP or PHP and why', NULL, 2),
(139, 168, 'What you should have for startup. Idea or money or both', NULL, 0),
(144, 169, 'main ye puchna chata hu rahul gandhi ke samrthak se ki usne aise kya kaam kiya hain jo ki usko PM banaya jaye', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `question_topic_tag`
--

CREATE TABLE `question_topic_tag` (
  `unique_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_topic_tag`
--

INSERT INTO `question_topic_tag` (`unique_id`, `question_id`, `tag_id`) VALUES
(462, 164, 255),
(463, 164, 256),
(464, 164, 257),
(465, 165, 258),
(466, 165, 259),
(467, 165, 260),
(468, 166, 261),
(469, 166, 262),
(470, 166, 263),
(471, 166, 264),
(472, 167, 265),
(473, 167, 266),
(474, 167, 267),
(475, 167, 268),
(476, 168, 269),
(477, 168, 270),
(478, 169, 258),
(479, 169, 271),
(480, 169, 272);

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `quotes_id` int(11) NOT NULL,
  `user_email` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `quotes` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `quotes_by` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `like_dislike` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`quotes_id`, `user_email`, `user_id`, `quotes`, `quotes_by`, `like_dislike`) VALUES
(69, NULL, 0, '<p>सफलता, असफलता तो शब्द मात्र है, असली मज़ा तो काम में होता है ।</p>', NULL, 0),
(8, NULL, 0, '<p>ज़िंदेगी मे इतनी तेज़ी से आगे दौड्रोड़ की लोगो के बुराई के धागे आपके पैरो मे ही आकर टूट जाए</p>', NULL, 0),
(9, NULL, 0, '<p>लोग आपके आइडिया को ग़लत बताते है तो आपकी ज़िम्मेदारी है की इसे सही साबित करके दिखाए</p>', 'Arunabh Kumar Founder of TVF', 0),
(10, NULL, 0, '<p>अगर जिंदगी में सुकून चाहते हो तो लोगो की बातो को दिल से लगाना छोर दो</p>', NULL, 0),
(11, NULL, 0, '<p>कुछ आरम्भ करने के लिए आप का महान होना कोई आवश्यक नही.. लेकिन महान होने के लिए आप का कुछ आरम्भ करना अत्यंत आवश्यक है।</p>', NULL, 0),
(12, NULL, 0, '<p>कुछ भी असंभव नहीं . जो सोच सकते है, वो कर सकते है, और वो भी सोच सकते है जो आज तक नहीं किया।</p>', NULL, 0),
(13, NULL, 0, '<p>जिंदगी आसान नहीं होती, इसे आसान बनाना पड़ता है&hellip;! कुछ &lsquo;अंदाज&rsquo; से, कुछ &lsquo;नजर अंदाज &lsquo;से&hellip;&hellip;!</p>', NULL, 0),
(14, NULL, 0, '<p>आप अपना भविष्य नहीं बदल सकते, लेकिन आप अपनी आदतों को बदल सकते हैं और निश्चित रूप से आपकी आदतों से आपका भविष्य बदल सकता है</p>', 'टोनी रॉबिंस', 0),
(15, NULL, 0, '<p>अगर किसी चीज़ को दिल से चाहो तो पूरी कायनात उसे तुमसे मिलाने में लग जाती है |</p>', 'Shah Rukh Khan ,Om Shanti Om', 0),
(16, NULL, 0, '<p>जो खुद खुश रहते है उनसे दुनिया खुश रहती है&nbsp;।</p>', NULL, 0),
(17, NULL, 0, '<p>सबसे छोटा कार्य सबसे महान इरादे से हमेशा बेहतर होता है</p>', NULL, 0),
(18, NULL, 0, '<p>ज़िन्दगी में कुछ फैसले बहुत सख्त होते हैं और यही फैसले ज़िन्दगी का रुख बदल देते हैं!</p>', NULL, 0),
(19, NULL, 0, '<p>ज़िंदगी आगे बढ़ने&nbsp; का नाम है, रुकने का नही</p>', NULL, 0),
(20, NULL, 0, '<p>जहां दूसरों को समझाना मुश्किल हो जाए वहां खुद को समझाना लेना बेहतर होता है</p>', NULL, 0),
(21, NULL, 0, '<p>भीड़ हमेशा आसन रस्ते पर चलती है, जरुरी नहीं वो सही है | अपने रस्ते खुद चुनिए, आपको आपसे बेहतर और कोई नहीं जनता।</p>', NULL, 0),
(22, NULL, 0, '<p>उड़ान बड़ी चीज होती है, रोज उड़ो पर शाम को रोज नीचे आ जाओ क्योंकि आप की कामयाबी पर ताली बजाने वाले और गले लगाने वाले सब नीचे ही रहते हैं!!</p>', NULL, 0),
(23, NULL, 0, '<p>परेशानी में कोई सलाह मांगे, तो सलाह के साथ अपना साथ भी देना, क्योकि सलाह गलत हो सकती है, साथ नहीं..!</p>', NULL, 0),
(24, NULL, 0, '<p>बादाम खाने से उतनी अक्ल नहीं आती, जितनी धोखा खाने से आती है।</p>', NULL, 0),
(25, NULL, 0, '<p>अच्छे लोगों की सबसे बड़ी खूबी यह होती है कि उन्हें याद रखना नहीं पड़ता, वो याद रह जाते है</p>', NULL, 0),
(26, NULL, 0, '<p>जिंदगी में 2 लोगो से हमेशा दूर रहेना, एक busy और दूसरा घमण्डी क्योंकि busy अपनी मर्जी से बात करेगा, और घमंडी अपने मतलब से याद करेगा।&nbsp;</p>', NULL, 0),
(27, NULL, 0, '<p>एक चीज़ मैंने देखी है जब आप प्यार करते है दर्द की सीमा तक तो वो दर्द नहीं रहता बस प्यार बढ़ता जाता है&nbsp;|</p>', 'Mother Teresa', 0),
(28, NULL, 0, '<p>दुसरो की गलतियों से सीखे, आप कभी इतना लम्बा नही जी सकते की सारी गलतियाँ खुद करने का मौका मिले</p>', NULL, 0),
(29, NULL, 0, '<p>बिना जोखिम कुछ नहीं मिलता . और जोखिम वही उठाते हैं जो साहसी होते हैं</p>', NULL, 0),
(30, NULL, 0, '<p>अच्छी किताबे, और अच्छे लोग तुरंत समाज में नहीं आते, उन्हें पढ़ना पड़ता है।</p>', NULL, 0),
(31, NULL, 0, '<p>लोग आपका लिए क्या सोचते है वह कभी बताएंगे नहीं ! अगर आप ध्यान दे तोह लोग जरूर व्यक्त करते है !</p>', NULL, 0),
(32, NULL, 0, '<p>प्यार से भागना आपको चोट से नहीं बचाता, वो दर असल प्यार पाने से रोकता है।</p><p>&nbsp;</p>', NULL, 0),
(33, NULL, 0, '<p>डिग्री ना होना फायदेमंद भी है, डिग्री वाले एक ही काम करते है| जिनके पास डिग्री नहीं वो कुछ भी कर सकते है।</p>', NULL, 0),
(34, NULL, 0, '<p>रिश्ता दिल से होना चाहिए, शब्दों से नहीं, नाराजगी शब्दों में होनी चाहिए, दिल में नहीं!</p>', NULL, 0),
(35, NULL, 0, '<p>जो सबका मित्र &nbsp;होता है, वो दरअसल &nbsp;किसी का मित्र नहीं होता।</p>', NULL, 0),
(36, NULL, 0, '<p>जिन्दगी वह नही है, जो आपको मिलती है जिन्दगी वह है, जो आप बनाते हो&nbsp;।</p>', NULL, 0),
(37, NULL, 0, '<p>वक्त पर अपनी &nbsp;गलती ना मानना एक और गलती करना है।</p>', NULL, 0),
(38, NULL, 0, '<p>मैं सुनता हूँ और भूल जाता हूँ, मैं देखता हूँ और याद रखता हूँ, मैं करता हूँ और समझ जाता हूँ।</p>', NULL, 0),
(39, NULL, 0, '<p>किसी माथे को चूमना उसकी रूह को चूमना जैसा है।</p>', NULL, 0),
(40, NULL, 0, '<p>खुशियां बनी-बनाई नहीं मिलतीं। वे आपके स्वयं के कार्यों से उत्पन्न होती हैं।</p>', NULL, 0),
(41, NULL, 0, '<p>दुनिया के लिया आप शायद सिर्फ़ एक शख्स हों, लेकिन किसी शख्स के लिए आप उसकी सारी दुनिया है।</p>', NULL, 0),
(42, NULL, 0, '<p>प्रसन्नता बाहरी परिस्थितियों पर निर्भर नहीं करती, वो हमारे मानसिक दृष्टिकोण से संचालित होती है.</p>', NULL, 0),
(43, NULL, 0, '<p>शुक्रगुजार होना भी एक आदत है, इसकी आदत डालनी पड़ती है।</p>', NULL, 0),
(44, NULL, 0, '<p>कामयाब होने के लिए कई बार हमें जो है उसी में शुरुआत कर लेनी होती है, भले तैयारी पूरी ना हो क्योंकि यह इंतजार करने से काफी बेहतर है।</p>', NULL, 0),
(45, NULL, 0, '<p>कामयाब लोग अपने फैसले से दुनिया बदल देते है, और नाकामयाब लोग दुनिया के दर से अपने फैसले बदल लेते है।</p>', NULL, 0),
(46, NULL, 0, '<p>बीच रास्ते से लौटने का कोई फायदा नहीं, लौटने पर भी उतनी ही दूरी तय करनी पड़ेगी जितनी दूरी तय कर लक्ष्य तक पहुच सकते है।</p>', NULL, 0),
(47, NULL, 0, '<p>हारा तो मैं तब भी न था, जब मैं वाकई में हार चुका था &hellip;अब तो खैर जीतने की एक आदत सी पड़ चुकी है !</p>', NULL, 0),
(48, NULL, 0, '<p>कुछ भी असंभव नहीं जो सोच सकते है वो कर सकते है| और वो भी सोच सकते है जो आज तक नहीं किया।</p>', NULL, 0),
(49, NULL, 0, '<p>अच्छे शिष्टाचार का परिक्षण बुरे शिष्टाचार के साथ धैर्यपूर्वक रहना है .</p>', NULL, 0),
(50, NULL, 0, '<p>धैर्य रखिये . आसान बनने से पहले सभी चीजें कठिन होती हैं.</p>', NULL, 0),
(51, NULL, 0, '<p>बेहतर काम न करने की वजह या वक्त न होने का बहाना मत बनाइयें, आपका दिन भी २४ घंटे का ही होता है और सफल लोगो का भी।</p>', NULL, 0),
(52, NULL, 0, '<p>ठोकरें खा कर भी ना संभले तो मुसाफ़िर का नसीब, वरना पत्थरों ने तो अपना फर्ज़ निभा ही दिया ।</p>', NULL, 0),
(53, NULL, 0, '<p>जो व्यक्ति धैर्य का मालिक है वो बाकि सभी चीजों का मालिक है</p>', NULL, 0),
(54, NULL, 0, '<p>जरुरी नहीं कि जिन्दगी में हमेशा दूसरा मौका मिले, पहले मौके को हाथ से ना जाने दे&nbsp;।</p>', NULL, 0),
(55, NULL, 0, '<p>विचार से कार्य की उत्पत्ति होती है, कर्म से आदत की उत्पत्ति होती है और चरित्र से आपके भाग्य की उत्पत्ति होती है।</p>', NULL, 0),
(56, NULL, 0, '<p>हम अपनी ग़लतियों के लिए बहुत अच्छे वक़ील बन जाते हैं ; और दूसरों की ग़लतियों के लिए बहुत अच्छे न्यायाधीश।</p>', NULL, 0),
(57, NULL, 0, '<p>किसी व्यक्ति के लिए स्वयं पर विजय पाना सभी जीतों में सबसे पहली और महान है.</p>', NULL, 0),
(58, NULL, 0, '<p>पिता की दौलत पर क्या घमंड करना, मज़ा तो तब है..जब दौलत अपनी हो और घमंड पिता करे I</p>', NULL, 0),
(59, NULL, 0, '<p>मुस्कान हृदय की मधुरता की तरफ इशारा करती है, और शांति बुद्धि कि परिपक्वता की तरफ इशारा करती है. और दोनों का ही होना मनुष्य की संपूर्णता की तरफ इशारा करती हैं</p>', NULL, 0),
(60, NULL, 0, '<p>जो समझते नहीं, उससे नफ़रत कैसे कर सकते है।</p>', NULL, 0),
(61, NULL, 0, '<p>वन की अग्नि चंदन की लकड़ी को भी जला देती है अर्थात दुष्ट व्यक्ति किसी का भी अहित कर सकता है।</p>', 'Chanakya', 0),
(62, NULL, 0, '<p>जब पहली प्रेम कहानी सुनी तो तुम्हे खोजना शुरू किया, बिना समझे कि ये कितना अजीब है, प्यार करने वाले अंत में नहीं मिलते वे हमेशा एक दुसरे के साथ है।</p>', NULL, 0),
(63, NULL, 0, '<p>अपनी चाहत की चीज़ों को पाने की कोशिश के साथ साथ , जो चीजें आपके पास हैं उन्ही से खुश रहना सीखें !</p>', NULL, 0),
(64, NULL, 0, '<p>चलने से कदमों के निशान हो जाते हैं, रास्ते कठिन से आसान हो जाते है, चढ़ाई का मत देखो एवरेस्ट को देखो, चढ़ने वाले एक दिन आसमान हो जाते हैं।</p>', NULL, 0),
(65, NULL, 0, '<p>प्रेम की शुरुआत निकट लोगो और संबंधो की देखभाल और दायित्व से होती है, वो निकट सम्बन्ध जो आपके घर में हैं</p>', NULL, 0),
(66, NULL, 0, '<p>हमे एक दूसरे के साथ चेहरे पर मुस्कान के साथ मिलना चाहिए क्योंकि यही से प्यार की शुरुआत होती है।</p>', 'Mother Teresa', 0),
(67, NULL, 0, '<p>दुनिया की हर प्रेम परेशानी आपकी हिम्मत के आगे घुटने टेक देती है।</p>', NULL, 0),
(68, NULL, 0, '<p>जिन्दगी को भरपूर जीने के लिए सबसे जरुरी है खुशी, यही सबसे ज्यादा मायने रखती है।</p>', NULL, 0),
(70, NULL, 0, '<p>एक झूठे व्यक्ति को हमेशा अच्छी याददाश्त की जरुरत होती है !</p>', NULL, 0),
(71, NULL, 0, '<p>अपने आप को चुनौती देने का प्रत्येक प्रयास अपने आप को जानने के लिए श्रेष्ठ प्रयास है ।</p>', NULL, 0),
(72, NULL, 0, '<p>अपने ऊपर विजय प्राप्त करना, सबसे बड़ी विजय है।</p>', NULL, 0),
(73, NULL, 0, '<p>जब एक ही जोक पर दोबारा नहीं हंसते, तो एक ही दुख पर भी दोबारा परेशान नहीं होना चाहिए।</p>', NULL, 0),
(74, NULL, 0, '<p>जब हम लोगो को जितना वो हमसे अपेक्षा करते है उस से अधिक प्यार करते है तो यह भी दयाभाव का हिस्सा है |</p>', 'Joseph Joubert', 0),
(75, NULL, 0, '<p>प्यार वो है जब आप दूसरे की खुशियों को अपने से अधिक मायने देते है |&nbsp;</p>', 'Jackson Brown', 0),
(76, NULL, 0, '<p>चुम्बन प्रकृति द्वारा परिभाषित ऐसा तरीका है जो तब काम करता है जब हमारे शब्द हमारी भावना को जाहिर करने के लिए कम पड़ते है |&nbsp;</p>', 'Ingrid Bergman', 0),
(77, NULL, 0, '<p>निषेध से आकर्षण बढ़ता है। जिस चीज का इंकार किया जाए,उसमे एक तरह का रस पैदाहोना शुरू हो जाता है।</p>', 'ओशो', 0),
(78, NULL, 0, '<p>हम सबको सहन करना सीखना चाहिए, क्यूंकि हमारी बहुत सी कमियों को दूसरे भी सहते होंगे. हाज़िर जवाबी बहुत अच्छी चीज होती है लेकिन क्रोध के समय ये घी के समान होता है.</p>', NULL, 0),
(79, NULL, 0, '<p>सफलता की ख़ुशी मानना अच्छा है पर उससे ज़रूरी है अपनी असफलता से सीख लेना |</p>', 'Bill Gates', 0),
(80, NULL, 0, '<p>गलतियां हमेशा क्षमा की जा सकती हैं, यदि आपके पास उन्हें स्वीकारने का साहस हो।</p>', 'Bruce Lee', 0),
(81, NULL, 0, '<p>एक बेहतरीन किताब 100 अच्छे दोस्त के बराबर है, लेकिन एक सर्वश्रेष्ठ दोस्त पुस्तकालय के बराबर है</p>', 'APJ Abdul Kalam', 0),
(82, NULL, 0, '<p>यदि आप अपनी स्वयं की जीवन योजना तैयार नहीं करते हैं, तो संभावना है कि आप किसी और की योजना में आ सकते हैं। और क्या आपको लगता है कि उन्होंने आपके लिए कोई योजना बनायीं होंगी</p>', NULL, 0),
(83, NULL, 0, '<p>यदि आपने वास्तव में खुद से प्यार करना सिख लिया तो फिर यह संभव ही नहीं है की आपको ये दुनिया प्यारी ना लगे ।</p>', NULL, 0),
(84, NULL, 0, '<p>पछ्तावे से आच्छा है, कोशिश करके फेल हो जाना&nbsp;|</p>', NULL, 0),
(85, NULL, 0, '<p>कुछ लोग महान उपलब्धियों का बस सपना देखते हैं, जबकि अन्य सफल लोग जागते हैं और उन्हें पाने के लिए प्रयास भी करते हैं</p>', NULL, 0),
(86, NULL, 0, '<p>शिक्षा सबसे अच्छी मित्र है.एक शिक्षित व्यक्ति हर जगह सम्मान पता है. शिक्षा सौंदर्य और यौवन को परास्त कर देती है.</p>', 'Chanakya', 0),
(87, NULL, 0, '<p>उतार चढ़ाव ज़िन्दगी का हिस्सा है. कई बार आप उनकी नजरों में भी गिर जाते हैं जिनके दिन की शुरुआत आपको याद कर के हुआ करती थी. आप ताउम्र किसी के हीरो नहीं बने रह सकते.</p>', NULL, 0),
(88, NULL, 0, '<p>जब दिमाग कमजोर होता है तो परिस्थितियां समस्या बन जाती हैं<br />जब दिमाग स्थिर होता है तो परिस्थितियां आसान बन जाती हैं<br />जब दिमाग कमजोर होता है तो परिस्थितियां अवसर बन जाती हैं</p>', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sayari`
--

CREATE TABLE `sayari` (
  `sayari_id` int(11) NOT NULL,
  `sayari` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `sayari_posted_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `story`
--

CREATE TABLE `story` (
  `story_id` int(11) NOT NULL,
  `story` varchar(5000) CHARACTER SET utf8 NOT NULL,
  `story_posted_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `suggested_query`
--

CREATE TABLE `suggested_query` (
  `Id` int(11) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `suggestion` varchar(500) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE `topic` (
  `unique_id` int(11) NOT NULL,
  `topic_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `total_followers` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topic`
--

INSERT INTO `topic` (`unique_id`, `topic_name`, `total_followers`) VALUES
(255, 'Engineering', NULL),
(256, 'decision making', NULL),
(257, 'career decision', NULL),
(258, 'rahul gandhi', NULL),
(259, 'politician', NULL),
(260, 'congress party', NULL),
(261, 'surgical strike', NULL),
(262, 'air strike', NULL),
(263, 'strike', NULL),
(264, 'indian air force', NULL),
(265, 'java', NULL),
(266, 'programming', NULL),
(267, 'jsp', NULL),
(268, 'php', NULL),
(269, 'startup', NULL),
(270, 'idea', NULL),
(271, 'congress', NULL),
(272, 'poltices', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `topic_followers_detail`
--

CREATE TABLE `topic_followers_detail` (
  `unique_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `user_or_followers_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topic_followers_detail`
--

INSERT INTO `topic_followers_detail` (`unique_id`, `topic_id`, `user_or_followers_id`) VALUES
(319, 255, 136),
(320, 255, 137),
(321, 258, 138),
(322, 255, 139),
(328, 258, 140),
(324, 259, 140),
(325, 260, 140),
(326, 257, 141),
(327, 259, 141),
(329, 264, 140),
(330, 255, 142),
(331, 255, 143),
(332, 256, 143),
(333, 264, 143),
(334, 269, 139),
(335, 260, 144),
(336, 261, 144);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ak_follower_detail`
--
ALTER TABLE `ak_follower_detail`
  ADD PRIMARY KEY (`unique_id`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`a_id`,`q_id`);

--
-- Indexes for table `asked_help_query`
--
ALTER TABLE `asked_help_query`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `example`
--
ALTER TABLE `example`
  ADD PRIMARY KEY (`unique_id`);

--
-- Indexes for table `exception`
--
ALTER TABLE `exception`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `full_form`
--
ALTER TABLE `full_form`
  ADD PRIMARY KEY (`unique_id`);

--
-- Indexes for table `joke`
--
ALTER TABLE `joke`
  ADD PRIMARY KEY (`joke_id`);

--
-- Indexes for table `like_count`
--
ALTER TABLE `like_count`
  ADD PRIMARY KEY (`like_id_auto`);

--
-- Indexes for table `newuser`
--
ALTER TABLE `newuser`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `nodification_count`
--
ALTER TABLE `nodification_count`
  ADD PRIMARY KEY (`table_unique_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`q_id`);

--
-- Indexes for table `question_topic_tag`
--
ALTER TABLE `question_topic_tag`
  ADD PRIMARY KEY (`unique_id`);

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`quotes_id`);

--
-- Indexes for table `sayari`
--
ALTER TABLE `sayari`
  ADD PRIMARY KEY (`sayari_id`);

--
-- Indexes for table `story`
--
ALTER TABLE `story`
  ADD PRIMARY KEY (`story_id`);

--
-- Indexes for table `suggested_query`
--
ALTER TABLE `suggested_query`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`unique_id`);

--
-- Indexes for table `topic_followers_detail`
--
ALTER TABLE `topic_followers_detail`
  ADD PRIMARY KEY (`unique_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ak_follower_detail`
--
ALTER TABLE `ak_follower_detail`
  MODIFY `unique_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;
--
-- AUTO_INCREMENT for table `asked_help_query`
--
ALTER TABLE `asked_help_query`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `example`
--
ALTER TABLE `example`
  MODIFY `unique_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `exception`
--
ALTER TABLE `exception`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `full_form`
--
ALTER TABLE `full_form`
  MODIFY `unique_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=468;
--
-- AUTO_INCREMENT for table `joke`
--
ALTER TABLE `joke`
  MODIFY `joke_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT for table `like_count`
--
ALTER TABLE `like_count`
  MODIFY `like_id_auto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `newuser`
--
ALTER TABLE `newuser`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;
--
-- AUTO_INCREMENT for table `nodification_count`
--
ALTER TABLE `nodification_count`
  MODIFY `table_unique_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;
--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `q_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;
--
-- AUTO_INCREMENT for table `question_topic_tag`
--
ALTER TABLE `question_topic_tag`
  MODIFY `unique_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=481;
--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `quotes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT for table `sayari`
--
ALTER TABLE `sayari`
  MODIFY `sayari_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `story`
--
ALTER TABLE `story`
  MODIFY `story_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `suggested_query`
--
ALTER TABLE `suggested_query`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `topic`
--
ALTER TABLE `topic`
  MODIFY `unique_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;
--
-- AUTO_INCREMENT for table `topic_followers_detail`
--
ALTER TABLE `topic_followers_detail`
  MODIFY `unique_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=337;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

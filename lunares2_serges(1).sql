-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 30, 2022 at 12:31 PM
-- Server version: 5.7.23-23
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lunares2_serges`
--

-- --------------------------------------------------------

--
-- Table structure for table `sl_admin`
--

CREATE TABLE `sl_admin` (
  `id` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(150) NOT NULL,
  `role` varchar(12) DEFAULT NULL,
  `UpdatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sl_admin`
--

INSERT INTO `sl_admin` (`id`, `email`, `password`, `role`, `UpdatedAt`) VALUES
(1, 'admin@gmail.com', '0192023a7bbd73250516f069df18b500', 'admin', '2022-06-24 12:11:39');

-- --------------------------------------------------------

--
-- Table structure for table `sl_blogs`
--

CREATE TABLE `sl_blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(80) NOT NULL,
  `description` longtext NOT NULL,
  `description_front` longtext NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'active',
  `CreatedAt` datetime NOT NULL,
  `UpdatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sl_blogs`
--

INSERT INTO `sl_blogs` (`id`, `title`, `image`, `description`, `description_front`, `status`, `CreatedAt`, `UpdatedAt`) VALUES
(27, 'OZEETY, The FLASHMONI Blockchain on live mode soon!', 'https://lunar-estate.com/serge/admin-panel/upload/blog/1656395356-image_19_1.png', '&lt;p&gt;In an era of technological transformations at every level of our day to day life, we are creating a distributed ledger solution to meet with today&amp;rsquo;s problems for most financial clients and users. In doing so, we explored all the possible solutions in the market in terms of financial services, Blockchain technologies, banking wallet and security solutions for all transactions and make it easy for our clients and partners.&lt;/p&gt;\r\n\r\n&lt;p&gt;Following detailed studies and being responsible for our clients&amp;rsquo; financial matters, as well as the growth of the company and clients&amp;rsquo; needs, we created our own blockchain, coin, token and digital wallet that will incorporate multiple bank accounts (both Fiat and Crypto), thinking of our modern necessities. When it comes to our finances, we all want to have security, fast transactions and pay lower or no fees than we currently do use traditional banking and even modern wallets, exchanges and payment solutions. In trying to achieve this, the problem and solution became a greater challenge, but you will be pleased to know that we never gave up the challenge. Our aim is building something that addressed the &amp;ldquo;financial vision and beyond&amp;rdquo;. Our mantra.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Flashmoni blockchain&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img src=&quot;https://media-exp2.licdn.com/dms/image/C5612AQG6vQoNVWXHMw/article-inline_image-shrink_1500_2232/0/1548963402827?e=1661990400&amp;amp;v=beta&amp;amp;t=kyqiLAHDj4yXe8b96CSKJbrbqA6YZf62a8Z5Pf6Rf94&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;The most popular way to release our DApp is on established blockchain platforms like Ethereum, BTC or EOS etc., but the problem is that every blockchain has technical trade-offs, bottlenecks, and constraints. What happens to a DApp that cannot perform due to the limitations of the blockchain they are using?&lt;/p&gt;\r\n\r\n&lt;p&gt;The Bitcoin and Ethereum blockchains are already struggling to meet the traffic, transaction speeds, block sizes and cost of the transaction. Hence, once again we evaluated most of the popular relevant blockchains versus our requirements. The key needs we had were scalability, cost of the transaction, the speed of transaction, security, stable pricing, efficiency, rewards systems, data structure, and consensus algorithm etc.&lt;/p&gt;\r\n\r\n&lt;p&gt;So our objective was to address how several of these existing solutions and applications would be suitable for the Flashmoni Ecosystem. In short, it didn&amp;rsquo;t cut it for us and our target key needs, as highlighted above. Building a custom blockchain, or forking a current one, could potentially be a solution to our problem.&lt;/p&gt;\r\n\r\n&lt;p&gt;However, nobody knows our business better than we do, so if we build a blockchain that can specifically fit our needs, it can help us be more effective and efficient in managing our business. We started this journey and decided to build our own blockchain due to the following reasons:&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;middot; Choice of the consensus algorithm&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;middot; Choice of programming language&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;middot; Control of codebase&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;middot; Ability to update how and whenever you want&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;middot; Ultimate true flexibility and speed at much-reduced costs and fees.&lt;/p&gt;\r\n\r\n&lt;p&gt;We are launching our own coin, as well as our own currency and investment platform. Why? Because the previous ERC20 was token and there is a huge difference between Coin and Token! Coin operates independently, while token has a specific use in the project&amp;rsquo;s ecosystem, so both have their own role and utility. We are an asset-pegged coin, which is a differentiator between us and majority of the cryptocurrencies existent at the present moment.&lt;/p&gt;\r\n', '<p>In an era of technological transformations at every level of our day to day life, we are creating a distributed ledger solution to meet with today&rsquo;s problems for most financial clients and users. In doing so, we explored all the possible solutions in the market in terms of financial services, Blockchain technologies, banking wallet and security solutions for all transactions and make it easy for our clients and partners.</p>\r\n\r\n<p>Following detailed studies and being responsible for our clients&rsquo; financial matters, as well as the growth of the company and clients&rsquo; needs, we created our own blockchain, coin, token and digital wallet that will incorporate multiple bank accounts (both Fiat and Crypto), thinking of our modern necessities. When it comes to our finances, we all want to have security, fast transactions and pay lower or no fees than we currently do use traditional banking and even modern wallets, exchanges and payment solutions. In trying to achieve this, the problem and solution became a greater challenge, but you will be pleased to know that we never gave up the challenge. Our aim is building something that addressed the &ldquo;financial vision and beyond&rdquo;. Our mantra.</p>\r\n\r\n<p><strong>Flashmoni blockchain</strong></p>\r\n\r\n<p><img src=\"https://media-exp2.licdn.com/dms/image/C5612AQG6vQoNVWXHMw/article-inline_image-shrink_1500_2232/0/1548963402827?e=1661990400&amp;v=beta&amp;t=kyqiLAHDj4yXe8b96CSKJbrbqA6YZf62a8Z5Pf6Rf94\" /></p>\r\n\r\n<p>The most popular way to release our DApp is on established blockchain platforms like Ethereum, BTC or EOS etc., but the problem is that every blockchain has technical trade-offs, bottlenecks, and constraints. What happens to a DApp that cannot perform due to the limitations of the blockchain they are using?</p>\r\n\r\n<p>The Bitcoin and Ethereum blockchains are already struggling to meet the traffic, transaction speeds, block sizes and cost of the transaction. Hence, once again we evaluated most of the popular relevant blockchains versus our requirements. The key needs we had were scalability, cost of the transaction, the speed of transaction, security, stable pricing, efficiency, rewards systems, data structure, and consensus algorithm etc.</p>\r\n\r\n<p>So our objective was to address how several of these existing solutions and applications would be suitable for the Flashmoni Ecosystem. In short, it didn&rsquo;t cut it for us and our target key needs, as highlighted above. Building a custom blockchain, or forking a current one, could potentially be a solution to our problem.</p>\r\n\r\n<p>However, nobody knows our business better than we do, so if we build a blockchain that can specifically fit our needs, it can help us be more effective and efficient in managing our business. We started this journey and decided to build our own blockchain due to the following reasons:</p>\r\n\r\n<p>&middot; Choice of the consensus algorithm</p>\r\n\r\n<p>&middot; Choice of programming language</p>\r\n\r\n<p>&middot; Control of codebase</p>\r\n\r\n<p>&middot; Ability to update how and whenever you want</p>\r\n\r\n<p>&middot; Ultimate true flexibility and speed at much-reduced costs and fees.</p>\r\n\r\n<p>We are launching our own coin, as well as our own currency and investment platform. Why? Because the previous ERC20 was token and there is a huge difference between Coin and Token! Coin operates independently, while token has a specific use in the project&rsquo;s ecosystem, so both have their own role and utility. We are an asset-pegged coin, which is a differentiator between us and majority of the cryptocurrencies existent at the present moment.</p>\r\n', 'active', '2022-06-23 04:28:51', '2022-06-29 07:41:19'),
(54, 'An update from the Chairman and CEO', 'https://lunar-estate.com/serge/admin-panel/upload/blog/1656572540-IMG_4530.JPG', '&lt;p&gt;&lt;strong&gt;Dear Community&lt;/strong&gt;,&lt;/p&gt;\r\n\r\n&lt;p&gt;We have Breaking News!&lt;/p&gt;\r\n\r\n&lt;p&gt;We are pleased to announce a major milestone being reached. The first block on our Blockchain (&lt;a href=&quot;https://ozeety.com/index.html#about&quot; target=&quot;_blank&quot;&gt;OZEETY&lt;/a&gt;)&lt;/p&gt;\r\n\r\n&lt;p&gt;was mined successfully on 14th May 2019. This delivers yet another MVP and many to follow from our planned&lt;/p&gt;\r\n\r\n&lt;p&gt;roadmap. The next ones we are focused on are as follows:&lt;/p&gt;\r\n\r\n&lt;p&gt;-&amp;nbsp;&lt;a href=&quot;https://flashwallet.io/&quot; target=&quot;_blank&quot;&gt;FlashWallet&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;a href=&quot;https://flashxchanger.com/&quot; target=&quot;_blank&quot;&gt;- FlashXchanger&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;-&amp;nbsp;&lt;a href=&quot;https://www.oztcard.com/&quot; target=&quot;_blank&quot;&gt;OZTCARD&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;- FlashAdchain&lt;/p&gt;\r\n\r\n&lt;p&gt;- FlashCryptostation&lt;/p&gt;\r\n\r\n&lt;p&gt;- And many other value-added services being explored&lt;/p&gt;\r\n\r\n&lt;p&gt;With the above and more to follow, we will aim to achieve our vision of &amp;ldquo;Financial Inclusion and Beyond&amp;rdquo;.&lt;/p&gt;\r\n\r\n&lt;p&gt;The full release of our version 1.0 MVP will be Q3-4, as the rest is more stress tested. It has been a long journey since 10th June 2018 and the end of our ICO fundraise. To say we had a few challenges is a bit of an understatement, however, we believe we are almost over the bad period of the downturn in the market, as well the delivery of the product. The delays made us even more focused on our detailed vision, as well as future product development roadmap. As you may all appreciate, this market moves very fast and our own change of platform development in the technology choices had to be adapted or we would have also become like an old dinosaur before we launched. Our constant reinvention and re-innovation mindset keep challenging us to future proof of our ongoing development to add value to the clients and investors. On that subject, we have now also recruited a full time more experienced CTO.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;a href=&quot;https://flashmoni.io/&quot; target=&quot;_blank&quot;&gt;The Flashmoni Ecosystem&lt;/a&gt;&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Our first consensus mechanism choice for our Blockchain (&lt;a href=&quot;https://flashxchanger.com/&quot; target=&quot;_blank&quot;&gt;OZEETY&lt;/a&gt;) was only, based on Proof-of-Stake (PoS).&lt;/p&gt;\r\n\r\n&lt;p&gt;This we found out later against the new Blockchain developers and advisors in the marketplace, riddled with fashion followers rather than business developers that PoS alone would not meet our total vision of a secure Omnichannel solution as fast as we were intended to.&lt;/p&gt;\r\n\r\n&lt;p&gt;So we embarked on our relentless pursuit of the best solution and decided to develop a hybrid solution to further provide a better platform and comply with our community and the company desire for security, trust, scalability, etc. PoS is one of the best future consensuses but the method of deciding who can add new blocks and verify the current state of the blockchain has flaws just like the same process occur in POW, there is a lot of other consensuses out there like proof of elapsed time, proof of Authority, proof of capacity (aka space), proof of activity, proof of Burn but POW and now POS are at this time the most used consensus for blockchain development.&lt;/p&gt;\r\n\r\n&lt;p&gt;Our Hybrid Solution gives the best of both consensus technologies and addresses the weakness in current technologies. By using PoW and PoS we also allow anonymous transactions. This combination of PoW and PoS consensus methodologies will be used until block 647999. Once that is achieved we will only use PoS consensus mechanism. We have also implemented the Quark algorithm because it&amp;rsquo;s a greener algorithm and allows for instant transactions, especially even small value transactions specifically aligned to our financial inclusion vision.&lt;/p&gt;\r\n\r\n&lt;p&gt;The benefits and advantages are numerous and include enhanced privacy, security, scalability, functionality, greener deployment, cheaper costs and speed of the transaction. All that is coupled with our gold pegged verified stable coin, which makes us the unique asset-pegged coin with such levels of privacy and security, giving peace of mind to our community. Our leitmotiv brings us to come up with a secure and anonymous solution where we are using a coin mixing technology that we call Obfuscation. That allows mixing of coins through the Master node network to make those amount of coin much harder to trace in the blockchain when you send it to someone else. It&amp;rsquo;s inherited from DASH. Private send is not really needed unless you want to anonymize your transactions. It&amp;rsquo;s not completely untraceable but makes it more difficult to track down the source and target address in this new world where privacy is a critical concern. Hence we thought that this feature will add value to our ecosystem.&lt;/p&gt;\r\n\r\n&lt;p&gt;As we are willing to help the mainstream adoption of blockchain technology, we decided that for a certain category of transfer, a guaranteed zero confirmation of transactions is essential to speed transaction processing up and treat a large amount of them, whilst improving our blockchain adoption. We call this technology SwiftTX.&lt;/p&gt;\r\n\r\n&lt;p&gt;The technology achieves near-instant transaction confirmation (less than a second), while still overcoming double spend challenges. SwiftTX cost is 0.01&amp;nbsp;&lt;a href=&quot;https://ozeety.com/index.html#about&quot; target=&quot;_blank&quot;&gt;OZTG&lt;/a&gt;&amp;nbsp;and will give 5 confirmations in under 1 second. This feature has not been adopted by the wider cryptocurrency community.&lt;/p&gt;\r\n\r\n&lt;p&gt;The Coin&amp;nbsp;&lt;a href=&quot;https://ozeety.com/index.html#about&quot; target=&quot;_blank&quot;&gt;OZTG&lt;/a&gt;&amp;nbsp;will be in constant development to propose cutting edge Smart Contract and Daps, to allow people to create their own Tokens using our technology.&lt;/p&gt;\r\n\r\n&lt;p&gt;For all the contributors who participate in our&amp;nbsp;&lt;a href=&quot;https://blog.flashmoni.io/&quot; target=&quot;_blank&quot;&gt;ICO&lt;/a&gt;&amp;nbsp;in 2018, the swap of their ERC20 tokens into&amp;nbsp;&lt;a href=&quot;https://ozeety.com/index.html#about&quot; target=&quot;_blank&quot;&gt;OZTG&lt;/a&gt;&amp;nbsp;Coin will be proceed on FlashXchanger and they will be notified for the registration process. But as almost all contributors already passed the KYC through the former version of the current FlashWallet, that process will be executed very quickly!&lt;/p&gt;\r\n\r\n&lt;p&gt;We have created a community on Bitcointalk and Telegram for the people willing to get involved in our development a little more active, so we invite you to join us. Also, weekly emails will be sent to our community to keep them posted.&lt;/p&gt;\r\n\r\n&lt;p&gt;A Big Thank You&lt;/p&gt;\r\n\r\n&lt;p&gt;Once again, on behalf of myself, our new CEO Mru Patel and our whole new fully motivated growing team, our loyal community, investors and partners, without whom NONE of this would be possible for&lt;/p&gt;\r\n\r\n&lt;p&gt;such progress, Thank You!&lt;/p&gt;\r\n\r\n&lt;p&gt;Making our new vision of Financial Inclusion and Beyond Happen!&lt;/p&gt;\r\n\r\n&lt;p&gt;Best regards&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Mru Patel / Partner and CEO&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;a href=&quot;https://flashmoni.io/&quot; target=&quot;_blank&quot;&gt;&lt;strong&gt;Serge Maurice Lobr&amp;eacute;au / Founder, President &amp;amp; Chairman of FlashGroup&lt;/strong&gt;&lt;/a&gt;&lt;/p&gt;\r\n', '<p><strong>Dear Community</strong>,</p>\r\n\r\n<p>We have Breaking News!</p>\r\n\r\n<p>We are pleased to announce a major milestone being reached. The first block on our Blockchain (<a href=\"https://ozeety.com/index.html#about\" target=\"_blank\">OZEETY</a>)</p>\r\n\r\n<p>was mined successfully on 14th May 2019. This delivers yet another MVP and many to follow from our planned</p>\r\n\r\n<p>roadmap. The next ones we are focused on are as follows:</p>\r\n\r\n<p>-&nbsp;<a href=\"https://flashwallet.io/\" target=\"_blank\">FlashWallet</a></p>\r\n\r\n<p><a href=\"https://flashxchanger.com/\" target=\"_blank\">- FlashXchanger</a></p>\r\n\r\n<p>-&nbsp;<a href=\"https://www.oztcard.com/\" target=\"_blank\">OZTCARD</a></p>\r\n\r\n<p>- FlashAdchain</p>\r\n\r\n<p>- FlashCryptostation</p>\r\n\r\n<p>- And many other value-added services being explored</p>\r\n\r\n<p>With the above and more to follow, we will aim to achieve our vision of &ldquo;Financial Inclusion and Beyond&rdquo;.</p>\r\n\r\n<p>The full release of our version 1.0 MVP will be Q3-4, as the rest is more stress tested. It has been a long journey since 10th June 2018 and the end of our ICO fundraise. To say we had a few challenges is a bit of an understatement, however, we believe we are almost over the bad period of the downturn in the market, as well the delivery of the product. The delays made us even more focused on our detailed vision, as well as future product development roadmap. As you may all appreciate, this market moves very fast and our own change of platform development in the technology choices had to be adapted or we would have also become like an old dinosaur before we launched. Our constant reinvention and re-innovation mindset keep challenging us to future proof of our ongoing development to add value to the clients and investors. On that subject, we have now also recruited a full time more experienced CTO.</p>\r\n\r\n<p><strong><a href=\"https://flashmoni.io/\" target=\"_blank\">The Flashmoni Ecosystem</a></strong></p>\r\n\r\n<p>Our first consensus mechanism choice for our Blockchain (<a href=\"https://flashxchanger.com/\" target=\"_blank\">OZEETY</a>) was only, based on Proof-of-Stake (PoS).</p>\r\n\r\n<p>This we found out later against the new Blockchain developers and advisors in the marketplace, riddled with fashion followers rather than business developers that PoS alone would not meet our total vision of a secure Omnichannel solution as fast as we were intended to.</p>\r\n\r\n<p>So we embarked on our relentless pursuit of the best solution and decided to develop a hybrid solution to further provide a better platform and comply with our community and the company desire for security, trust, scalability, etc. PoS is one of the best future consensuses but the method of deciding who can add new blocks and verify the current state of the blockchain has flaws just like the same process occur in POW, there is a lot of other consensuses out there like proof of elapsed time, proof of Authority, proof of capacity (aka space), proof of activity, proof of Burn but POW and now POS are at this time the most used consensus for blockchain development.</p>\r\n\r\n<p>Our Hybrid Solution gives the best of both consensus technologies and addresses the weakness in current technologies. By using PoW and PoS we also allow anonymous transactions. This combination of PoW and PoS consensus methodologies will be used until block 647999. Once that is achieved we will only use PoS consensus mechanism. We have also implemented the Quark algorithm because it&rsquo;s a greener algorithm and allows for instant transactions, especially even small value transactions specifically aligned to our financial inclusion vision.</p>\r\n\r\n<p>The benefits and advantages are numerous and include enhanced privacy, security, scalability, functionality, greener deployment, cheaper costs and speed of the transaction. All that is coupled with our gold pegged verified stable coin, which makes us the unique asset-pegged coin with such levels of privacy and security, giving peace of mind to our community. Our leitmotiv brings us to come up with a secure and anonymous solution where we are using a coin mixing technology that we call Obfuscation. That allows mixing of coins through the Master node network to make those amount of coin much harder to trace in the blockchain when you send it to someone else. It&rsquo;s inherited from DASH. Private send is not really needed unless you want to anonymize your transactions. It&rsquo;s not completely untraceable but makes it more difficult to track down the source and target address in this new world where privacy is a critical concern. Hence we thought that this feature will add value to our ecosystem.</p>\r\n\r\n<p>As we are willing to help the mainstream adoption of blockchain technology, we decided that for a certain category of transfer, a guaranteed zero confirmation of transactions is essential to speed transaction processing up and treat a large amount of them, whilst improving our blockchain adoption. We call this technology SwiftTX.</p>\r\n\r\n<p>The technology achieves near-instant transaction confirmation (less than a second), while still overcoming double spend challenges. SwiftTX cost is 0.01&nbsp;<a href=\"https://ozeety.com/index.html#about\" target=\"_blank\">OZTG</a>&nbsp;and will give 5 confirmations in under 1 second. This feature has not been adopted by the wider cryptocurrency community.</p>\r\n\r\n<p>The Coin&nbsp;<a href=\"https://ozeety.com/index.html#about\" target=\"_blank\">OZTG</a>&nbsp;will be in constant development to propose cutting edge Smart Contract and Daps, to allow people to create their own Tokens using our technology.</p>\r\n\r\n<p>For all the contributors who participate in our&nbsp;<a href=\"https://blog.flashmoni.io/\" target=\"_blank\">ICO</a>&nbsp;in 2018, the swap of their ERC20 tokens into&nbsp;<a href=\"https://ozeety.com/index.html#about\" target=\"_blank\">OZTG</a>&nbsp;Coin will be proceed on FlashXchanger and they will be notified for the registration process. But as almost all contributors already passed the KYC through the former version of the current FlashWallet, that process will be executed very quickly!</p>\r\n\r\n<p>We have created a community on Bitcointalk and Telegram for the people willing to get involved in our development a little more active, so we invite you to join us. Also, weekly emails will be sent to our community to keep them posted.</p>\r\n\r\n<p>A Big Thank You</p>\r\n\r\n<p>Once again, on behalf of myself, our new CEO Mru Patel and our whole new fully motivated growing team, our loyal community, investors and partners, without whom NONE of this would be possible for</p>\r\n\r\n<p>such progress, Thank You!</p>\r\n\r\n<p>Making our new vision of Financial Inclusion and Beyond Happen!</p>\r\n\r\n<p>Best regards</p>\r\n\r\n<p><strong>Mru Patel / Partner and CEO</strong></p>\r\n\r\n<p><a href=\"https://flashmoni.io/\" target=\"_blank\"><strong>Serge Maurice Lobr&eacute;au / Founder, President &amp; Chairman of FlashGroup</strong></a></p>\r\n', 'active', '2022-06-29 11:20:02', '2022-06-29 11:28:53'),
(55, 'The crypto revolution and its effects Contrary to popular belief, cryptocurrencies were not invented', 'https://lunar-estate.com/serge/admin-panel/upload/blog/1656572127-blog-2.JPG', '&lt;h3&gt;&lt;strong&gt;The crypto revolution and its effects&lt;/strong&gt;&lt;/h3&gt;\r\n\r\n&lt;p&gt;Contrary to popular belief, cryptocurrencies were not invented to eradicate fiat currencies and banks. It&amp;rsquo;s entangled to traditional currencies, finance and payments channels that respond to certain inefficiencies. Thus, like the laws of the market, security, or regulation, the rules of the game are more or less the same and tend to become more uniform. Nevertheless, there are still some grey areas, particularly with regard to taxation.&lt;/p&gt;\r\n\r\n&lt;p&gt;In recent years, with the explosion of the number of crypto-currencies, new terms such as &amp;quot;HODL&amp;quot;, &amp;ldquo;REKT&amp;rdquo;,&amp;rdquo;&amp;nbsp;&lt;a href=&quot;https://www.flashxchanger.com/&quot; target=&quot;_blank&quot;&gt;BAGHOLDER&lt;/a&gt;&amp;rdquo;,&amp;rdquo; SHILL&amp;rdquo; &amp;quot;When LAMBO ?&amp;quot; and others have appeared, symbolizing the revival of this market. At the same time, many people have become rich, sometimes overnight. I am thinking in particular of the peak of the main cryptocurrencies observed between the last quarter of 2017 and the first quarter of 2018, with Bitcoin reaching the historical price of &amp;euro;18,086.13 (Sat 16 Dec 2017, $19,665.00). With this coin alone, more than 22,000 people have become millionaires to date. All these newly rich people have found themselves with a new life but with new constraints, including fiscal ones.&lt;/p&gt;\r\n\r\n&lt;h3&gt;&lt;strong&gt;The grey area of cryptocurrency&lt;/strong&gt;&lt;/h3&gt;\r\n\r\n&lt;p&gt;Let us be clear, there is to date no common policy for the taxation of gains/losses related to&amp;nbsp;&lt;a href=&quot;https://www.ozeety.com/&quot; target=&quot;_blank&quot;&gt;cryptocurrency.&lt;/a&gt;&amp;nbsp;Governments prefer to leave this sector in the grey area. This in-between is problematic because, as in all situations where the contract is not clearly defined, each party tries to pull the quilt on its side. In this case, by playing with the tax system and therefore the state, this can be very risky if one is not perfectly advised. Many people do not realize how much the gains obtained via&amp;nbsp;&lt;a href=&quot;https://www.flashxchanger.com/&quot; target=&quot;_blank&quot;&gt;exchangers&lt;/a&gt;&amp;nbsp;and other products can have a critical impact on their professional and personal tax returns. It is therefore essential to know what you are getting into and what the repercussions of the actions you take will be.&lt;/p&gt;\r\n\r\n&lt;p&gt;As long as you stay in cryptocurrency, there is for the moment no substantial tax problem. But, as the use of these coins and tokens is not yet global, you will be obliged to return to a conventional currency one day or another. This is where the main problems begin.&lt;/p&gt;\r\n\r\n&lt;p&gt;Who has never been blocked by his bank after cashing in profits from&amp;nbsp;&lt;a href=&quot;https://ozblock.org/#/&quot; target=&quot;_blank&quot;&gt;Binance&lt;/a&gt;,&amp;nbsp;&lt;a href=&quot;https://blog.flashmoni.io/&quot; target=&quot;_blank&quot;&gt;Kraken&lt;/a&gt;, or&amp;nbsp;&lt;a href=&quot;https://www.flashmoni.com/&quot; target=&quot;_blank&quot;&gt;Coinbase&lt;/a&gt;, to name but a few? You are then obliged to go to your branch, which is usually not crypto-friendly, for obvious reasons as its seen to be a threat to the fiat currency as well as traditional banking, to explain to them what is the source of the money. You could say that there are no clear rules and that you can do whatever you want with your money. Most of the time, depending on the level of income you receive from these exchanges, you will be asked to stop such transactions or you will simply be kicked out of your bank.&lt;/p&gt;\r\n\r\n&lt;p&gt;From the bank&amp;#39;s point of view, Crypto companies are unregulated entities operating in an unregulated field where most of them are scams. As a former banker, I can assure you that this is the mental software deployed in banker&amp;#39;s minds.&lt;/p&gt;\r\n\r\n&lt;h3&gt;&lt;strong&gt;SAPIAN CAPITAL&lt;/strong&gt; &amp;ndash; offering today the banking of the future in a global economy&lt;/h3&gt;\r\n\r\n&lt;p&gt;As far as&amp;nbsp;&lt;a href=&quot;https://www.sapiancapital.com/&quot; target=&quot;_blank&quot;&gt;SAPIAN CAPITAL&lt;/a&gt;&amp;nbsp;OTC (SCO) is concerned, we are firmly convinced that DLT (distributed ledger technology) will deeply change the perception and the way people will bank tomorrow. While we are not there yet, banks still have a big card to play in this new field that DLT has started to disrupt. Even if certain categories of the population will increasingly use monetary crypto-based services for all their daily transactions, such as remittance services, the banks will not collapse. They are just going to evolve as they always have, with the financial services market being big enough for both players. With over $ 7 Trillion in transactions on a daily basis, banks are the ones that control over 99% via fiat currencies with over 70% via the US Dollars. The benefits of digital currencies is slowly being realised by most major institutions including Goldman Sachs, JP Morgan and a number of others. Digital currencies are now being taken more seriously and even piloted via several governments including China, UK, India, Germany, France to name but a few.&lt;/p&gt;\r\n\r\n&lt;p&gt;Many companies and&amp;nbsp;&lt;a href=&quot;https://www.flashxchanger.com/&quot; target=&quot;_blank&quot;&gt;exchanges&lt;/a&gt;&amp;nbsp;now offer services related to this new asset class, ranging from the simple purchase of a coin to the development of a structured product such as a future, plus the implementation of leverage or margin calls. There is also a growing possibility of&amp;nbsp;&lt;a href=&quot;https://www.oztcard.com/&quot; target=&quot;_blank&quot;&gt;OTC transactions&lt;/a&gt;, which are vital for market liquidity and are intended more for a different user class of institutional owners and &amp;quot;Whales&amp;quot;. But here again, there is nothing about tax and asset optimization strategies in connection with crypto-asset.&lt;/p&gt;\r\n', '<h3><strong>The crypto revolution and its effects</strong></h3>\r\n\r\n<p>Contrary to popular belief, cryptocurrencies were not invented to eradicate fiat currencies and banks. It&rsquo;s entangled to traditional currencies, finance and payments channels that respond to certain inefficiencies. Thus, like the laws of the market, security, or regulation, the rules of the game are more or less the same and tend to become more uniform. Nevertheless, there are still some grey areas, particularly with regard to taxation.</p>\r\n\r\n<p>In recent years, with the explosion of the number of crypto-currencies, new terms such as &quot;HODL&quot;, &ldquo;REKT&rdquo;,&rdquo;&nbsp;<a href=\"https://www.flashxchanger.com/\" target=\"_blank\">BAGHOLDER</a>&rdquo;,&rdquo; SHILL&rdquo; &quot;When LAMBO ?&quot; and others have appeared, symbolizing the revival of this market. At the same time, many people have become rich, sometimes overnight. I am thinking in particular of the peak of the main cryptocurrencies observed between the last quarter of 2017 and the first quarter of 2018, with Bitcoin reaching the historical price of &euro;18,086.13 (Sat 16 Dec 2017, $19,665.00). With this coin alone, more than 22,000 people have become millionaires to date. All these newly rich people have found themselves with a new life but with new constraints, including fiscal ones.</p>\r\n\r\n<h3><strong>The grey area of cryptocurrency</strong></h3>\r\n\r\n<p>Let us be clear, there is to date no common policy for the taxation of gains/losses related to&nbsp;<a href=\"https://www.ozeety.com/\" target=\"_blank\">cryptocurrency.</a>&nbsp;Governments prefer to leave this sector in the grey area. This in-between is problematic because, as in all situations where the contract is not clearly defined, each party tries to pull the quilt on its side. In this case, by playing with the tax system and therefore the state, this can be very risky if one is not perfectly advised. Many people do not realize how much the gains obtained via&nbsp;<a href=\"https://www.flashxchanger.com/\" target=\"_blank\">exchangers</a>&nbsp;and other products can have a critical impact on their professional and personal tax returns. It is therefore essential to know what you are getting into and what the repercussions of the actions you take will be.</p>\r\n\r\n<p>As long as you stay in cryptocurrency, there is for the moment no substantial tax problem. But, as the use of these coins and tokens is not yet global, you will be obliged to return to a conventional currency one day or another. This is where the main problems begin.</p>\r\n\r\n<p>Who has never been blocked by his bank after cashing in profits from&nbsp;<a href=\"https://ozblock.org/#/\" target=\"_blank\">Binance</a>,&nbsp;<a href=\"https://blog.flashmoni.io/\" target=\"_blank\">Kraken</a>, or&nbsp;<a href=\"https://www.flashmoni.com/\" target=\"_blank\">Coinbase</a>, to name but a few? You are then obliged to go to your branch, which is usually not crypto-friendly, for obvious reasons as its seen to be a threat to the fiat currency as well as traditional banking, to explain to them what is the source of the money. You could say that there are no clear rules and that you can do whatever you want with your money. Most of the time, depending on the level of income you receive from these exchanges, you will be asked to stop such transactions or you will simply be kicked out of your bank.</p>\r\n\r\n<p>From the bank&#39;s point of view, Crypto companies are unregulated entities operating in an unregulated field where most of them are scams. As a former banker, I can assure you that this is the mental software deployed in banker&#39;s minds.</p>\r\n\r\n<h3><strong>SAPIAN CAPITAL</strong> &ndash; offering today the banking of the future in a global economy</h3>\r\n\r\n<p>As far as&nbsp;<a href=\"https://www.sapiancapital.com/\" target=\"_blank\">SAPIAN CAPITAL</a>&nbsp;OTC (SCO) is concerned, we are firmly convinced that DLT (distributed ledger technology) will deeply change the perception and the way people will bank tomorrow. While we are not there yet, banks still have a big card to play in this new field that DLT has started to disrupt. Even if certain categories of the population will increasingly use monetary crypto-based services for all their daily transactions, such as remittance services, the banks will not collapse. They are just going to evolve as they always have, with the financial services market being big enough for both players. With over $ 7 Trillion in transactions on a daily basis, banks are the ones that control over 99% via fiat currencies with over 70% via the US Dollars. The benefits of digital currencies is slowly being realised by most major institutions including Goldman Sachs, JP Morgan and a number of others. Digital currencies are now being taken more seriously and even piloted via several governments including China, UK, India, Germany, France to name but a few.</p>\r\n\r\n<p>Many companies and&nbsp;<a href=\"https://www.flashxchanger.com/\" target=\"_blank\">exchanges</a>&nbsp;now offer services related to this new asset class, ranging from the simple purchase of a coin to the development of a structured product such as a future, plus the implementation of leverage or margin calls. There is also a growing possibility of&nbsp;<a href=\"https://www.oztcard.com/\" target=\"_blank\">OTC transactions</a>, which are vital for market liquidity and are intended more for a different user class of institutional owners and &quot;Whales&quot;. But here again, there is nothing about tax and asset optimization strategies in connection with crypto-asset.</p>\r\n', 'active', '2022-06-29 11:46:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sl_blog_gallery`
--

CREATE TABLE `sl_blog_gallery` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `CreatedAt` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sl_blog_gallery`
--

INSERT INTO `sl_blog_gallery` (`id`, `image`, `CreatedAt`) VALUES
(1, '1655898526-1655807266-about.jpg', '2022-06-22 11:48:46'),
(2, '1655898624-1655874787-ian-dooley-DuBNA1QMpPA-unsplash.jpg', '2022-06-22 11:50:24'),
(3, '1655900351-1655874787-ian-dooley-DuBNA1QMpPA-unsplash.jpg', '2022-06-22 12:19:11');

-- --------------------------------------------------------

--
-- Table structure for table `sl_books`
--

CREATE TABLE `sl_books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` longtext NOT NULL,
  `link` longtext,
  `description` longtext,
  `CreatedAt` datetime NOT NULL,
  `UpdatedAt` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sl_books`
--

INSERT INTO `sl_books` (`id`, `title`, `image`, `link`, `description`, `CreatedAt`, `UpdatedAt`) VALUES
(5, 'Lorem Ipsum', 'https://lunar-estate.com/serge/admin-panel/upload/books/forbes.png\r\n', NULL, 'Lorem Ipsum dummy text', '2022-06-23 03:37:16', NULL),
(4, 'Lorem Ipsum2', 'https://lunar-estate.com/serge/admin-panel/upload/books/forbes.png\r\n', 'https://stackoverflow.com/questions/72810458/flash-message-not-showing-in-reactjs?noredirect=1#comment128604967_72810458', 'Lorem Ipsum dummy text', '2022-06-23 03:37:11', NULL),
(7, 'Lorem Ipsum34', 'https://lunar-estate.com/serge/admin-panel/upload/books/forbes.png\r\n', NULL, 'sdfgsfdg', '2022-06-24 12:28:50', '2022-06-28 05:14:40');

-- --------------------------------------------------------

--
-- Table structure for table `sl_companies`
--

CREATE TABLE `sl_companies` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `CreatedAt` datetime NOT NULL,
  `UpdatedAt` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sl_companies`
--

INSERT INTO `sl_companies` (`id`, `image`, `CreatedAt`, `UpdatedAt`) VALUES
(8, '1655957056-1655901193-1655875280-1655874787-ian-dooley-DuBNA1QMpPA-unsplash.jpg', '2022-06-23 04:04:16', NULL),
(7, '1655955524-1655901026-1655807255-about.jpg', '2022-06-23 03:38:44', NULL),
(6, '1655955518-1655901193-1655875280-1655874787-ian-dooley-DuBNA1QMpPA-unsplash.jpg', '2022-06-23 03:38:38', NULL),
(9, '1656074041-download.jpg', '2022-06-24 12:34:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sl_subscribers`
--

CREATE TABLE `sl_subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `CreatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sl_subscribers`
--

INSERT INTO `sl_subscribers` (`id`, `email`, `CreatedAt`) VALUES
(1, 'amitbwii76@gmail.com', '2022-06-30 12:12:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sl_admin`
--
ALTER TABLE `sl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sl_blogs`
--
ALTER TABLE `sl_blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sl_blog_gallery`
--
ALTER TABLE `sl_blog_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sl_books`
--
ALTER TABLE `sl_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sl_companies`
--
ALTER TABLE `sl_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sl_subscribers`
--
ALTER TABLE `sl_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sl_admin`
--
ALTER TABLE `sl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sl_blogs`
--
ALTER TABLE `sl_blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `sl_blog_gallery`
--
ALTER TABLE `sl_blog_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sl_books`
--
ALTER TABLE `sl_books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sl_companies`
--
ALTER TABLE `sl_companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sl_subscribers`
--
ALTER TABLE `sl_subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

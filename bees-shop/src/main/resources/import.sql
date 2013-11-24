/* Site Config */
insert ignore into `bees_user` (`authority`, `name`, `password`, `status`) values('2','toby.marson@gmail.com','$2a$10$dJtSh4IWzCHl0XlCfZO9AOp6dMHOTrbUaeFW3cV5XI9Xf53KpLH2e','1');

/* Sample Catalog */
insert ignore into `bees_category` (`name`, `heading`, `status`) values	("sound-vision", "Sound &amp; Vision", 1),("televisions", "Televisions", 1),("home-cinema", "DVD, Blu-Ray &amp; Home Cinema", 1),("stands-accessories", "Accessories", 1),("computing", "Computing", 1),("ipads-tablets", "iPad &amp; Tablets", 1),("laptops-netbooks", "Laptops &amp; Netbooks", 1),("desktop-pc", "Desktop PCs", 1),("monitors-projectors", "Monitors &amp; Projectors", 1),("computer-accessories", "Computer Accessories", 1),("appliances", "Appliances", 1),("washing-machines", "Washing Machines", 1),("tumble-dryers", "Tumble Dryers", 1),("kitchen-appliances", "Kitchen Appliances", 1),("small-appliances", "Small Appliances", 1);
insert ignore into `bees_product` (`id`, `name`, `heading`, `status`) values ("1", "samsung-tv", "Samsung TV", 1),("2", "sony-tv", "Sony TV", 1),("3", "panasonic-tv", "Panasonic TV", 1),("4", "bose-sound-system", "Bose Sound System", 1),("5", "panasonic-dvd", "Panasonic DVD Player", 1),("6", "sony-blu-ray", "Sony 5.1 Blu Ray Home Cinema System", 1),("7", "sonos-playbar", "Sonos PlayBar", 1),("8", "television-wall-mount", "TV Wall Mount", 1),("9", "3d-glasses", "3D Glasses", 1),("10", "universal-remote", "Universal Remote Control", 1),("11", "skype-camera", "Skype Camera", 1),("12", "oak-television-stand", "Oak Television Stand", 1),("13", "metal-television-stand", "Metal Television Stand", 1),("14", "google-nexus-7", "Google Nexus 7", 1),("15", "google-chromebook", "Google Chromebook", 1),("16", "sony-xperia", "Sony Xperia Laptop", 1),("17", "sony-xperia-tablet", "Sony Xperia Z 10.1 Tablet", 1),("18", "ipad", "Apple iPad", 1);
insert ignore into `bees_variant` (`productId`, `price`, `name`, `heading`, `status`) values ("1", "699", "samsung-tv", "Samsung TV", 1),("2", "899", "sony-tv", "Sony TV", 1),("3", "699", "panasonic-tv", "Panasonic TV", 1),("4", "699", "bose-sound-system", "Bose Sound System", 1),("5", "699", "panasonic-dvd", "Panasonic DVD Player", 1),("6", "699", "sony-blu-ray", "Sony 5.1 Blu Ray Home Cinema System", 1),("7", "699", "sonos-playbar", "Sonos PlayBar", 1),("8", "699", "television-wall-mount", "TV Wall Mount", 1),("9", "699", "3d-glasses", "3D Glasses", 1),("10", "699", "universal-remote", "Universal Remote Control", 1),("11", "699", "skype-camera", "Skype Camera", 1),("12", "699", "oak-television-stand", "Oak Television Stand", 1),("13", "699", "metal-television-stand", "Metal Television Stand", 1),("14", "699", "google-nexus-7", "Google Nexus 7", 1),("15", "699", "google-chromebook", "Google Chromebook", 1),("16", "699", "sony-xperia", "Sony Xperia Laptop", 1),("17", "289", "sony-xperia-16gb", "Xperia Z 16GB", 1),("17", "329", "sony-xperia-32gb", "Xperia Z 32GB", 1),("17", "369", "sony-xperia-32gb-lte", "Xperia Z 32GB LTE", 1),("18", "399", "ipad-16gb", "16GB iPad", 1),("18", "449", "ipad-32gb", "32GB iPad", 1),("18", "499", "ipad-32gb-lte", "32GB iPad LTE", 1);

/* CMS Pages */
INSERT IGNORE INTO `bees_page` (`ID`, `heading`, `name`, `description`, `status`) VALUES (1,null,'home','<div class=\"banner\"><ol class=\"slides\"><li><a data-slide=\"1\" href=\"/shop-online\"><img src=\"/assets/client/files/images/banner-01.jpg\" alt=\"\" /></a></li><li><a data-slide=\"2\" href=\"/shop-online\"><img src=\"/assets/client/files/images/banner-02.jpg\"  alt=\"\" /></a></li><li><a data-slide=\"3\" href=\"/shop-online\"><img src=\"/assets/client/files/images/banner-03.jpg\"  alt=\"\" /></a></li></ol></div>',1),(2,'Contact Us','contact-us','<p>We aim to provide an easy and enjoyable website experience for our customers. As such, we welcome your comments and questions. Get in touch with is and let us know how we can improve our service to you, or if you have any questions or queries relating to the website or an order you may have placed.</p>',1),(3,'Delivery Costs and Information','delivery','<p>Same day deliveries must be received by 1pm GMT, orders received after this time will be delivered the next working day.</p><h2>Delivery Days</h2><p>We deliver flowers from 9am to 5pm, Monday to Saturday. Unfortunately we do not deliver on Sundays. If an order is received for a Sunday it will be delivered the next working day.</p><h2>Delivery Charges</h2><p>A delivery charge is required on the location of the delivery. These charges are as follows:</p><ul><li>Local Delivery - <strong>&pound;5.95</strong></li><li>National Delivery - <strong>&pound;7.95</strong></li></ul>\'',1),(4,'Terms &amp; Conditions','terms-conditions','<h2>Products</h2><p>1.1 All Products on this website (which may vary from time to time) are available in <strong>AREA, UK</strong><br />1.2 Certain Products may be delivered by us in bud to ensure longer life.<br />1.3 Some Products, Flowers and Plants may be harmful or poisonous, if you require further information before submitting an order please contact us using the contact details set out in Section 6 below.<br />1.4 All Products are subject to availability. In the event of any supply difficulties, we reserve the right to substitute a Product of equivalent value and quality without notice.<br />1.5 In the event that we are unable to supply the Product or any substitute product to you at all, we shall notify you as soon as is reasonably possible and shall reimburse your payment in full and in any event no later than 30 days after the intended delivery date.</p><p>Within our alcoholic gift range:</p><p>1.6.1 We reserve the right to replace brands shown to equal value and quality.<br />1.6.2 Under the Licensing Act of 1964 (UK) and 1976 (Scotland) it is an offence for any person under 18 years to buy, or attempt to buy, alcoholic liquor. It is an offence under sections 32 and 33 of the intoxicating Liquor Act 1988 (Ireland) for any person under 18 to buy, or attempt to buy, intoxicating liquor. It is an offence under Licensing (Northern Ireland) Order 1990 for any person under 18 to buy, or attempt to buy, intoxicating liquor.</p><h2>Prices</h2><p>2.1 Prices listed within the Service are valid for a maximum of 14 days from submitting your order.<br />2.2 Prices include VAT.</p><h2>Order / Payments</h2><p>3.1 During order submission you shall be required to provide us with your personal details, including accurate postcode, together with those of the intended recipient and all necessary payment details. We accept payment by most major credit and debit cards. By clicking on the &#39;complete order&rsquo; button on the Order Form, you are consenting to be bound by our terms and conditions contained in these Terms and Conditions and appearing anywhere on the Online site.<br />3.2 Submitting your Order Form is subject to our acceptance of this offer and we will not consider ourselves bound by a contract with you unless we have issued you a confirmation of order delivery by email. This is not the email sent on submission of an order.<br />3.3 We cannot accept Order Forms from customers under the age of eighteen (18) years.</p><h2>Delivery</h2><p>4.1 Our delivery service is only within the <strong>AREA, UK</strong> area.<br />4.2 On acceptance by us of your Order Form we will advise you by e-mail confirmation of the intended delivery date. We will process Order Forms received on Sundays or Public Holidays the next working day. We do not deliver on Sundays or public holidays but in this case we will deliver the Product you request on the next working day.<br />4.3 Anomalies in your submitted personal details may lead to problems or delays in delivery, so before placing your order, please ensure that you have included the full address details, including accurate postcode of the intended recipient and your daytime contact telephone number or e-mail address so that we can notify you in the event that any delivery problems are encountered.<br />4.4 Whilst we agree to use all reasonable endeavours to ensure that delivery will be on the requested delivery date you acknowledge that in very occasional circumstances delivery on the requested terms will not be possible. In such circumstances you will be given prior notice wherever possible and we shall either make alternative arrangements or shall reimburse your payment in full.<br />4.5 In case of delivery to certain locations where a third party is involved, such as offices, hospitals, airports, hotels, ships and other business locations, the signature of any person authorised to accept delivery on behalf of the organisation shall be accepted as proof of delivery to your chosen recipient. Please be advised that we are unable to deliver wines, and plants to Funeral Directors, Hospitals, airports or ships.<br />4.6 Please note that we are only responsible for delivering against signature to the address you quote (or an imminent neighbour if no one is at home) we regret that where goods have been correctly delivered we can not accept responsibility if the intended recipient has moved, or lives elsewhere, and the actual received refuses or fails to return item(s).<br />4.7 Where the carrier is unable to find someone to accept delivery they will either deliver to a neighbour or leave a card at the address for the recipient to make contact.<br />4.8 It is possible to select a preferred delivery time within the order process in the Delivery Notes field. This option should be used only for orders requesting delivery to funerals or funeral parlours. Whilst every effort will be made to ensure your order is delivered prior to the time selected, no guarantee for delivery by the time specified can be given. To assist us in meeting your preference, please ensure your order is placed at least one working day prior to the preferred delivery time.<br />4.9 In the instance of there being difficulties in delivering your order to the intended recipient we reserve the right to contact the recipient using the contact details you provide on the Order Form.<br />4.10 When placing your order you are able to specify further delivery information using the &#39;Delivery Notes&#39; field provided. This is intended to provide further guidance to the party delivering your order which isn&#39;t included within your address information, for example to specify floor number, or hospital ward. We reserve the right to not action any delivery requests specified in this field which we deem unacceptable and will use other elements of address information provided elsewhere on the order form to fulfill your order.</p><h2>Cancellation</h2><p>5.1 Orders may be amended or cancelled up to 24 hours before the intended delivery date.<br />5.2 To amend or cancel your order, please contact us using the contact details set out in Section 6 below.<br />5.3 You are entitled to cancel any payment at any time where fraudulent use has been made of your credit or debit card by another person not acting on behalf of you or as your agent and to be re-credited by us to the extent that such sums are not reimbursed by the card issuer in such circumstances.</p><h2>Customer Services</h2><p>6.1 In the event that you are not satisfied with the Online Service any complaints should be addressed to:</p><p><strong>COMPANY NAME</strong><br />ADDRESS</p><p>6.2 Because of the perishable nature of Products and in order to assist us in resolving any complaints quickly, we advise you to make any complaint within 1 working day of the date of delivery or intended delivery of your purchase.</p><h2>Disclaimer</h2><p>7.1 Whilst we agree to use our reasonable endeavours to ensure that this Online Site and/or the Online Service is fully operational and error-free we cannot guarantee this and, therefore, accept no responsibility for any defects and/or interruption of the Online Site and/or the Online Service and shall be released from our obligations under these Terms and Conditions in the event of any cause beyond our reasonable control which renders the provision of the Online Site and/or the Online Service impossible or impractical.<br />7.2 (a) We accept liability for death or personal injury arising from our negligence.<br />(b) Subject to clause 7.2(a), our liability in contract, tort (including negligence and breach of statutory duty) or otherwise arising by reason of or in connection with your Order Form with us shall be limited to a multiple of 3 times the price you have paid for the Products.<br />(c) Subject to clauses 7.2(a) and 7.2(b) above we exclude all liability for any claims, losses, demands and damages, including without limitation, any costs, loss of profits, loss of contracts or business opportunity, loss of data and any other consequential, incidental, special or punitive damages, even if we have been advised of the possibility of such damages, arising directly or indirectly out of or in any way connected with your use or inability to access the Online Site and/or the Online Service, whether arising in contract, tort (including negligence), under statute or otherwise PROVIDED THAT nothing contained in these Terms and Conditions affects or will affect your or the recipient&#39;s statutory rights in relation to the quality, fitness or description of the Products supplied.<br />(d) Subject to clauses 1.5 and 4.3 above, we shall not be liable for any delay or inability to perform our obligations to you if such delay is due to any cause whatsoever beyond our reasonable control.</p><h2>General</h2><p>8.1 We reserve the right to supplement and amend the Terms and Conditions on which you are permitted access to the Online Site and/or the Online Service from time to time. We will post any changes on the Site and it is your responsibility as a customer to review the Terms and Conditions on each occasion you access the Online Service or Online Site. Changes will be effective five (2) hours after the posting of any such change and all subsequent dealings between you and us shall be on the new terms and conditions.<br />8.2 Additionally, we reserve the right to suspend, restrict or terminate access to the Online Site and/or the Online Services for any reason at any time.<br />8.3 These Terms and Conditions shall be deemed to include all other notices, policies, disclaimers and other terms contained in the Online Site, provided that in the event of a conflict between any such other notices, policies, disclaimers and other terms, these Terms and Conditions shall prevail. If any of these Terms and Conditions is held to be invalid or unenforceable, the remaining provisions shall remain in full force and effect.<br />8.4 We shall ensure that we comply with the requirement of all current data protection legislation including, without limitation, the Data Protection Act 1998 (as replaced, modified or re-enacted from time to time). We shall only use personal data received from you for the purpose of fulfilling our obligations under these Terms and Conditions and as stated in our Privacy Policy.<br />8.5 A person who is not a party to the agreement between you and us has no rights under the Contracts (Rights of Third Parties) Act 1999 to enforce any of the Terms and Conditions but this does not affect any right or remedy which exists apart from that Act.<br />8.6 Save in respect of fraudulent misrepresentation, this agreement (including any documents and instruments referred to herein) supersedes all prior representations, arrangements, understandings, and agreements between you and us (whether written or oral) and sets forth the entire agreement and understanding between you and us relating to the subject matter hereof.<br />8.7 Your purchase will be deemed to have occurred in the UK. These Terms and Conditions shall be governed by and construed in accordance with English Law and the parties agree to submit to the exclusive jurisdiction of the English courts.</p>',1),(5,'Privacy Policy','privacy-policy','<h2>Information that is gathered from visitors</h2><p>In common with other websites, log files are stored on the web server saving details such as the visitor\'s IP address, browser type, referring page and time of visit.</p><p>Cookies may be used to remember visitor preferences when interacting with the website.</p><p>Where registration is required, the visitor\'s email and a username will be stored on the server.</p><h2>How the Information is used</h2><p>The information is used to enhance the vistor\'s experience when using the website to display personalised content and possibly advertising.</p><p>E-mail addresses will not be sold, rented or leased to 3rd parties.</p><p>E-mail may be sent to inform you of news of our services or offers by us or our affiliates.</p><h2>Visitor Options</h2><p>If you have subscribed to one of our services, you may unsubscribe by following the instructions which are included in e-mail that you receive.</p><p>You may be able to block cookies via your browser settings but this may prevent you from access to certain features of the website.</p><h2>Cookies</h2><p>Cookies are small digital signature files that are stored by your web browser that allow your preferences to be recorded when visiting the website. Also they may be used to track your return visits to the website.</p>',1),(6,'Cookie Policy','cookie-policy','<h2>What is a Cookie?</h2><p>A cookie is a small text file stored on a user&rsquo;s computer whilst they are browsing a website. We use cookies on our site to track usage statistics, and to keep track of what you have in your basket.</p><p>To be able to order products from this website you need have cookies enabled. If you do not have cookies enabled you will still be able to view the website for browsing and research.&nbsp; However, you will not be able to add products to your basket and buy them.</p><p>Our cookies do <strong>not&nbsp;</strong>store personal information such as credit card details. Please note, that cookies can not harm your computer, they are purely informational. &nbsp;</p><h2>Our Cookies</h2><p>Our website uses cookies to allow basic function, such as adding items to the basket, logging into an account, or other persistent information.&nbsp;</p><p>Here is a list of the cookies used on our website, and their functions:</p><table class=\"highlight cookies\"><thead><tr><th><p>Name</p></th><th><p>Cookie Purpose</p></th></tr></thead><tbody><tr><th><p>JSESSIONID</p></th><td><p>This cookie is created when you first visit our website, and is created to provide basic site function, such as usage of the shopping basket, discount codes, and account logins. Once the session is finished, this cookie is removed from the computer. You can disable this cookie through your browser settings, however doing so will prevent this site from working correctly on your device.</p></td></tr><tr><th><p>_utma,&nbsp;<br />_utmb,<br />_utmc,<br />_utmz</p></th><td><p>These cookies are used by Google Analytics, to allow basic usage tracking of activity on the website. This allows us to analyze vistor information, such as Browser usage, new vistor number, time on site, and most popularly viewed pages. This information is not open to the public, and does not contain any personal information.</p><p>These cookies may remain on your computer from thirty minutes to 2 years. This is so that if you revisit our site, you are not tracked as a new visitor but as a returning visitor. You may clear these cookies at any point by clearing your browser&#39;s browsing data, or opt out of Google Analytics entirely using the <a href=\"https://tools.google.com/dlpage/gaoptout/\" target=\"_blank\" title=\"Opt out of Google Analytics\">Google Analytics Opt-out Browser Add-on</a>.</p></td></tr></tbody></table><h2>Third Party Cookies</h2><p>We may someitmes embed widgets on a webpage such as media players or promotional links, for instance YouTube videos and Skype buttons. If you go on to a web page that contains embedded content, you may be sent cookies from those websites.&nbsp;</p><p>You may also see tools to &#39;share&#39; to your friends through social networks - such as Facebook and Twitter. You may be sent cookies from these websites as well.</p><p>Since we do not control these cookies, we suggest you check these third party websites for information on their cookies and how to manage them.</p>',1);
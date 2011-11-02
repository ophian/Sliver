<?php
// About
@define('THEME_ABOUT', '<div class="template_about_box"><h3>Willkommen bei Sliver!</h3>Dieses Template nutzt neue HTML5 Techniken (boilerplate), wie Semantik und CSS3 Stylesheets und kommt mit einem aktivierten JQuery Script, damit Javascript (js/script.js) in den Templates genutzt werden kann.<ul><li>Einstellung des gewünschten Seiten-Layout mittels Seitenleisten rechts, links und Einspaltig hier in dieser Template-Konfiguration.</li><li>Einstellung zusätzlicher Seitenleisten oben, mittig und unten in der Serendipity Plugin Section.</li><li>Auswahl einer der voreingestellten Navigations Button Styles.</li><li>Um das Navigationsmenü in Anzahl und Links nutzen zu können, muss diese Konfiguration zweimal bestätigt werden!</li><li>Bitte die js/libs/PIE.htc Datei (das IE 6/7/8 CSS3 Helfer Script für Verläufe und Schatteneffekte) in das root (/) Verzeichnis ihrer Domain kopieren!</li></ul></div>');
// Stylesheet
@define('USER_STYLESHEET','Zusätzliches Benutzerstylesheet einbinden.');
@define('USER_STYLESHEET_BLAHBLAH','Dieses Stylesheet muss vom Benutzer im Template-Verzeichnis angelegt werden. Es muss user.css heißen und kann benutzt werden, um ausgewählte Styles zu überschreiben.');
// Layout
@define('LAYOUT_TYPE','Layout des Blogs (B = Blogeinträge, S = Seitenleiste, CF = Content first)');
@define('LAYOUT_SB','Zweispaltig, Seitenleiste links');
@define('LAYOUT_BS','Zweispaltig, Seitenleiste rechts, CF');
@define('LAYOUT_SC','Einspaltig, Seitenleiste(n) unten, CF');
// Fahrner Image Replacement
@define('FIR_BTITLE','Blogtitel im Header anzeigen');
@define('FIR_BDESCR','Blogbeschreibung im Header anzeigen');
// Date format
@define('BP_DATE_FORMAT', 'Datumsformat');
// Entry footer
@define('ENTRY_FOOTER_POS','Position des Eintragsfußes');
@define('BELOW_ENTRY','Unter dem Eintrag');
@define('BELOW_TITLE','Unter dem Titel des Eintrags');
@define('SPLIT_FOOTER','Aufgeteilter Eintragsfuß');
@define('FOOTER_AUTHOR','Verfasser im Eintragsfuß anzeigen');
@define('FOOTER_SEND2PRINTER','"Sende an Drucker" im Eintragsfuß anzeigen');
@define('SEND2_PRINTER','Drucken');
@define('FOOTER_CATEGORIES','Kategorie(n) im Eintragsfuß anzeigen');
@define('FOOTER_TIMESTAMP','Zeitstempel im Eintragsfuß anzeigen');
@define('FOOTER_COMMENTS','Anzahl der Kommentare im Eintragsfuß anzeigen');
@define('FOOTER_TRACKBACKS','Anzahl der Trackbacks im Eintragsfuß anzeigen');
@define('ALT_COMMTRACK','Alternative Darstellung der Anzahl der Kommentare und Trackbacks benutzen');
@define('ALT_COMMTRACK_BLAHBLAH','(z.B. "Keine Kommentare" bzw. "1 Kommentar" statt "Kommentare (0)" bzw. "Kommentare(1)")');
@define('SHOW_ADDTHIS_WIDGET','AddThis (http://www.addthis.com) Bookmark-Widget im Eintragsfuß anzeigen');
@define('ADDTHIS_ACCOUNT','AddThis.com Account-Nummer.  Nicht erforderlich, aber falls angegeben, werden Statistiken darüber ermittelt, wie Besucher Seiten bookmarken und die Bookmarks mit anderen teilen.');
@define('SHOW_STICKY_ENTRY_FOOTER','Eintragsfuß für klebrige Einträge anzeigen');
@define('SHOW_STICKY_ENTRY_HEADING','Eintragstitel für klebrige Einträge anzeigen');
@define('SHOW_STICKY_ENTRY_BLAHBLAH','(benötigt das Plugin "Erweiterte Eigenschaften von Artikeln")');
// Page footer next page  and previous page links
@define('PREV_NEXT_STYLE','Links zur vorigen/nächsten Seite im Seitenfuß anzeigen als');
@define('PREV_NEXT_TEXT','Nur Text');
@define('PREV_NEXT_TEXT_ICON','Text und Icon');
@define('PREV_NEXT_ICON','Nur Icon');
@define('SHOW_PAGINATION','Zusätzliche Seitennummerierung (Pagination) anzeigen');
// coComment support
@define('COCOMMENT_ACTIVE','coComment (http://www.cocomment.com) in Kommentarformulare einbinden');
// Counter code
@define('COUNTER_CODE', 'Code für Counter und/oder Statistik-Tools einfügen');
@define('USE_COUNTER', 'Oben eingegeben Counter-Code in das Blog einbinden');
// Additional footer text
@define('FOOTER_TEXT', 'Hier zusätzlichen Text, der im Seitenfuss erscheinen soll, einfügen.');
@define('USE_FOOTER_TEXT', 'Oben eingegebenen Text einbinden');
// jquery support
@define('SLIVERS_JQUERY', 'Slivers JQuery nutzen?');
@define('SLIVERS_JQUERY_BLAHBLAH', 'Bindet slivers und ajax.googleapis.com jquery.min.js ein');
// google analytics support
@define('GOOGLE_ANALYTICS', 'Google Analytics nutzen?');
@define('GOOGLE_ANALYTICS_BLAHBLAH', 'Bindet http/s google-analytics.com/ga.js ein');
@define('GOOGLE_ANALYTICS_ID', 'Google Analytics ID');
//Sitenav
@define('SITENAV_POSITION','Darstellung der Navigationsleiste');
@define('SITENAV_NONE','Keine Navigationsleiste');
@define('SITENAV_ABOVE','Über dem Kopfbereich');
@define('SITENAV_BELOW','Unter dem Kopfbereich');
@define('SITENAV_LEFT','Oben in der linken Seitenleiste');
@define('SITENAV_RIGHT','Oben in der rechten Seitenleiste');
@define('SITENAV_FOOTER','Links der Navigationleiste zusätzlich im Seitenfuss anzeigen');
@define('SITENAV_FOOTER_BLAHBLAH','(werden nicht angezeigt, wenn oben "Keine Navigationsleiste" ausgewählt wurde)');
@define('SITENAV_QUICKSEARCH','Suchfeld in der Navigationsleiste anzeigen');
@define('SITENAV_QUICKSEARCH_BLAHBLAH','(funktioniert nur, wenn Navigationsleiste über oder unter dem Kopfbereich; Anzeige des entsprechenden Seitenleistenplugins wird automatisch unterdrückt)');
@define('SITENAV_TITLE','Titel des Navigations-Menüs');
@define('SITENAV_TITLE_BLAHBLAH','(nur bei Anzeige in der Seitenleiste)');
@define('SITENAV_TITLE_TEXT','Hauptmenü');
@define('NAVLINK_AMOUNT', 'Anzahl der Links in der Navigationsleiste (Styles verwalten-Seite muss danach neu geladen werden)');
@define('NAVLINK_AMOUNT_BLAHBLAH', '(Gemeinhin wird das Static Pages Plugin - serendipity_event_staticpage - dazu benutzt, um CMS ähnliche Seiten oder Navigationsseiten herzustellen, die hier durch einen Link verlinkt werden können.)');
@define('NAV_LINK_TEXT', 'Text des Navigationsleisten-Links');
@define('NAV_LINK_URL', 'URL des Navigationsleisten-Links');

@define('ARCHIVE_TEXT_INTRO', 'Die Archive im Sliver Template bieten verschiedene Möglichkeiten ältere Inhalte zu finden. Blog-Einträge sind in <a href="#bycats">Kategorien</a> (Anzahl der Einträge je Kategorie in Klammern) eingeordnet und mit der Häufigkeit des Vorkommens nach gewichteten <a href="#bytags">Tags</a> versehen, zudem gibt es ein nach <a href="#bydate">Datum</a> geordnetes Archiv.');
@define('ARCHIVE_TEXT_ADD', '');//'Außerdem gibt es noch das <a href="%spages/pantheon.html">Pantheon</a>, in dem ich lesenswerte Artikel aus dem Weblog oder anderen Seiten zu ausgewählten Themen gruppiert aufliste.');
@define('ARCHIVE_TEXT_YEARMONTH', 'Die hier verlinkten Archivseiten zeigen eine Auflistung der Einträge in den betreffenden Monaten an.');
@define('ARCHIVE_TEXT_SUMMARY', 'Archivübersicht');
/* Additional sidebars */
@define('TOP','oben');
@define('FOOTER','unten');
@define('MIDDLE','inmitten');
/* Navigation styles */
@define('SITENAV_STYLE', 'Wähle die Navigationsleisten-CSS-Button-Styles.');
@define('SITENAV_STYLE_BLAHBLAH', 'Dies gilt nur die Buttons über oder unter dem Kopfbereich, nicht in den Seitenleisten. Default = nutze default CSS mit Hintergrundbild (id:#sitenav) - Einfach = nutze einfaches CSS style (id:#nav). - Erweitert = nutze erweiterte Styles mit CSS3 Techniken (id:#sitenav-extended).');
@define('SITENAV_SLIM', 'einfach');
@define('SITENAV_EXTENDED', 'erweitert');

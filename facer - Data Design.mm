<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1488243173489" ID="ID_1283278359" MODIFIED="1488319323470" TEXT="facer">
<icon BUILTIN="ksmiletris"/>
<node CREATED="1488243461437" ID="ID_1431130127" MODIFIED="1488499363706" POSITION="right" TEXT="Data Design">
<node CREATED="1488243673805" ID="ID_1987726938" MODIFIED="1488560279790" TEXT="Lookup Tables">
<node CREATED="1488499424792" ID="ID_1341925242" MODIFIED="1488502190405" TEXT="STD_Application">
<icon BUILTIN="button_ok"/>
<node CREATED="1488499689617" ID="ID_1953578192" MODIFIED="1488505451173" TEXT="Application">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1488499416295" ID="ID_1713419560" MODIFIED="1488502173955" TEXT="STD_Component">
<icon BUILTIN="button_ok"/>
<node CREATED="1488499689617" ID="ID_1902416631" MODIFIED="1488505460837" TEXT="Application (FK)">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1488499435677" ID="ID_225383192" MODIFIED="1488505456317" TEXT="Component">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1488244874570" ID="ID_1325032627" MODIFIED="1488505503233" TEXT="STD_Event">
<icon BUILTIN="button_ok"/>
<node CREATED="1488505336139" ID="ID_318891257" MODIFIED="1488505500580" TEXT="Event">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1488505476880" ID="ID_1745840198" MODIFIED="1488505789583" TEXT="Application (FK)">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1488505482225" ID="ID_1883723793" MODIFIED="1488505789583" TEXT="Component (FK)">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1488244914930" ID="ID_1765970240" MODIFIED="1488504764711" TEXT="(?) Add new Event Detail to Active Incident?"/>
</node>
<node CREATED="1488312004715" ID="ID_1213402540" MODIFIED="1488504787032" TEXT="STD_Severity">
<icon BUILTIN="button_ok"/>
<node CREATED="1488504486421" ID="ID_1218382792" MODIFIED="1488505043952" TEXT="Severity">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1488244961734" ID="ID_1108574874" MODIFIED="1488504783583" TEXT="STD_Incident">
<icon BUILTIN="button_ok"/>
<node CREATED="1488244969533" ID="ID_983760466" MODIFIED="1488559772016" TEXT="Incident Type">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1488311999141" ID="ID_222770101" MODIFIED="1488505021452" TEXT="(?) Default Severity -- Assign based on Incident?  Override allowed?"/>
</node>
<node CREATED="1488505083440" ID="ID_348798061" MODIFIED="1488505100613" TEXT="STD_Contact">
<icon BUILTIN="button_ok"/>
<node CREATED="1488505089352" ID="ID_800128412" MODIFIED="1488505583278" TEXT="Contact Type (Examples:  Email, Phone, Text)">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node CREATED="1488243502551" ID="ID_1692883080" MODIFIED="1488499371346" TEXT="Security">
<node CREATED="1488243486174" ID="ID_1836091771" MODIFIED="1488504833057" TEXT="User">
<icon BUILTIN="button_ok"/>
<node CREATED="1488243580410" ID="ID_599381055" MODIFIED="1488505034044" TEXT="Login">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1488243622548" ID="ID_1792887000" MODIFIED="1488243628632" TEXT="Password (hashed)"/>
<node CREATED="1488243748938" ID="ID_1296930168" MODIFIED="1488243765741" TEXT="Token (hashed)"/>
<node CREATED="1488243595314" ID="ID_580782896" MODIFIED="1488243600751" TEXT="First Name"/>
<node CREATED="1488243601611" ID="ID_1736700337" MODIFIED="1488243603743" TEXT="Last Name"/>
<node CREATED="1488243604803" ID="ID_114941162" MODIFIED="1488243619296" TEXT="Create Date"/>
<node CREATED="1488243978555" ID="ID_103520352" MODIFIED="1488301357768" TEXT="Active?  (Default N; Make Active by ???)"/>
<node CREATED="1488243769242" ID="ID_1559130935" MODIFIED="1488243986352" TEXT="Reset Password?"/>
</node>
<node CREATED="1488243899064" ID="ID_1524706829" MODIFIED="1488503370652" TEXT="User Contact">
<icon BUILTIN="button_ok"/>
<node CREATED="1488243908343" ID="ID_471056389" MODIFIED="1488505145495" TEXT="Login">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1488243945385" ID="ID_628912137" MODIFIED="1488505145491" TEXT="Priority (1, 2, 3, ...)">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1488243912185" ID="ID_135105359" MODIFIED="1488505189298" TEXT="Contact Type (FK)">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1488243933096" ID="ID_399586361" MODIFIED="1488505128239" TEXT="(Contact Detail)"/>
</node>
<node CREATED="1488503091264" ID="ID_1449936855" MODIFIED="1488504839433" TEXT="User Activity">
<icon BUILTIN="button_ok"/>
<node CREATED="1488504232016" ID="ID_45938634" MODIFIED="1488505152636" TEXT="Activity #">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1488504228752" ID="ID_80869235" MODIFIED="1488505159944" TEXT="Login (FK)"/>
<node CREATED="1488504847343" ID="ID_1443999758" MODIFIED="1488505225658" TEXT="(Activity Detail)"/>
<node CREATED="1488504869846" ID="ID_952580947" MODIFIED="1488505630261" TEXT="(?) Track Incident or Event to Activity?"/>
</node>
</node>
<node CREATED="1488243545056" ID="ID_331380323" MODIFIED="1488243547236" TEXT="Tracking">
<node CREATED="1488243472629" ID="ID_118386215" MODIFIED="1488503213167" TEXT="Event">
<icon BUILTIN="button_ok"/>
<node CREATED="1488505244863" ID="ID_355623155" MODIFIED="1488505257129" TEXT="Event #">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1488244358435" ID="ID_76820242" MODIFIED="1488505651526" TEXT="Event (FK)"/>
<node CREATED="1488301467760" ID="ID_131064803" MODIFIED="1488504899653" TEXT="(Event Details)"/>
</node>
<node CREATED="1488243495757" ID="ID_770602523" MODIFIED="1488560162290" TEXT="Rules">
<icon BUILTIN="button_ok"/>
<node CREATED="1488505745308" ID="ID_1689248764" MODIFIED="1488505749552" TEXT="Rule #">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1488245053545" ID="ID_374531669" MODIFIED="1488505753826" TEXT="Incident Type (FK)"/>
<node CREATED="1488245058282" ID="ID_1971903936" MODIFIED="1488505756794" TEXT="Event (FK)"/>
<node CREATED="1488245066681" ID="ID_1178333385" MODIFIED="1488301496502" TEXT="(Rules to trigger Incident)"/>
<node CREATED="1488559928544" ID="ID_866618064" MODIFIED="1488559973903" TEXT="(Rules aware of date/time -- ie., Only fire during weekdays, 8-6;  Different rule for weekends; week nights)"/>
</node>
<node CREATED="1488243476125" ID="ID_897888211" MODIFIED="1488505658994" TEXT="Incident">
<icon BUILTIN="button_ok"/>
<node CREATED="1488244429751" ID="ID_204193792" MODIFIED="1488505663112" TEXT="Incident #">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1488244475648" ID="ID_76257938" MODIFIED="1488505668959" TEXT="Incident Type (FK)"/>
<node CREATED="1488244168884" ID="ID_602270745" MODIFIED="1488244172608" TEXT="Severity"/>
<node CREATED="1488244300657" ID="ID_519247991" MODIFIED="1488244323174" TEXT="Incident Date"/>
<node CREATED="1488244323929" ID="ID_107956747" MODIFIED="1488557324688" TEXT="Resolved Date"/>
</node>
<node CREATED="1488244405261" ID="ID_775553181" MODIFIED="1488506262507" TEXT="Incident Detail">
<icon BUILTIN="button_ok"/>
<node CREATED="1488244429751" ID="ID_1066978964" MODIFIED="1488557092973" TEXT="Incident # (FK)">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1488244415844" ID="ID_581293940" MODIFIED="1488557097165" TEXT="Event # (FK)">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1488557303831" ID="ID_1084986311" MODIFIED="1488557306369" TEXT="(Details)"/>
</node>
<node CREATED="1488301545099" ID="ID_1265651573" MODIFIED="1488506262507" TEXT="Incident Resolver">
<icon BUILTIN="button_ok"/>
<node CREATED="1488301559741" ID="ID_1815108615" MODIFIED="1488557104461" TEXT="Incident # (FK)">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1488301563909" ID="ID_1777645605" MODIFIED="1488557107964" TEXT="Login (FK)">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1488244281168" ID="ID_1321395186" MODIFIED="1488560196370" TEXT="Subscription">
<icon BUILTIN="button_ok"/>
<node CREATED="1488301776637" ID="ID_973570665" MODIFIED="1488557111338" TEXT="Subscription #">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1488244766869" ID="ID_1544289613" MODIFIED="1488560047616" TEXT="Incident Type  (FK)"/>
<node CREATED="1488301622208" ID="ID_1252267460" MODIFIED="1488557140715" TEXT="Login (FK)"/>
<node CREATED="1488244771477" ID="ID_1453241370" MODIFIED="1488557132986" TEXT="(?)  Group"/>
</node>
</node>
<node CREATED="1488301727113" ID="ID_505080449" MODIFIED="1488301730366" TEXT="Messaging">
<node CREATED="1488559459906" ID="ID_1817913412" MODIFIED="1488559989532" TEXT="Message">
<icon BUILTIN="button_ok"/>
<node CREATED="1488559465618" ID="ID_1258353453" MODIFIED="1488559709918" TEXT="Message #">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1488559476377" ID="ID_200835157" MODIFIED="1488559499197" TEXT="Message Sent For All (Y/N)"/>
</node>
<node CREATED="1488559501200" ID="ID_969102339" MODIFIED="1488559989532" TEXT="Message Detail">
<icon BUILTIN="button_ok"/>
<node CREATED="1488559511183" ID="ID_1629964177" MODIFIED="1488559514411" TEXT="Message #"/>
<node CREATED="1488559515175" ID="ID_1048160115" MODIFIED="1488559516604" TEXT="Login"/>
<node CREATED="1488559622737" ID="ID_690002977" MODIFIED="1488559636667" TEXT="Message Sent Flag"/>
<node CREATED="1488559611394" ID="ID_476560970" MODIFIED="1488559636670" TEXT="Message Sent Date"/>
<node CREATED="1488559519725" ID="ID_687148298" MODIFIED="1488559534075" TEXT="Incident # (FK)"/>
<node CREATED="1488559524214" ID="ID_395339981" MODIFIED="1488559539674" TEXT="User to User # (FK)"/>
</node>
<node CREATED="1488501912666" ID="ID_992845278" MODIFIED="1488559989532" TEXT="User to User">
<icon BUILTIN="button_ok"/>
<node CREATED="1488559557909" ID="ID_368613064" MODIFIED="1488559562782" TEXT="User to User #">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1488506094086" ID="ID_1495556314" MODIFIED="1488559582512" TEXT="Login (FK)"/>
<node CREATED="1488506100847" ID="ID_513486944" MODIFIED="1488506103724" TEXT="Message"/>
<node CREATED="1488506111426" ID="ID_1090146031" MODIFIED="1488506116798" TEXT="Created Date"/>
<node CREATED="1488506117490" ID="ID_1576421826" MODIFIED="1488506124495" TEXT="Active Until Date"/>
<node CREATED="1488506089756" ID="ID_1001836622" MODIFIED="1488506145120" TEXT="From Login"/>
</node>
</node>
<node CREATED="1488505535499" FOLDED="true" ID="ID_1103396021" MODIFIED="1488560213673" TEXT="Not Used (Yet)">
<node CREATED="1488243683062" ID="ID_980243137" MODIFIED="1488505553570" TEXT="STD_System">
<node CREATED="1488244047813" ID="ID_463939742" MODIFIED="1488504521221" TEXT="System"/>
<node CREATED="1488244063516" ID="ID_72981399" MODIFIED="1488244068169" TEXT="Description"/>
</node>
<node CREATED="1488243845981" FOLDED="true" ID="ID_269833138" MODIFIED="1488560192709" TEXT="STD_Group">
<node CREATED="1488244030766" ID="ID_437152161" MODIFIED="1488505041351" TEXT="Group">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1488301892937" ID="ID_487647564" MODIFIED="1488303708383" TEXT="Security Role">
<node CREATED="1488301921170" ID="ID_132362405" MODIFIED="1488303715015" TEXT="Role #"/>
</node>
<node CREATED="1488301941405" ID="ID_1598827494" MODIFIED="1488303723773" TEXT="Security Role Detail">
<node CREATED="1488301949508" ID="ID_852780754" MODIFIED="1488303729351" TEXT="Role #"/>
<node CREATED="1488301952925" ID="ID_830681001" MODIFIED="1488301958266" TEXT="System"/>
<node CREATED="1488301959261" ID="ID_1961764183" MODIFIED="1488301962299" TEXT="Group"/>
</node>
<node CREATED="1488243491437" ID="ID_760756336" MODIFIED="1488506284813" TEXT="Group">
<node CREATED="1488243639389" ID="ID_357145016" MODIFIED="1488243643305" TEXT="Group Name"/>
<node CREATED="1488243657972" ID="ID_1451295338" MODIFIED="1488301444156" TEXT="Login  /  Incident (?)"/>
</node>
</node>
</node>
</node>
</map>

import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.library_books),
            )
          ],
        ),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Card(
              elevation: 0,
              child: Column(
                children: [
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DetailsScreen()));
                    },
                    title: const Text(
                      'ያገለገሉ ልዩ ልዩ ንብረቶች በግልጽ ጨረታ ለመሸጥ የተዘጋጀ የጨረታ ሰነድ ቁጥር PPS/NVP-5FBI/01/02/2016',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    // trailing: ElevatedButton(
                    //     onPressed: () {},
                    //     style: ElevatedButton.styleFrom(
                    //         foregroundColor: Colors.white,
                    //         side: const BorderSide(color: Colors.cyan),
                    //         shape: const CircleBorder()),
                    //     child: const Icon(
                    //       Icons.favorite_border_outlined,
                    //       color: Colors.cyan,
                    //     )),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Posted 10 hours ago',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          'Federal Prisoners Commission',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          'Security',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              indent: 15,
              endIndent: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 18.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Description',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18.0),
              child: Text(
                '''የጨረታ ማስታወቂያ

ያገለገሉ ተሽከርካሪዎች የጨረታ ማስታወቂያ ቁጥር PPS/VP-13FBI/02/02/2016

የመንግሥት ግዥ አገልግሎት ንብረትነታቸው የፍትህ ሚ/ር፣ የቅዱስ ጴጥሮስ ሆስፒታል፣ የአደጋ ስጋት አመራር ኮሚሽን፣ የህዝብ ዕንባ ጠባቂ ተቋም፣ የእንስሳት ልማት ኢንስቲትዩት፣ የህዝብ ተወካዮች ምክር ቤት ፣የፌደራል ጠቅላይ ፍ/ቤት፣ የኢትዮጵያ ብዝሀ ህይወት ኢንስቲትዩት፣ የቤተመንግስት አስተዳዳር፣ የኢትዮጵያ ስታቲስቲክስ አገልግሎት፣ የውሃና ኢነርጂ ሚ/ር እና የውጭ ጉዳይ ሚ/ር፣ ተሽከርካሪዎችን ባሉበት ቦታና ሁኔታ በጨረታ አወዳድሮ ለመሸጥ ይፈልጋል፡፡

ስለሆነም ተጫራቾች ከዚህ በታች የተመለከቱትን ነጥቦች በማሟላት ቀርበው መወዳደር ይችላሉ፡፡

1. በጨረታው የሚወዳደሩት ተጫራቾች ኢትዮጵያዊ ዜግነት ያላቸው ሆኖ ሠነድ ለመግዛት ሲመጡ ይህንኑ የሚያረጋግጥ ሰነድ ወይም መታወቂያ ይዘው መቅረብ ይኖርባቸዋል፡፡\n
2. 6 ኪሎ በሚገኘው የመንግሥት ግዥ አገልግሎት ህንፃ ቁጥር 5 ቢሮ ቁጥር 007 በመምጣት የንብረቶቹን መረጃ፣ የተጫራቾች መመሪያ እና የዋጋ ማቅረቢያ ቅጽ የያዘ ሰነድ የማይመለስ ብር 500.00 /አምስት መቶ ብር/ የመንግስት ግዥ አገልግሎት የንግድ ባንክ ሂሳብ ቁጥር 1000003785018 ከፍለው መውሰድ ይችላሉ፣\n
3. ተጫራቾች ሰነድ ገዝተው ማስታወቂያው ከወጣበት ቀን ጀምሮ ዘወትር በሥራ ቀናት ከጠዋቱ 3፡00 እስከ 10፡00 ሰዓት ባለው ጊዜ ውስጥ ተሽከርካሪዎቹን ከላይ በተጠቀሰው መ/ቤቶች በመሄድ መመልከት ይችላሉ፣\n
4. ተሽከርካሪው ቀደም ሲል ያልተከፈለ የቦሎ እና የጉምሩክ ቀረጥ ግብር ወጪ ካለው ባለንብረቱ መሥሪያ ቤት የሚሸፍን ሲሆን የስም ማዛወሪያ፣ የትራንዚት እና ሌሎች ወጪዎች ግን በገዥው ይሸፈናል፣\n
5. ተጫራቾች የሚገዙትን ተሸከርካሪ ለእያንዳንዱ የጨረታ መነሻ ዋጋ 20 በመቶ (20%) የጨረታ ማስከበሪያ በባንክ በተረጋገጠ ሲፒኦ ከጨረታ ሰነዱ ጋር በማያያዝ ሣጥኑ ውስጥ ጨረታው ከመከፈቱ በፊት ማስገባት ይኖርባቸዋል፡፡ የጨረታ የመገምገሚያ መስፈርት ዋጋና የተሟላ የጨረታ ማስከበሪያ ዋስትና (ሲፒኦ) እንዲሁም በሰነዱ የተገለጹትን አሟልቶ መገኘት ይኖርበታል፡፡ የተሽከርካሪውን የመነሻ ዋጋ 20 በመቶ(20%) ያላስያዘ እና በሠነዱ የተቀመጡ ሌሎች ነጥቦችን ያላሟላ ተጫራች ከጨረታው ውድቅ ይደረጋል፡፡ የሚዘጋጀው የጨረታ ማስከበሪያ ሲፒኦ ከአዲስ አበባ ከተማ ውጭ ከሆነ ከኢትዮጵያ ንግድ ባንክ ቅርንጫፎች ብቻ መሆን ይኖርበታል፣\n
6. የጨረታ ሳጥኑ ጨረታው በጋዜጣ ከወጣበት ቀን ጀምሮ በ20ኛው ቀን ከጠዋቱ በ4:00 ሰዓት ተዘግቶ በዚያኑ ቀን በ4፡15 ሰዓት ተጫራቾች ወይም ሕጋዊ ወኪሎቻቸው በተገኙበት በመንግሥት ግዥ አገልግሎት መሰብሰቢያ አዳራሽ ይከፈታል፡፡ ሆኖም የመክፈቻ ቀኑ ቅዳሜና እሁድ ወይም የበዓላት ቀን ከዋለ በሚቀጥለው የሥራ ቀን ይሆናል፡፡ እንዲሁም ተጫራቹ በራሱ ምርጫ ጨረታው በሚከፈትበት ጊዜ ሳይገኝ ቢቀር የጨረታውን መከፈት አያስተጓጉልም፣\n
7. በጨረታው አሸናፊ የሆኑ ተጫራቾች አሸናፊነታቸው በተገለፀላቸው ከ 7 የስራ ቀናት በኋላ ባሉት 5 ተከታታይ የስራ ቀናት ውስጥ ያሸነፉበትን ዋጋ በሙሉ መክፈል ይኖርባቸዋል፡፡ ሆኖም ሙሉ ከፍያውን በተጠቀሰው ጊዜ ገደብ መክፈል ካልቻሉ ያስያዙት የጨረታ ማስከበሪያ ለመንግስት ገቢ ይደረጋል::\n
8. በጨረታው አሸናፊ የሆኑ ተጫራቾች ያሸነፉባቸውን ተሽከርካሪዎች ሙሉ ክፍያ ከፍለው እስከሚወስዱ ድረስ ለውል አተገባበር ዋስትና የሚሆን የጠቅላላ ዋጋውን 10 በመቶ በጥሬ ገንዘብ ወይም በባንክ በተረጋገጠ ሲፒኦ ማስያዝ አለባቸው፡፡\n
9. አገልግሎቱ ያወጣውን ጨረታ ሰነድ በስሙ ሳይገዛ የተወዳደረ ማንኛውም ተጫራች ከውድድር ውድቅ ይደረጋል፡፡\n
10. አሸናፊ ተጫራቾች ያሸነፉበትን ገንዘብ አጠቃለው በመክፈል ተሸከርካሪውን በ10 ቀናት ውስጥ የማንሳት ግዴታ አለባቸው፣\n
11. አገልግሎቱ የተሻለ አማራጭ ካገኘ በማናቸውም ጊዜ በከፊልም ሆነ በሙሉ ጨረታውን ለመሰረዝ መብቱ የተጠበቀ ነው፣\n
12. ተጨማሪ ማብራሪያ ካስፈለገ በስልክ ቁጥር 011-122-37-08 ወይም 011-122 37-36 ደውሎ መጠየቅ ይቻላል፣''',
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Divider(
              indent: 15,
              endIndent: 15,
            ),
            ListTile(
                title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Bid Opening Date',
                ),
                Text(
                  'Dec 3,2023 9:30 AM',
                  style: TextStyle(color: Colors.black.withOpacity(0.2)),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Location',
                ),
                Text(
                  'Addis Ababa',
                  style: TextStyle(color: Colors.black.withOpacity(0.2)),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Bid Closing Date',
                ),
                Text(
                  'Dec 20,2023 8:30 AM',
                  style: TextStyle(color: Colors.black.withOpacity(0.2)),
                )
              ],
            ))
          ]),
        ));
  }
}

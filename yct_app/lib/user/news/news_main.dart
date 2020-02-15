import 'package:flutter/material.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {

//void NewsDetails () async {
//
//}

  final List<Map> newsLists = [
    {
      "newsTitle": "ပထမဆုံး မြန်မာ့မီးရထားလမ်း",
      "image" : 'assets/temp/tempnews.jpg',
      "description":
      "၁.၅.၁၈၇၇ ရက်နေ့တွင် Irrawaddy State Railway အနေဖြင့် ရန်ကုန်-ပြည် (၁၆၁)မိုင်အား A01 ရေနွေးငွေ့စက်ခေါင်းဖြင့် စတင်ပြေးဆွဲပြီး မြန်မာနိုင်ငံ၏ ပထမ ဦးဆုံးသော ရထား လမ်း ကို စတင် ဖွင့်လှစ်ခဲ့ပါသည်။"
    },
    {
      "newsTitle": "မြန်မာ့မီးရထားသမိုင်း",
      "image" : "assets/temp/tempnews1.jpg",
      "description":
     "မြန်မာ့မီးရထား သည် ဗြိတိန်နိုင်ငံထက်(၅၂)နှစ်၊ အိန္ဒိယနိုင်ငံထက်(၂၄)နှစ် နောက်ကျပြီး ရထားလုပ်ငန်းကို စတင်ဆောင်ရွက်ခဲ့ရာ ၂၀၁၇ ခုနှစ်တွင်(၁၄၀)နှစ် ရှိခဲ့ပြီးဖြစ်ပါသည်။ အရှေ့တောင်အာရှနိုင်ငံ ရထား လုပ်ငန်းများတွင် သက်တမ်းရင့်သည့် ရထားလုပ်ငန်းတစ်ခု အဖြစ် တည်ရှိပါသည်။"
    },
    {
      "newsTitle": "မြို့ပတ်ရထား အချိန်စာရင်းပြောင်းလဲ",
      "image" : "assets/temp/tempnews2.jpg",
      "description":
      "(၈.၂.၂၀၂၀) မှစတင်၍ မြို့ပတ်ရထား အချိန်စာရင်းများကို ယာယီပြောင်းလဲမည် ဖြစ်ကြောင်း အသိပေးကြေငြာအပ်ပါသည်။"
    },
    {
      "newsTitle": "Update the Yangon Mandalay railway Line",
      "image" : "assets/temp/tempnews.jpg",
      "description":
      "၁၈၉၆ ခုနှစ်တွင် Irrawaddy State Railway သည် Burma Railway Co., Ltd. သို့ ရထား သွားလာမှုနှင့် စီးပွားရေးဆိုင်ရာကိစ္စရပ်များ ဆောင်ရွက်နိုင်ရန် ငှားရမ်းခဲ့ပါသည်။ ငှားရမ်းခ ကာလ ကုန်ဆုံးသည့် ၃၁.၁၂.၁၉၂၈ ရက်နေ့မှစ၍ Indian Railway Board လက်အောက်သို့ လွှဲပြောင်း ပေးခဲ့ပါသည်"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 120),
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                child: ListView.builder(
                    itemCount: newsLists.length,
                    itemBuilder: (BuildContext context, int index) {
                      return buildList(context, index);
                    }),
              ),
              Container(
                height: 140,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 90),
                        child: Text(
                          'News',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
//                      IconButton(
//                        onPressed: () {},
//                        icon: Icon(
//                          Icons.edit,
//                          color: Colors.white,
//                        ),
//                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildList(BuildContext context, int index) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        //border: Border.all(color: Colors.white70) ,
        color: Colors.white,
      ),
      width: double.infinity,
      height: 110,
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      //padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
      child: GestureDetector(
        onTap: () {
         // Navigator.pushNamed(context, '/news_details');
          Navigator.pushReplacementNamed(context, '/news_details', arguments: {

            "newsTitle": newsLists[index]['newsTitle'],
            "image" : newsLists[index]['image'],
            "description" : newsLists[index]['description']

          });
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 130,
              height: 110,
              //margin: EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    bottomLeft: Radius.circular(5)),
                color: Colors.white,
                //border: Border.all(width: 3,color:Colors.black38),
              ),
              child: Center(
                child: Image.asset(newsLists[index]['image']),
              ),
            ),
            Expanded(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          newsLists[index]['newsTitle'],
                          overflow: TextOverflow.ellipsis,
                          maxLines: 5,
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w600),
                        ),
//                        Text(
//                          newsLists[index]['routes'],
//                          style: TextStyle(
//                              fontSize: 16, fontWeight: FontWeight.w500),
//                        ),
                      ],
                    ),
//                    Icon(
//                      Icons.navigate_next,
//                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

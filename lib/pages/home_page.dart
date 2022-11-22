import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  final _pageController=PageController();
  int _index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text("Quick Help",style: TextStyle(fontSize: 20,color: Colors.black),),
        elevation: 0,
        backgroundColor: Colors.grey.shade200,
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(CupertinoIcons.search,color: Colors.black,size: 27,),
          )
        ],
      ),
      body:  PageView(
        controller: _pageController,
        onPageChanged: (value) {
          setState(() {
            _index=value!;
          });
        },
        children: [
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: Column(
                        children: [
                          Container(
                            child:  Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.white,
                                  image: DecorationImage(
                                    image: AssetImage("assets/icons/wind.png"),
                                    fit: BoxFit.cover,
                                  )
                              ),
                            ),
                          ),
                          SizedBox(height: 7,),
                          Text("Breathe",style: TextStyle(fontSize: 15),)
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (){},
                      child: Column(
                        children: [
                          Container(
                            child:  Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.white,
                                  image: DecorationImage(
                                    image: AssetImage("assets/icons/moon.png"),
                                    fit: BoxFit.cover,
                                  )
                              ),
                            ),
                          ),
                          SizedBox(height: 7,),
                          Text("Sleep",style: TextStyle(fontSize: 15),)
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (){},
                      child: Column(
                        children: [
                          Container(
                            child:  Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.white,
                                  image: DecorationImage(
                                    image: AssetImage("assets/icons/upset.png"),
                                    fit: BoxFit.cover,
                                  )
                              ),
                            ),
                          ),
                          SizedBox(height: 7,),
                          Text('Anxiety',style: TextStyle(fontSize: 15,),)
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (){},
                      child: Column(
                        children: [
                          Container(
                            child:  Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.white,
                                  image: DecorationImage(
                                    image: AssetImage("assets/icons/smile.png"),
                                    fit: BoxFit.contain,
                                  )
                              ),
                            ),

                          ),
                          SizedBox(height: 7,),
                          Text('Stress',style: TextStyle(fontSize: 15),)
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10,),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(top: 15),
                                  padding: EdgeInsets.only(left: 27),
                                  child: Text('Daily meditations',style: TextStyle(fontSize: 20,),)
                              ),
                            ]
                        ), // Daily mediation
                        Container(
                            margin: EdgeInsets.all(20),
                            child: Container(
                              margin: EdgeInsets.only(top: 10,right: 10,left: 10,),
                              width: double.infinity,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  height: 200,
                                  child: Stack(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage('assets/images/img_1.png'),
                                              fit: BoxFit.cover
                                            ),
                                        ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                begin: Alignment.bottomLeft,
                                                end: Alignment.centerRight,
                                                colors: [
                                                  Colors.white.withOpacity(.4),
                                                  Colors.white.withOpacity(.2),
                                                ]
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 200,
                                        width: double.infinity,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                                margin: EdgeInsets.only(left: 7),
                                                padding: EdgeInsets.all(7),
                                                child: Text("Lyric & Rep",style: TextStyle(color: Colors.black,fontSize: 20),)
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(7),
                                              child: Row(
                                                children: [
                                                  SizedBox(width: 10,),
                                                  Icon(Icons.access_time,color: Colors.black,),
                                                  SizedBox(width: 5,),
                                                  Text('3 mins',style: TextStyle(color: Colors.black),)
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                        ),//LYRIC & REP
                        SizedBox(height: 10,),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(top: 15),
                                  padding: EdgeInsets.only(left: 27),
                                  child: Text('New Music',style: TextStyle(fontSize: 20,),)
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 15),
                                  padding: EdgeInsets.only(right: 27),
                                  child: Text('View all',style: TextStyle(color: Colors.grey),)
                              ),
                            ]
                        ),
                        Container(
                            height: 170,
                            width: double.infinity,
                            margin: EdgeInsets.only(top: 15),
                            padding: EdgeInsets.only(left: 27),
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                _item('img_10.png', "Doxxim Ikki yil o'tib", '4:04',pleace: 'https://www.youtube.com/watch?v=aGuQ8Y_bVnI'),
                                _item("img.png", 'Doxxim Maftuningman', '3:04',pleace: 'https://www.youtube.com/watch?v=AmBCH70S5iE'),
                                _item("img_2.png", 'Doxxim Ortinga qayt', '3:6',pleace: 'https://www.youtube.com/watch?v=XgHE0g5KKAE'),
                                _item("img_6.png", 'Doxxim Kelganida kuz', '3:24',pleace: 'https://www.youtube.com/watch?v=l87jctu0b4U'),
                                _item("img_7.png", 'Doxxim Sevaman hamon', '3:19',pleace: 'https://www.youtube.com/watch?v=7UObQf6wD3c'),
                                _item("img_8.png", 'Doxxim U ketdi', '4:10',pleace: 'https://www.youtube.com/watch?v=m-_vGc8TFUI'),
                              ], // HORIZONTAL MUZIKALA
                            )
                        ), //HORIZONTAL MUSIC
                        SizedBox(height: 10,),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              final Uri url=Uri.parse('https://www.youtube.com/@doxximofficial2786');
                              launchUrl(url);
                            });
                          },
                          child: Container(
                              margin: EdgeInsets.all(20),
                              child: Container(
                                margin: EdgeInsets.only(top: 10,right: 10,left: 10,),
                                width: double.infinity,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    height: 350,
                                    child: Stack(
                                      children: [
                                        Image(
                                            image: AssetImage("assets/images/img_9.png"),
                                            height: 350,
                                            width: double.infinity,
                                            fit: BoxFit.cover
                                        ),
                                        Container(
                                          height: 350,
                                          width: double.infinity,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                  margin: EdgeInsets.only(left: 7),
                                                  padding: EdgeInsets.all(7),
                                                  child: Text("Doxxim Official",style: TextStyle(color: Colors.black,fontSize: 20),)
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(bottom: 27),
                                                padding: EdgeInsets.all(7),
                                                child: Container(
                                                    margin: EdgeInsets.only(left: 10),
                                                    child: Text("Youtube kanaliga a'zo bo'lish",style: TextStyle(fontSize: 18),)
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                          ),
                        ), //A'ZO BO'LISH
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ), //ASOSIY Page
          Container(
            child: Center(
                child: Text('Page 2',style: TextStyle(fontSize: 50))
            ),
          ),
          Container(
            child: Center(
                child: Text('Page 3',style: TextStyle(fontSize: 50),)
            ),
          ),
          Container(
            child: Center(
                child: Text('Page 4',style: TextStyle(fontSize: 50),))
          ),
          Container(
            child: Center(
                child: Text('Page 5',style: TextStyle(fontSize: 50),)),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: _index,
        onTap: (value) {
          setState(() {
            _index=value!;
            _pageController!.animateToPage(_index, duration: Duration(milliseconds: 200), curve: Curves.easeIn);
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            label: 'Today'
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.videocam_fill),
              label: 'Yoga'
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.moon),
              label: 'Meditation',
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.bell_circle),
              label: 'Meal',
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person),
              label: 'Profile',
          ),
        ],
      ),
      
    );
  }



  Widget _item(String img,  String aftor, String minut, {String pleace=''}) {
    return GestureDetector(
      onTap: () {
        final Uri url = Uri.parse("$pleace");
        launchUrl(url);
      },
      child: Container(
          width: 130,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 7,),
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                        height: 140,
                        width: 120,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              color: Colors.white,
                              child: Image(
                                image: AssetImage('assets/images/$img'),
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 5,),
                            Column(
                              children: [
                                Text('$aftor',maxLines: 1,overflow: TextOverflow.ellipsis ,style: TextStyle(fontSize: 11),),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(Icons.access_time, size: 14,),
                                      SizedBox(width: 7,),
                                      Text("$minut mins",style: TextStyle(fontSize: 10),)
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                    ),
                  ),
                ],
              )
            ],
          )
      ),
    );
  }

}

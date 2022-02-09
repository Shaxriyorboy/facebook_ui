import 'package:facebook_ui/pages/people_page.dart';
import 'package:flutter/material.dart';

import 'facebook_ui.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({Key? key}) : super(key: key);
  static const String id = "discover_page";

  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  int _selectedIndex = 2;
  int witchType = 0;

  final List<StoryItem> _list2 = [
    StoryItem(name: "Apple", image: "assets/images/Oval_7.png"),
    StoryItem(name: "Samsung", image: "assets/images/Oval_8.png"),
    StoryItem(name: "Airbnb", image: "assets/images/Oval_9.png"),
  ];
  
  final List<BrendItem> _list = [
    BrendItem(name: "Micrasoft", title: "Science, Technology & Engineering", subtitle: "Our mission is to empower every person", image: "assets/images/Oval_10.png"),
    BrendItem(name: "Instagram", title: "Business", subtitle: "Bringing you closer to the people and thi...", image: "assets/images/Oval_11.png"),
    BrendItem(name: "Disney", title: "Brand", subtitle: "Disney magic right at your fingertips", image: "assets/images/Oval_12.png"),
    BrendItem(name: "Facebook", title: "Website", subtitle: "Welcome to Facebook chat bot.", image: "assets/images/Oval_13.png"),
    BrendItem(name: "McDonal's", title: "Business", subtitle: "Our mission is to empower every person", image: "assets/images/Oval_14.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 64,
        title: Text(
          "People",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w700, fontSize: 30),
        ),
        leading: Container(
          margin: EdgeInsets.only(left: 10),
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage("assets/images/Oval.png"),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 48,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              child: const TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(bottom: 0.8, left: 4),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      borderSide: BorderSide(
                        color: Colors.white,
                      )),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  hintText: "Search",
                  hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Container(
              height: 35,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 10, right: 10, top: 15),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          witchType = 0;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: witchType == 0
                              ? Colors.grey.shade300
                              : Colors.white,
                        ),
                        alignment: Alignment.center,
                        child: Text("FOR YOU"),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          witchType = 1;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: witchType == 1
                              ? Colors.grey.shade300
                              : Colors.white,
                        ),
                        alignment: Alignment.center,
                        child: Text("BUSINESS"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 35,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 15, right: 10, top: 15),
              child: Text(
                "Recent",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              height: 102,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _list2.length,
                itemBuilder: (context, index) {
                  return storyItem(index);
                },
              ),
            ),
            Container(
              height: 35,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 15, right: 10, top: 10),
              child: Text(
                "More",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: _list.length,
              itemBuilder: (context, index) {
                return itemBrand(index);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(top: BorderSide(width: 0.5, color: Colors.grey)),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.grey.withOpacity(0.8),
              Colors.grey.withOpacity(0.1),
              Colors.grey.withOpacity(0.07),
              Colors.grey.withOpacity(0.05),
            ],
          ),
        ),
        width: MediaQuery.of(context).size.width,
        height: 62,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = 0;
                  Navigator.of(context).pushReplacementNamed(FacebookUi.id);
                });
              },
              child: Container(
                margin: EdgeInsets.only(right: 40),
                child: Image(
                  image: AssetImage(_selectedIndex == 0
                      ? "assets/images/Shape.png"
                      : "assets/images/Shape_1.png"),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = 1;
                  Navigator.of(context).pushReplacementNamed(PeoplePage.id);
                });
              },
              child: Container(
                margin: EdgeInsets.only(right: 40),
                child: Icon(
                  Icons.people,
                  size: 35,
                  color: _selectedIndex == 1 ? Colors.black : Colors.grey,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = 2;
                  Navigator.of(context).pushReplacementNamed(DiscoverPage.id);
                });
              },
              child: Container(
                child: Image(
                  image: AssetImage(_selectedIndex == 2
                      ? "assets/images/Icon_2.png"
                      : "assets/images/Icon_1.png"),
                  height: 27,
                  width: 27,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container itemBrand( int index) {
    return Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                height: 76,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 60,
                        width: 60,
                        margin: EdgeInsets.symmetric(vertical: 8),
                        child: Image(
                          height: 60,
                          width: 60,
                          image: AssetImage(_list[index].image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        margin: EdgeInsets.only(top: 7, bottom: 1, left: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                _list[index].name,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 17),
                              ),
                              alignment: Alignment.centerLeft,
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 3,bottom: 2),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                _list[index].title,
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 14,color: Colors.grey.shade500),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                _list[index].subtitle,
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Colors.grey.shade500),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
  }

  Widget storyItem(int index) {
    return Container(
      // margin: EdgeInsets.symmetric(vertical: 14, horizontal: 7.5),
      width: 75,
      height: 83,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                image: AssetImage(_list2[index].image),
                fit: BoxFit.cover,
              ),
            ),
            height: 60,
            width: 60,
            alignment: Alignment.center,
          ),
          Container(
            margin: EdgeInsets.only(top: 7.5),
            child: Text(
              _list2[index].name,
              style: TextStyle(color: Colors.grey.shade400, fontSize: 13),
            ),
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}

class BrendItem{
  String name;
  String title;
  String subtitle;
  String image;
  BrendItem({required this.name,required this.title,required this.subtitle,required this.image});
}

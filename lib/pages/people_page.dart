import 'package:flutter/material.dart';

import 'discover_page.dart';
import 'facebook_ui.dart';

class PeoplePage extends StatefulWidget {
  const PeoplePage({Key? key}) : super(key: key);
  static const String id = "people_page";

  @override
  _PeoplePageState createState() => _PeoplePageState();
}

class _PeoplePageState extends State<PeoplePage> {
  int _selectedIndex = 1;
  List<ActivePerson> _list = [
    ActivePerson(name: "Martha Craig", image: "assets/images/Ovel_0.png", active: 0),
    ActivePerson(name: "Kieron Dotson", image: "assets/images/Oval_2.png", active: 8),
    ActivePerson(name: "Zack John", image: "assets/images/Oval_3.png", active: 10),
    ActivePerson(name: "Jamie Franco", image: "assets/images/Oval_4.png", active: 0),
    ActivePerson(name: "Albert Lasker", image: "assets/images/Oval_5.png", active: 35),
    ActivePerson(name: "Karen Castillo", image: "assets/images/Oval_6.png", active: 30),
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
        actions: [
          Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.shade300,
              ),
              child: Image(
                image: AssetImage("assets/images/Icon_3.png"),
              )),
          Container(
            margin: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.shade300,
            ),
            child: Image(
              image: AssetImage("assets/images/Icon_4.png"),
            ),
          ),
        ],
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
            ListTile(
              leading: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.shade300,
                ),
                child: Text(
                  "+",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                ),
                height: 40,
                width: 40,
                alignment: Alignment.center,
              ),
              title: Text(
                "Your story",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
              ),
              subtitle: Text(
                "Add to your story",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
              ),
            ),
            ListView.builder(
              itemCount: _list.length,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return _list[index].active < 30?_itemPerson(index):SizedBox.shrink();
              },
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 60,left: 20,bottom: 15),
              child: Text(
                "RECENLTY ACTIVE",
                style:
                TextStyle(fontWeight: FontWeight.w500, fontSize: 15,color: Colors.grey.shade400),
              ),
            ),
            ListView.builder(
              itemCount: _list.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return _list[index].active >=30?_itemPerson(index):SizedBox.shrink();
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

  Widget _itemPerson(int index) {
    return Container(
                margin: EdgeInsets.only(bottom: 10),
                child: ListTile(
                  leading: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                            image: AssetImage(_list[index].image),
                            fit: BoxFit.cover,
                          ),
                        ),
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.only(bottom: 7,top: 5),
                      ),
                      _list[index].active == 0?Container(
                        height: 40,
                        child: CircleAvatar(
                          radius: 7,
                          backgroundColor: Colors.green,
                          child: Container(
                            height: 14,
                            width: 14,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.green,
                              border: Border.all(color: Colors.white, width: 2.5),
                            ),
                          ),
                        ),
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(top: 5),
                        width: 40,
                      ):Container(
                        width: 40,
                        height: 45,
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 12,
                          decoration: BoxDecoration(
                            color: Colors.green.shade200,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text("${_list[index].active} min",style: TextStyle(fontSize: 8,fontWeight: FontWeight.w500),),
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(top: 5),
                          width: 30,
                        ),
                      ),
                    ],
                  ),
                  title: Container(
                    padding: EdgeInsets.only(bottom: 10),
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(width: 0.5,color: Colors.grey.shade300),)
                    ),
                    child: Row(
                      children: [
                        Text(
                          _list[index].name,
                          style:
                              TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: Container(
                              alignment: Alignment.center,
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey.shade300,
                              ),
                              child: Image(
                                image: AssetImage("assets/images/Icon_5.png"),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
  }
}

class ActivePerson{
  String name;
  String image;
  int active;
  ActivePerson({required this.name,required this.image,required this.active});
}

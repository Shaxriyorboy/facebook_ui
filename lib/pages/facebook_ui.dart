import 'package:facebook_ui/pages/discover_page.dart';
import 'package:facebook_ui/pages/people_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class FacebookUi extends StatefulWidget {
  const FacebookUi({Key? key}) : super(key: key);
  static const String id = "facebook_ui";

  @override
  _FacebookUiState createState() => _FacebookUiState();
}

class _FacebookUiState extends State<FacebookUi> {
  int _selectedIndex = 0;
  int iconCheckRight = 3;
  int iconCheckLeft = 1;

  final List<StoryItem> _list2 = [
    StoryItem(name: "Martin", image: "assets/images/Ovel_0.png"),
    StoryItem(name: "Martin", image: "assets/images/Ovel_0.png"),
    StoryItem(name: "Joshua", image: "assets/images/Oval_5.png"),
    StoryItem(name: "Andrew", image: "assets/images/Oval_2.png"),
    StoryItem(name: "Karen", image: "assets/images/Oval_3.png"),
    StoryItem(name: "Maisy", image: "assets/images/Oval_4.png"),
  ];

  final List<ChatItem> _list1 = [
    ChatItem(
        fullName: "Martin Randolph",
        message: "You: What's man!",
        time: " · 9:40 AM",
        image: "assets/images/Ovel_0.png"),
    ChatItem(
        fullName: "Andrew Parker",
        message: "You: Ok, thanks!",
        time: " · 9:25 AM",
        image: "assets/images/Oval_2.png"),
    ChatItem(
        fullName: "Karen Castillo",
        message: "You: Ok, See you in Tousday",
        time: " · Fri",
        image: "assets/images/Oval_3.png"),
    ChatItem(
        fullName: "Maisy Humphrey",
        message: "Have a good day, Maisy",
        time: " · Fri",
        image: "assets/images/Oval_4.png"),
    ChatItem(
        fullName: "Jousha Lawrence",
        message: "The business plan look",
        time: " · Fri",
        image: "assets/images/Oval_5.png"),
    ChatItem(
        fullName: "Martin Randolph",
        message: "You: Where are from? ",
        time: " · Thu",
        image: "assets/images/Oval_6.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 64,
        title: Text(
          "Chats",
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
            child: Icon(
              Icons.camera_alt,
              color: Colors.black,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.shade300,
            ),
            child: Image(
              image: AssetImage("assets/images/Icon.png"),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
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
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              height: 106,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _list2.length,
                itemBuilder: (context, index) {
                  return storyItem(index);
                },
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: _list1.length + 1,
              itemBuilder: (context, index) {
                return _itemOfChat(index);
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

  Widget storyItem(int index) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 14, horizontal: 7.5),
      width: 65,
      height: 77,
      child: Column(
        children: [
          index != 0
              ? Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                          image: AssetImage(_list2[index].image),
                          fit: BoxFit.cover,
                        ),
                      ),
                      height: 52,
                      width: 52,
                      margin: EdgeInsets.only(bottom: 7, left: 7.5),
                      alignment: Alignment.center,
                    ),
                    Container(
                      height: 52,
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.green,
                        child: Container(
                          height: 18,
                          width: 18,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: Colors.green,
                            border: Border.all(color: Colors.white, width: 2.5),
                          ),
                        ),
                      ),
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.symmetric(horizontal: 7.5),
                    ),
                  ],
                )
              : Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey.shade300,
                  ),
                  child: Text(
                    "+",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w300),
                  ),
                  height: 52,
                  width: 52,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(right: 7.5, left: 7.5, bottom: 7),
                ),
          index != 0
              ? Container(
                  child: Text(
                    _list2[index].name,
                    style: TextStyle(color: Colors.grey.shade400, fontSize: 13),
                  ),
                  alignment: Alignment.center,
                )
              : Container(
                  child: Text(
                    "Your story",
                    style: TextStyle(color: Colors.grey.shade400, fontSize: 13),
                  ),
                  alignment: Alignment.center,
                  // margin: EdgeInsets.symmetric(vertical: 9),
                ),
        ],
      ),
    );
  }

  Widget _itemOfChat(int index) {
    return index % 6 != 0 || index == 0
        ? Slidable(
            key: const ValueKey(0),
            startActionPane: ActionPane(
              motion: const ScrollMotion(),
              // dismissible: DismissiblePane(onDismissed: () {}),
              extentRatio: 10 / 24,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 16),
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 12),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: iconCheckLeft == 1
                              ? Colors.blue
                              : Colors.grey.shade300,
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.camera_alt,
                            color: iconCheckLeft == 1
                                ? Colors.white
                                : Colors.black,
                          ),
                          onPressed: () {
                            setState(() {
                              iconCheckLeft = 1;
                            });
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 12),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: iconCheckLeft == 2
                              ? Colors.blue
                              : Colors.grey.shade300,
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.phone,
                            color: iconCheckLeft == 2
                                ? Colors.white
                                : Colors.black,
                          ),
                          onPressed: () {
                            setState(() {
                              iconCheckLeft = 2;
                            });
                          },
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: iconCheckLeft == 3
                              ? Colors.blue
                              : Colors.grey.shade300,
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.videocam_rounded,
                            color: iconCheckLeft == 3
                                ? Colors.white
                                : Colors.black,
                          ),
                          onPressed: () {
                            setState(() {
                              iconCheckLeft = 3;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            endActionPane: ActionPane(
              extentRatio: 10 / 24,
              motion: ScrollMotion(),
              // dismissible: DismissiblePane(onDismissed: () {}),
              children: [
                Container(
                  margin: EdgeInsets.only(left: 5),
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 12),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: iconCheckRight == 1
                              ? Colors.red
                              : Colors.grey.shade300,
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.menu,
                            color: iconCheckRight == 1
                                ? Colors.white
                                : Colors.black,
                          ),
                          onPressed: () {
                            setState(() {
                              iconCheckRight = 1;
                            });
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 12),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: iconCheckRight == 2
                              ? Colors.red
                              : Colors.grey.shade300,
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.notifications,
                            color: iconCheckRight == 2
                                ? Colors.white
                                : Colors.black,
                          ),
                          onPressed: () {
                            setState(() {
                              iconCheckRight = 2;
                            });
                          },
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.only(right: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: iconCheckRight == 3
                              ? Colors.red
                              : Colors.grey.shade300,
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.delete,
                            color: iconCheckRight == 3
                                ? Colors.white
                                : Colors.black,
                          ),
                          onPressed: () {
                            setState(() {
                              iconCheckRight = 3;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            child: Container(
              height: 76,
              width: MediaQuery.of(context).size.width,
              child: ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage(_list1[index].image),
                      fit: BoxFit.cover,
                    ),
                  ),
                  height: 60,
                  width: 60,
                ),
                title: Text(
                  _list1[index].fullName,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                ),
                subtitle: Row(
                  children: [
                    Text(
                      _list1[index].message,
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                    ),
                    Text(
                      _list1[index].time,
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                    ),
                  ],
                ),
                trailing: index == 0
                    ? Icon(Icons.circle_outlined)
                    : _list1[index].message.split(" ").elementAt(0) == "You:"
                        ? Icon(Icons.check_circle_outline)
                        : SizedBox.shrink(),
              ),
            ),
          )
        : Container(
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
                      image: AssetImage("assets/images/Oval_1.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    margin: EdgeInsets.only(top: 7, bottom: 1, left: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Pixselz",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 17),
                            ),
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(3),
                              ),
                              height: 15,
                              width: 22,
                              child: Text(
                                "Ad",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 11,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 6),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Make design process easier",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14,color: Colors.grey.shade700),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "View More",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 1),
                    height: 60,
                    width: 60,
                    child: Image(
                      image: AssetImage("assets/images/Rectangle.png"),
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}

void doNothing(BuildContext context) {}

class ChatItem {
  String fullName;
  String message;
  String time;
  String image;

  ChatItem(
      {required this.fullName,
      required this.message,
      required this.time,
      required this.image});
}

class StoryItem {
  String name;
  String image;

  StoryItem({required this.name, required this.image});
}

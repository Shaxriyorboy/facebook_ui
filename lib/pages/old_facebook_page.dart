import 'package:flutter/material.dart';

class OldFacebookPage extends StatefulWidget {
  const OldFacebookPage({Key? key}) : super(key: key);
  static const String id = "old_facebook_page";

  @override
  _OldFacebookPageState createState() => _OldFacebookPageState();
}

class _OldFacebookPageState extends State<OldFacebookPage>
    with TickerProviderStateMixin {
  bool mode = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mode?Colors.grey.shade300:Colors.grey,
      appBar: AppBar(
        backgroundColor: mode ? Colors.white : Colors.black,
        elevation: 0,
        title: Text(
          "facebook",
          style: TextStyle(
              color: Colors.blue, fontWeight: FontWeight.w700, fontSize: 25),
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.grey,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.camera_alt,
            color: Colors.grey,
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: mode ? Colors.white : Colors.black,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin:
                          const EdgeInsets.only(left: 5, top: 4, bottom: 10),
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
                  Expanded(
                    flex: 6,
                    child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: mode ? Colors.white : Colors.black,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      margin: const EdgeInsets.only(
                          right: 10, left: 4, top: 4, bottom: 10),
                      child: const TextField(
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.only(bottom: 0.8, left: 10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(24),
                            ),
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(24),
                              ),
                              borderSide: BorderSide(
                                color: Colors.grey,
                              )),
                          hintText: "What's on your mind?",
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              color: mode ? Colors.white : Colors.black,
              height: 50,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.video_call,
                          color: Colors.red,
                        ),
                        SizedBox(width: 5,),
                        Text("Live",style: TextStyle(color: mode?null:Colors.grey.shade300),),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border(
                              left: BorderSide(width: 1, color: Colors.grey),
                              right: BorderSide(width: 1, color: Colors.grey))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.photo,
                            color: Colors.green,
                          ),
                          SizedBox(width: 5,),
                          Text("Photo",style: TextStyle(color: mode?null:Colors.grey.shade300),),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_pin,
                          color: Colors.red,
                        ),
                        SizedBox(width: 5,),
                        Text("Check in",style: TextStyle(color: mode?null:Colors.grey.shade300),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 170,
              color: mode ? Colors.white : Colors.black,
              child: ListView.builder(
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Card(
                    margin: index != 5
                        ? EdgeInsets.only(left: 10, top: 10, bottom: 10)
                        : EdgeInsets.only(
                            left: 10, top: 10, bottom: 10, right: 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage("assets/images/Ovel_0.png"),
                            fit: BoxFit.cover,
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border:
                                    Border.all(width: 2, color: Colors.blue),
                                color: Colors.blue,
                              ),
                              margin: EdgeInsets.only(left: 7, top: 7),
                              height: 40,
                              width: 40,
                              child: Image(
                                image: AssetImage("assets/images/Oval.png"),
                              ),
                            ),
                          ),
                          Container(
                            height: 95,
                            alignment: Alignment.bottomLeft,
                            margin: EdgeInsets.only(bottom: 7, left: 7),
                            child: Text(
                              "User Five",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              color: mode ? Colors.white : Colors.black,
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage("assets/images/Oval.png"),
                            ),
                          ),
                        ),
                        title: Text(
                          "User Two",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 17,color: mode?null:Colors.grey.shade300),
                        ),
                        subtitle: Text(
                          "1 hr ago",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 14,color: mode?null:Colors.grey.shade300),
                        ),
                        trailing: Icon(Icons.more_horiz_outlined,color: mode?null:Colors.grey.shade300),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "All the Lorem ipson generetions on the internet tend to repeate predefined",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Colors.grey),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        width: MediaQuery.of(context).size.width,
                        height: 270,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/Ovel_0.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Stack(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 15, left: 10, bottom: 15),
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.blue,
                                    ),
                                    child: Icon(
                                      Icons.thumb_up_rounded,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 15, left: 30, bottom: 15),
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.red,
                                    ),
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Text(
                                  "2.5K",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,color: mode?null:Colors.grey.shade300),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                margin: EdgeInsets.only(right: 10),
                                child: Text("400 Comments",style: TextStyle(color: mode?null:Colors.grey.shade300),),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

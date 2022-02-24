import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinkbook/colors.dart';
import 'package:pinkbook/responsive.dart';

import 'store.dart';

class Utility extends StatefulWidget {
  const Utility({Key? key}) : super(key: key);

  @override
  _UtilityState createState() => _UtilityState();
}

class _UtilityState extends State<Utility> {
  @override
  Widget build(BuildContext context) {
    return Res.isSmall(context) ? SSS() : LSS();
  }
}

class SSS extends StatefulWidget {
  const SSS({Key? key}) : super(key: key);

  @override
  _SSSState createState() => _SSSState();
}

class _SSSState extends State<SSS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: grey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        title: Text(
          "Pinkbook",
          style: TextStyle(color: pink),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: grey,
            child: Icon(
              Icons.search_sharp,
              color: white,
            ),
          ),
          SizedBox(
            width: 10,
            child: Text(''),
          ),
          CircleAvatar(
            backgroundColor: red,
            child: Icon(
              Icons.notifications,
              color: white,
            ),
          ),
          SizedBox(
            width: 10,
            child: Text(''),
          ),
          CircleAvatar(
            backgroundColor: grey,
            child: Icon(
              Icons.supervised_user_circle_sharp,
              color: white,
            ),
          ),
          SizedBox(
            width: 10,
            child: Text(''),
          ),
          CircleAvatar(
            backgroundColor: blue,
            child: Icon(
              Icons.messenger_sharp,
              color: white,
            ),
          ),
          SizedBox(
            width: 10,
            child: Text(''),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Chip(
                padding: EdgeInsets.all(0),
                avatar: CircleAvatar(
                  backgroundImage: AssetImage('assets/a3.jpg'),
                ),
                label: TextField(
                  cursorColor: grey,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    fillColor: Colors.grey.shade200,
                    hintText: "What's on your mind, Megg?",
                  ),
                ),
              ),
              SizedBox(
                height: 20,
                child: Text(''),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyChip(Icons.image_rounded, 'Gallery', 10, green, lightGreen),
                  MyChip(Icons.supervised_user_circle_sharp, 'Tag Friends', 10,
                      red, lightRed),
                  MyChip(Icons.video_camera_back_sharp, 'Live', 0, blue,
                      lightBlue),
                ],
              ),
              SizedBox(
                height: 20,
                child: Text(''),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                children: [
                  StackCards(),
                  Container(
                    // height: 200,
                    child: Story(
                        name: "Yu Su Fu",
                        time: '9 min',
                        storyPicz: 'assets/a11.jpg',
                        dp: 'assets/a10.jpg',
                        caption: "Lorem ipsum dolor silu jfbn da abdjonbad",
                        comment: "23k comments",
                        shares: "2.1k shares"),
                  ),
                  Container(
                    // height: 200,
                    child: Story(
                      name: "Kholid Alabi",
                      time: '26 min',
                      storyPicz: 'assets/a12.jpg',
                      dp: 'assets/a5.jpg',
                      caption: "Lorem ipsum dolor silu jfbn da abdjonbad",
                      comment: "2k comments",
                      shares: "2k shares",
                    ),
                  ),
                  Container(
                    // height: 200,
                    child: Story(
                      name: "Akin Akintola",
                      time: '50 min',
                      storyPicz: 'assets/a14.jpg',
                      dp: 'assets/a13.jpg',
                      caption: "Lorem ipsum dolor silu jfbn da abdjonbad",
                      comment: "2.3k comments",
                      shares: "20.1k shares",
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LSS extends StatefulWidget {
  const LSS({Key? key}) : super(key: key);

  @override
  _LSSState createState() => _LSSState();
}

class _LSSState extends State<LSS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          LB()
        ],
      ),
    );
  }
}

class LB extends StatelessWidget {
  const LB({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.facebook_rounded, color: blue,), Text("facebook", style: TextStyle(fontWeight: FontWeight.w800, color: blue),),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            width: 200,
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                hintText: "Search",
                suffixIcon: Icon(Icons.search_outlined),
                border: OutlineInputBorder(borderSide: BorderSide(width: 1.5, color: blue), borderRadius: BorderRadius.circular(50),),
              ),
            ),
          ),
          
          LNavTabs(),
          Spacer(),
          NotificationTab(),
          
        ],
      ),
    );
  }
}

// class NavTabs extends StatelessWidget{
//   const NavTabs({this.icon, this.str,})
  // final Icon? icon;
  // final String? str;

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

class NavTab extends StatelessWidget {
  const NavTab({ Key? key, this.icon, this.str }) : super(key: key);
    final IconData? icon;
    final String? str;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: grey,),
        Container(
          margin: EdgeInsets.only(left: 5),
          child: Text(str!, style: TextStyle(color: grey),))
      ],
    );
  }
}
class NotificationTab extends StatelessWidget {
  const NotificationTab({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.notifications_outlined),
                    Text("Notifications")
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Icon(Icons.cancel_outlined, color: blue,),)
              ],
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              padding: EdgeInsets.all(10),
              color: blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Friend Request\nwaiting in the list", style: TextStyle(color: white),),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text("2", style: TextStyle(color: white),))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class LNavTabs extends StatelessWidget {
  const LNavTabs({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NavTab(str: "News Feed", icon: Icons.home_outlined),
          SizedBox(
            height: 20,
            child: Text(''),
          ),
          NavTab(str: "Messenger", icon: Icons.messenger_outlined),
          SizedBox(
            height: 20,
            child: Text(''),
          ),
          NavTab(str: "Watch", icon: Icons.tv_outlined),
          SizedBox(
            height: 20,
            child: Text(''),
          ),
          NavTab(str: "Pages", icon: Icons.flag_outlined),
          SizedBox(
            height: 20,
            child: Text(''),
          ),
          NavTab(str: "Games", icon: Icons.gamepad_outlined),
          SizedBox(
            height: 20,
            child: Text(''),
          ),
          NavTab(str: "Explore", icon: Icons.explore_outlined),
          SizedBox(
            height: 20,
            child: Text(''),
          ),
          NavTab(str: "Events", icon: Icons.event_available_outlined),
          SizedBox(
            height: 20,
            child: Text(''),
          ),
          NavTab(str: "Groups", icon: Icons.group_outlined),
          SizedBox(
            height: 20,
            child: Text(''),
          ),
          NavTab(str: "Collections", icon: Icons.collections_outlined),
          SizedBox(
            height: 20,
            child: Text(''),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinkbook/colors.dart';
import 'package:pinkbook/responsive.dart';

import 'lsstore.dart';
import 'ssmstore.dart';

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
          Expanded(
            flex: 2,
            child: LB(),
          ),
          Expanded(
            flex: 3,
            child: MB(),
          ),
          Expanded(
            flex: 2,
            child: RB(),
          ),
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


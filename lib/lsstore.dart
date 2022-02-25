import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class MB extends StatelessWidget {
  const MB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          TopCard(),
        ],
      ),
    );
  }
}

class TopCard extends StatelessWidget {
  const TopCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      
      child: Container(
        color: white,
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "What's on your mind? Megagon",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Text(
                  "Sharing options",
                  style: TextStyle(fontSize: 12, color: grey),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.camera_alt_outlined,
                          color: blue,
                        ),
                        Text(
                          "Camera",
                          style: TextStyle(color: blue),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.video_camera_back_outlined,
                          color: blue,
                        ),
                        Text(
                          "Live",
                          style: TextStyle(color: blue),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.emoji_emotions_outlined, color: blue,),
                  Icon(Icons.collections_bookmark_outlined, color: blue,),
                  Icon(Icons.add, color: blue,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

//right tab block --start--
class RB extends StatelessWidget {
  const RB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Dev. Megagonn",
              style: TextStyle(color: Colors.black),
            ),
            CircleAvatar(
              backgroundImage: AssetImage("assets/a3.jpg"),
            ),
          ],
        ),
        actions: [
          PopupMenuButton(
              icon: Icon(
                Icons.menu_outlined,
                color: grey,
              ),
              color: grey,
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    child: TextButton(
                      onPressed: () {},
                      child: Text("Profile"),
                    ),
                  ),
                  PopupMenuItem(
                    child: TextButton(
                      onPressed: () {},
                      child: Text("Friends"),
                    ),
                  ),
                  PopupMenuItem(
                    child: TextButton(
                      onPressed: () {},
                      child: Text("Settings"),
                    ),
                  ),
                  PopupMenuItem(
                    child: TextButton(
                      onPressed: () {},
                      child: Text("Community"),
                    ),
                  ),
                  PopupMenuItem(
                    child: TextButton(
                      onPressed: () {},
                      child: Spacer(),
                    ),
                  ),
                  PopupMenuItem(
                    child: TextButton(
                      onPressed: () {},
                      child: Text("Sign Out"),
                    ),
                  ),
                ];
              })
        ],
      ),
      body: Container(
        color: white,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 3,
              child: Container(
                color: grey,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              child: Text(
                "Friends",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height - 180,
              child: SingleChildScrollView(
                child: FriendsList(),
              ),
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.all(10),
              // margin: EdgeInsets.only(top: 6),
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: blue,
                  ),
                  borderRadius: BorderRadius.circular(50)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "New Group",
                    style: TextStyle(color: blue),
                  ),
                  Icon(
                    Icons.add_sharp,
                    color: blue,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FriendsList extends StatelessWidget {
  const FriendsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Friend(
            name: "Yusuff Rasheed",
            image: "assets/a3.jpg",
            color: green,
          ),
          SizedBox(
            height: 10,
          ),
          Friend(
            name: "Olayinka Abdulazeez",
            image: "assets/a1.jpg",
            color: green,
          ),
          SizedBox(
            height: 10,
          ),
          Friend(
            name: "Akin Alabi",
            image: "assets/a2.jpg",
            color: green,
          ),
          SizedBox(
            height: 10,
          ),
          Friend(
            name: "Tunde Salami",
            image: "assets/a4.jpg",
            color: green,
          ),
          SizedBox(
            height: 10,
          ),
          Friend(
            name: "Raji Bashorun",
            image: "assets/a5.jpg",
            color: green,
          ),
          SizedBox(
            height: 10,
          ),
          Friend(
            name: "Alowonle Nurudeen",
            image: "assets/a6.jpg",
            color: green,
          ),
          SizedBox(
            height: 10,
          ),
          Friend(
            name: "Fola Tomi",
            image: "assets/a7.jpg",
            color: green,
          ),
          SizedBox(
            height: 10,
          ),
          Friend(
            name: "Akintunde Deji",
            image: "assets/a8.jpg",
            color: green,
          ),
          SizedBox(
            height: 10,
          ),
          Friend(
            name: "Han Su Ra",
            image: "assets/a9.jpg",
            color: green,
          ),
          SizedBox(
            height: 10,
          ),
          Friend(
            name: "Makinde Felix",
            image: "assets/a10.jpg",
            color: green,
          ),
          SizedBox(
            height: 10,
          ),
          Friend(
            name: "Rasheed Yusuff",
            image: "assets/a11.jpg",
            color: green,
          ),
          SizedBox(
            height: 10,
          ),
          Friend(
            name: "Mueezah Omodaada",
            image: "assets/a12.jpg",
            color: green,
          ),
          SizedBox(
            height: 10,
          ),
          Friend(
            name: "Ayoka Ola",
            image: "assets/a13.jpg",
            color: green,
          ),
          SizedBox(
            height: 10,
          ),
          Friend(
            name: "Sumbu Oyin",
            image: "assets/a14.jpg",
            color: green,
          ),
          SizedBox(
            height: 10,
          ),
          Friend(
            name: "Abunga Mi",
            image: "assets/a1.jpg",
            color: green,
          ),
          SizedBox(
            height: 10,
          ),
          Friend(
            name: "Jimi Bangbopa",
            image: "assets/a2.jpg",
            color: green,
          ),
        ],
      ),
    );
  }
}

class Friend extends StatelessWidget {
  const Friend({Key? key, this.image, this.name, this.color}) : super(key: key);

  final String? image;
  final String? name;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(image!),
        ),
        Container(
          margin: EdgeInsets.only(left: 5),
          child: Text(
            name!,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        CircleAvatar(
          radius: 4,
          backgroundColor: color!,
        )
      ],
    );
  }
}
//right tab block --ends--

//left tab block --starts--
class LB extends StatelessWidget {
  const LB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      color: white,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.facebook_rounded,
                color: blue,
              ),
              Text(
                "facebook",
                style: TextStyle(fontWeight: FontWeight.w800, color: blue),
              ),
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
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 1.5, color: blue),
                  borderRadius: BorderRadius.circular(50),
                ),
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

class NavTab extends StatelessWidget {
  const NavTab({Key? key, this.icon, this.str}) : super(key: key);
  final IconData? icon;
  final String? str;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: grey,
        ),
        Container(
            margin: EdgeInsets.only(left: 5),
            child: Text(
              str!,
              style: TextStyle(color: grey),
            ))
      ],
    );
  }
}

class NotificationTab extends StatelessWidget {
  const NotificationTab({Key? key}) : super(key: key);

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
                  child: Icon(
                    Icons.cancel_outlined,
                    color: blue,
                  ),
                )
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
                  Text(
                    "Friend Request\nwaiting in the list",
                    style: TextStyle(color: white),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        "2",
                        style: TextStyle(color: white),
                      ))
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
  const LNavTabs({Key? key}) : super(key: key);

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
//left tab block --ends--
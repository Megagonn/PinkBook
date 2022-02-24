import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class Story extends StatelessWidget {
  const Story(
      {this.name,
      this.time,
      this.dp,
      this.storyPicz,
      this.caption,
      this.comment,
      this.shares});
  final String? name;
  final String? time;
  final String? dp;
  final String? storyPicz;
  final String? caption;
  final String? comment;
  final String? shares;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 4, child: Text('')),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(dp!),
                ),
                Container(
                    margin: EdgeInsets.only(
                      left: 10,
                    ),
                    child: Text(name!)),
              ],
            ),
            Text(time!),
          ],
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 5),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 4,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(storyPicz!),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Text(
          caption!,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
          textAlign: TextAlign.left,
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('👍🏻 😀 🤣 🌹 😡 ❤️ 💔 👏🏻'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    comment!,
                    style: TextStyle(
                      color: grey,
                    ),
                  ),
                  Text(shares!)
                ],
              )
            ],
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 3,
          child: Container(
            color: lightGrey,
            // margin: EdgeInsets.symmetric(vertical: 4),
          ),
        )
      ],
    );
  }
}

class MyChip extends StatelessWidget {
  const MyChip(this.icon, this.text, this.padding, this.dbg, this.lbg);
  final IconData icon;
  final String text;
  final double padding;
  final Color lbg;
  final Color dbg;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: MediaQuery.of(context).size.width / 3.5,
      child: Chip(
        backgroundColor: lbg,
        avatar: CircleAvatar(
          // radius: 50,
          backgroundColor: dbg,
          child: Padding(
            padding: EdgeInsets.all(padding),
            child: Icon(
              icon,
              color: white,
              size: 18,
            ),
          ),
        ),
        label: Text(
          text,
          style: TextStyle(color: dbg),
        ),
        labelPadding: EdgeInsets.all(10),
      ),
    );
  }
}

class StackCards extends StatelessWidget {
  const StackCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              ClippedEdgeCard('assets/a0.jpg'),
              Text('Maa'),
            ],
          ),
          Column(
            children: [
              ClippedEdgeCard('assets/a6.jpg'),
              Text('Ayoka'),
            ],
          ),
          Column(
            children: [
              ClippedEdgeCard('assets/a0.jpg'),
              Text('Lolade'),
            ],
          ),
          Column(
            children: [
              ClippedEdgeCard('assets/a6.jpg'),
              Text('Yu Su Fu'),
            ],
          ),
          Column(
            children: [
              ClippedEdgeCard('assets/a0.jpg'),
              Text('Bae YU'),
            ],
          ),
          Column(
            children: [
              ClippedEdgeCard('assets/a6.jpg'),
              Text('Ola'),
            ],
          ),
          Column(
            children: [
              ClippedEdgeCard('assets/a0.jpg'),
              Text('Fam'),
            ],
          ),
          Column(
            children: [
              ClippedEdgeCard('assets/a6.jpg'),
              Text('Bun Ga'),
            ],
          ),
          Column(
            children: [
              ClippedEdgeCard('assets/a0.jpg'),
              Text('Joko Tola'),
            ],
          ),
        ],
      ),
    );
  }
}

class ClippedEdgeCard extends StatelessWidget {
  ClippedEdgeCard(this.image);
  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 140,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 2),
              height: 100,
              width: 100,
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage(image),
                // fit: BoxFit.fitHeight,
              ),
            ),
            Positioned(
              top: 80,
              left: 30,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: white,
                    ),
                    borderRadius: BorderRadius.circular(100)),
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: (AssetImage(image)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
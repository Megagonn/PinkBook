import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinkbook/colors.dart';
import 'package:pinkbook/responsive.dart';

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
      appBar: AppBar(
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
                Chip(
                  backgroundColor: lightGreen,
                  avatar: CircleAvatar(
                    // radius: 50,
                    backgroundColor: green,
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Icon(
                        Icons.image_rounded,
                        color: white,
                        size: 18,
                      ),
                    ),
                  ),
                  label: Text(
                    'Gallery',
                    style: TextStyle(color: green),
                  ),
                  labelPadding: EdgeInsets.all(10),
                ),
                SizedBox(
                  width: 10,
                  child: Text(''),
                ),
                Chip(
                  backgroundColor: lightGreen,
                  avatar: CircleAvatar(
                    // radius: 50,
                    backgroundColor: green,
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Icon(
                        Icons.image_rounded,
                        color: white,
                        size: 18,
                      ),
                    ),
                  ),
                  label: Text(
                    'Gallery',
                    style: TextStyle(color: green),
                  ),
                  labelPadding: EdgeInsets.all(10),
                ),
                SizedBox(
                  width: 10,
                  child: Text(''),
                ),
                Chip(
                  backgroundColor: lightGreen,
                  avatar: CircleAvatar(
                    // radius: 50,
                    backgroundColor: green,
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Icon(
                        Icons.image_rounded,
                        color: white,
                        size: 18,
                      ),
                    ),
                  ),
                  label: Text(
                    'Gallery',
                    style: TextStyle(color: green),
                  ),
                  labelPadding: EdgeInsets.all(10),
                ),
              ],
            ),
            SizedBox(
              height: 20,
              child: Text(''),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 100,
                          width: 80,
                          decoration: BoxDecoration(
                            // image: DecorationImage(image: AssetImage('assets/a0.jpg'),),
                            borderRadius: BorderRadius.circular(10),
                            color: red,
                          ),
                          child: Image(
                            image: AssetImage('assets/a0.jpg'), 
                            // fit: BoxFit.fitHeight,
                          ),
                        ),
                        Positioned(
                          top: 70,
                          left: 22,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(width: 2, color: white,),
                              borderRadius: BorderRadius.circular(100)
                            ),
                            child: CircleAvatar(
                              radius: 15,
                              backgroundImage: ( AssetImage('assets/a0.jpg')),
                            ),
                          ),
                        ),
                        
                        
                        
                      ],
                    ),
                    Text('Yusuff Rasheed'),
                    
                  ],
                )
              ],
            )
          ],
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
    return Container();
  }
}

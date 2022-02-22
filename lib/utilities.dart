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
  const SSS({ Key? key }) : super(key: key);

  @override
  _SSSState createState() => _SSSState();
}

class _SSSState extends State<SSS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        title: Text("Pinkbook", style: TextStyle(color:pink),),
        actions: [
          CircleAvatar(
            backgroundColor: grey,
            child: Icon(Icons.search_sharp, color: white,),
          ),
          SizedBox(
            width: 10,
            child: Text(''),
          ),
          CircleAvatar(
            backgroundColor: red,
            child: Icon(Icons.notifications, color: white,),
          ),
          SizedBox(
            width: 10,
            child: Text(''),
          ),
          CircleAvatar(
            backgroundColor: grey,
            child: Icon(Icons.supervised_user_circle_sharp, color: white,),
          ),
          SizedBox(
            width: 10,
            child: Text(''),
          ),
          CircleAvatar(
            backgroundColor: blue,
            child: Icon(Icons.messenger_sharp,color: white,),
          ),
          SizedBox(
            width: 10,
            child: Text(''),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                child: Image.asset(name),
              )
            ],
          )
        ],
      ),
    );
  }
}

class LSS extends StatefulWidget {
  const LSS({ Key? key }) : super(key: key);

  @override
  _LSSState createState() => _LSSState();
}

class _LSSState extends State<LSS> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}

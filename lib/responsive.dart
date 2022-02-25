import 'package:flutter/cupertino.dart';

class Res extends StatefulWidget {
  const Res({Key? key, required this.mobile, required this.web})
      : super(key: key);

  final mobile;
  final web;

  static bool isSmall(context) {
    return MediaQuery.of(context).size.width <= 650;
  }

  static bool isLarge(context) {
    return MediaQuery.of(context).size.width > 650;
  }

  @override
  _ResState createState() => _ResState();
}

class _ResState extends State<Res> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 650) {
          return widget.mobile;
        } else {
          return widget.web;
        }
      },
    );
  }
}

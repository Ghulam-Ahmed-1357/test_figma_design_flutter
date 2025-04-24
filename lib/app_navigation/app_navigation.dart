import 'package:flutter/cupertino.dart';

class AppNavigation {
  static pushNamed(BuildContext context, String page){
    Navigator.pushNamed(context, page);
  }
}
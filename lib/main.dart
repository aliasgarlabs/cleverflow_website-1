import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './features.dart';
import './pricing.dart';
import './login.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,theme: ThemeData(
    fontFamily: 'Calibri Light',
  ), home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return _MyAppState();
  }
}

class _MyAppState extends State {
  final _menuList = ['Features', 'Pricing', 'Log In'];
  Widget mainWidget = Features();

  // var _menuIndex = 0;
  AppBar makeAppBar() {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      titleSpacing: 0.0,
      //toolbarHeight: 75.0,
      title: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          //Expanded(child: Container(child: Divider(color: Colors.purple,thickness: 10.0,))),
           Row(

             children: [
               Expanded(child: Container(child: Divider(color: Colors.purple,thickness: 5.0,))),
             ],
           ),
          TextButton(
              child: Image(
                image: AssetImage(
                    'assets/logo.png'), // THIS IS WHATS BEING SHIFTED
              ),
              onPressed: () {
                setState(() {
                  mainWidget = Features();
                });
              }),
        ],
      ),
      actions: <Widget>[
        for (var menuName in _menuList)
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
              child: Text(menuName,style: TextStyle(color: Colors.black),),
              onPressed: () {
                setState(() {
                  switch (menuName) {
                    case 'Features':
                      mainWidget = Features();
                      break;
                    case 'Pricing':
                      mainWidget = Pricing();
                      break;
                    case 'Log In':
                      mainWidget = LogIn();
                      break;
                  }
                });

              }),
        )
      ],
      backgroundColor: Colors.transparent,
      elevation: 0.0,
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: makeAppBar(),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(child: mainWidget),
      //endDrawer: makeDrawer(),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:tourshop_app/ui/common/constant/color.dart';
import 'package:tourshop_app/ui/page/ui_search_screen.dart';
import 'package:tourshop_app/ui/page/us_history_screen.dart';
import 'package:tourshop_app/ui/page/us_home_screen.dart';

import '../common/navigator_index/index.dart';

class Navigator_Screen extends StatefulWidget {
  @override
  State<Navigator_Screen> createState() => _Navigator_ScreenState();
}

class _Navigator_ScreenState extends State<Navigator_Screen> {
  bool on = false;
  final GlobalKey<FabCircularMenuState> fabKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: on
            ? Stack(
                children: [
                  Body(icons),
                  InkWell(
                    onTap: () {
                      fabKey.currentState!.close();
                    },
                    child: Container(
                      color: Color.fromARGB(80, 41, 30, 30),
                    ),
                  )
                ],
              )
            : Body(icons),
        floatingActionButton: Builder(
          builder: (context) => FabCircularMenu(
            key: fabKey,
            // Cannot be `Alignment.center`
            alignment: Alignment.bottomRight,
            ringColor: Color.fromARGB(0, 244, 67, 54),
            ringDiameter: 260.0,
            ringWidth: 100.0,
            fabSize: 50.0,
            fabElevation: 8.0,
            fabIconBorder: CircleBorder(),
            // Also can use specific color based on wether
            // the menu is open or not:
            // fabOpenColor: Colors.white
            // fabCloseColor: Colors.white
            // These properties take precedence over fabColor
            fabColor: US_APP_COLOR,
            fabOpenIcon: Ison(icons, Colors.white),
            fabCloseIcon: const Text(
              'X',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20),
            ),
            fabMargin: const EdgeInsets.all(16.0),
            animationDuration: const Duration(milliseconds: 800),
            animationCurve: Curves.easeInOutCirc,
            onDisplayChange: (isOpen) {
              setState(() {
                on = !on;
              });
            },
            children: <Widget>[
              InkWell(
                onTap: () {
                  setState(() {
                    icons = 0;
                  });
                  fabKey.currentState!.close();
                },
                child: CircleAvatar(
                  backgroundColor: US_APP_COLOR,
                  child: const Icon(Icons.home_filled, color: Colors.white),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    icons = 1;
                  });
                  fabKey.currentState!.close();
                },
                child: CircleAvatar(
                  backgroundColor: US_APP_COLOR,
                  child: const Icon(Icons.hiking_sharp, color: Colors.white),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    icons = 2;
                  });
                  fabKey.currentState!.close();
                },
                child: CircleAvatar(
                  backgroundColor: US_APP_COLOR,
                  child: const Icon(Icons.search, color: Colors.white),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    icons = 3;
                  });
                  fabKey.currentState!.close();
                },
                child: CircleAvatar(
                  backgroundColor: US_APP_COLOR,
                  child: const Icon(
                    Icons.person_pin,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget Ison(int icons, colors) {
    switch (icons) {
      case 0:
        return Icon(Icons.home_filled, color: colors);
      case 1:
        return Icon(Icons.hiking_sharp, color: colors);
      case 2:
        return Icon(Icons.search, color: colors);
      case 3:
        return Icon(Icons.person_pin, color: colors);

      default:
        return Icon(Icons.person_pin, color: colors);
    }
  }

  Widget Body(int index) {
    switch (index) {
      case 0:
        return Home_screen();
      case 1:
        return History_Screen();
      case 2:
        return Search_Screen();
      case 3:
        return Container(
          color: Colors.yellow,
        );
      default:
        return Container(
          color: Colors.white,
        );
    }
  }

  void _showSnackBar(BuildContext context, String message) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text(message),
      duration: const Duration(milliseconds: 1000),
    ));
  }
}

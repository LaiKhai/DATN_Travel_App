import 'package:company_tour_app/ui/common/constant/dimen.dart';
import 'package:company_tour_app/ui/page/Quan_ly.dart';
import 'package:company_tour_app/ui/page/tao_tour_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Navi_tab extends StatefulWidget {
  const Navi_tab({Key? key}) : super(key: key);

  @override
  State<Navi_tab> createState() => _Navi_tabState();
}

class _Navi_tabState extends State<Navi_tab> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Quan_Ly_Tour(),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.ac_unit_outlined,
          size: 50,
        ),
        centerTitle: true,
        actions: [
          CircleAvatar(
            backgroundColor: Colors.orange,
          )
        ],
        title: Text(
          'Tên công ty',
          style: GoogleFonts.quicksand(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color(0xFF3192D3),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
            backgroundColor: Color(0xFF3192D3),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
            backgroundColor: Color(0xFF3192D3),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Color(0xFF3192D3),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.yellow,
        onTap: _onItemTapped,
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Create_tour_Screen()),
            );
          },
          child: Text(
            '+',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
          )),
    );
  }
}

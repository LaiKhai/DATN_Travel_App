import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:tourshop_app/ui/Widget/Search/Item_search.dart';

import '../common/constant/color.dart';
import '../common/constant/string.dart';

class Search_Screen extends StatefulWidget {
  const Search_Screen({Key? key}) : super(key: key);

  @override
  State<Search_Screen> createState() => _Search_ScreenState();
}

class _Search_ScreenState extends State<Search_Screen> {
  TextEditingController textController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        elevation: 0,
        backgroundColor: US_APP_COLOR,
        title: const Text(
          'Tìm kiếm tour',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: CustomScrollView(
        key: centerKey,
        slivers: <Widget>[
          SliverList(
              delegate: SliverChildListDelegate([
            Row(
              children: [
                Container(
                  width: 330,
                  padding: EdgeInsets.all(15),
                  child: TextFormField(
                    controller: textController,
                    onChanged: (_) => EasyDebounce.debounce(
                      'textController',
                      Duration(milliseconds: 2000),
                      () => setState(() {}),
                    ),
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintStyle: const TextStyle(
                          color: Color.fromARGB(255, 114, 112, 112),
                          fontWeight: FontWeight.bold),
                      hintText: 'Tìm kiếm',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(35, 37, 38, 54),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(45),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Color.fromARGB(255, 114, 112, 112),
                      ),
                    ),
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 114, 112, 112),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: US_APP_COLOR,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    height: 50,
                    width: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.file_copy,
                          color: Colors.white,
                          size: 24,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: const Text(
                  'Danh sách tour du lịch',
                  style: TextStyle(
                      color: Color.fromARGB(255, 78, 77, 77),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ))
          ])),
          SliverList(delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            return const Item_search();
          }))
        ],
      ),
    );
  }
}

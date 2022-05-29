import 'package:flutter/material.dart';
import 'package:tourshop_app/ui/common/constant/color.dart';
import 'package:tourshop_app/ui/common/constant/dimen.dart';
import 'package:tourshop_app/ui/common/constant/string.dart';

class US_Resigter_Screen extends StatefulWidget {
  const US_Resigter_Screen({Key? key}) : super(key: key);
  

  @override
  State<US_Resigter_Screen> createState() => _US_Resigter_ScreenState();
}


class _US_Resigter_ScreenState extends State<US_Resigter_Screen> {
  late TabController _tabController;

@override
void initState(){
  super.initState();
  _tabController = TabController(length: myTab.length, vsync: this);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: US_APP_COLOR,
        title: Text(
          "Đăng Ký",
          style: ggTextStyle(20, FontWeight.bold, US_APP_WHITE),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Container(
        child: Column(children: [
          Container(
            width: getWidthSize(context),
            height: 206,
            decoration: BoxDecoration(
                color: US_APP_COLOR,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: 
            ,
          )
        ]),
      )),
    );
  }
  static List<Widget> myTab = <Widget>[
    Tab(text: "Email",),
    Tab(text: "Số điện thoại",)
  ];
}
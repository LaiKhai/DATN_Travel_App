import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tourshop_app/ui/Widget/home/home_appar/Button_icon_appar.dart';
import 'package:tourshop_app/ui/Widget/home/home_appar/button_fuction.dart';
import 'package:tourshop_app/ui/common/constant/dimen.dart';

import '../../common/navigator_index/index.dart';

// ignore: camel_case_types
class Home_appar extends StatefulWidget {
  const Home_appar({Key? key}) : super(key: key);

  @override
  State<Home_appar> createState() => _Home_apparState();
}

// ignore: camel_case_types
class _Home_apparState extends State<Home_appar> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //nền header
        Container(
          height: getHeightSize(context) * 227 / 640,
          width: double.maxFinite,
          color: Colors.red,
          // child: Container(
          //   width: double.maxFinite,
          //   decoration: const BoxDecoration(
          //       image: DecorationImage(
          //     image: AssetImage(
          //         'assets/images/us_background_login.png'),
          //     fit: BoxFit.cover,
          //   )),
          // ),
        ),
        //hàng icon appar
        Container(
          padding: const EdgeInsets.only(top: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 120,
                width: 120,
                child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/images/us_logo.svg',
                      height: 200,
                      width: 200,
                    )),
              ),
              // ignore: avoid_unnecessary_containers
              Row(
                children: [
                  //icon thông báo
                  // ignore: avoid_unnecessary_containers
                  Icon_appar(
                      icons: Icons.add_alert_outlined, colors: Colors.white),
                  //icon lịch sử
                  // ignore: avoid_unnecessary_containers
                  Icon_appar(icons: Icons.hiking_sharp, colors: Colors.white),

                  //icon hồ sơ
                  // ignore: avoid_unnecessary_containers
                  Icon_appar(icons: Icons.person_outlined, colors: Colors.white)
                ],
              ),
            ],
          ),
        ),
        //khung bo tròn
        Container(
          margin: EdgeInsets.only(top: getHeightSize(context) * 0.3),
          padding: const EdgeInsets.only(top: 10),
          height: getHeightSize(context) * 36 / 640,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
          ),
        ),
        //hàng nút công cụ
        Center(
          child: Container(
            margin: EdgeInsets.only(top: getHeightSize(context) * 0.25),
            height: 100,
            width: 350,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Button_function(
                    text: 'Tìm kiếm Tour',
                    icon: Icons.search,
                    ontap: () {
                      print('object');
                      setState(() {
                        icons = 2;
                      });
                      print(icons);
                    }),
                Button_function(
                    text: 'Đề xuất Tour',
                    icon: Icons.control_point_duplicate_sharp,
                    ontap: () {}),
                Button_function(
                    text: 'Đặt Tour',
                    icon: Icons.two_wheeler_outlined,
                    ontap: () {}),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

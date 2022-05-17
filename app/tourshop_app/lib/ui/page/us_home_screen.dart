import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:tourshop_app/ui/Widget/home/home_appar.dart';
import 'package:tourshop_app/ui/Widget/home/home_khuyen_mai/Khuyen_mai.dart';
import 'package:tourshop_app/ui/Widget/home/home_tour_NB.dart';
import 'package:tourshop_app/ui/common/constant/color.dart';

import '../Widget/home/back_ground.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  List<String> lst_the_loai = [
    'Hội Nhóm',
    'Gia Đình',
    'Nghỉ Dưỡng',
    'Trăng mật'
  ];
  String font = '';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    const Key centerKey = ValueKey<String>('bottom-sliver-list');
    // ignore: unnecessary_new
    TextEditingController textController = new TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        center: centerKey,
        slivers: <Widget>[
          SliverList(
              key: centerKey,
              delegate: SliverChildListDelegate([
                const Home_appar(),

                // đường viền + khuyến mãi đặc biệt
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Container(
                        color: Colors.black,
                        height: 1,
                      )),
                      Container(
                        height: 40,
                        width: 180,
                        margin: const EdgeInsets.all(2),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          // ignore: unnecessary_const
                          color: US_APP_COLOR,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Khuyến mãi đặc biệt',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontFamily: font,
                                fontSize: 15),
                          ),
                        ),
                      ),
                      Expanded(
                          child: Container(
                        color: Colors.black,
                        height: 1,
                      )),
                    ],
                  ),
                )
              ])),
          SliverToBoxAdapter(
            child: Container(
              height: 250.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(top: 20, left: 20),
                    width: 250.0,
                    child: Card(
                      borderOnForeground: false,
                      elevation: 0,
                      color: Color(0xFF00ea6f50),
                      child: Stack(
                        children: [
                          Back_groud(),
                          Container(
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(80, 16, 18, 19),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                          ),
                          KM_Text()
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              padding: const EdgeInsets.only(
                  left: 30, right: 30, top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // ignore: avoid_unnecessary_containers
                  Container(
                    child: Text(
                      'Tour nổi bật',
                      style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 30),
                    ),
                  ),
                  // ignore: avoid_unnecessary_containers
                  Container(
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward_rounded,
                          size: 30,
                          color: Colors.black,
                        )),
                  )
                ],
              ),
            )
          ])),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                padding:
                    EdgeInsets.only(top: 15, bottom: 15, left: 30, right: 30),
                child: Material(
                  color: Colors.transparent,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Stack(
                    children: [
                      Img_tour_NB(),
                      Container(
                        width: double.infinity,
                        height: 170,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(104, 42, 37, 37),
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      Text_tour_NB()
                    ],
                  ),
                ),
              );
            },
            childCount: 4,
          )),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
                child: Text(
                  'Tour du lịch bạn muốn ?',
                  style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 25),
                ),
              )
            ]),
          ),
          SliverToBoxAdapter(
            child: Container(
                padding: EdgeInsets.only(left: 30, right: 30),
                height: 200.0,
                child: GridView.builder(
                    padding: const EdgeInsets.only(top: 10),
                    itemCount: lst_the_loai.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 2,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Stack(
                        children: [
                          Back_groud(
                            imgs:
                                'http://www.teleenergia.ch/manutank/assets/img/demo/7.jpg',
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(60, 16, 18, 19),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              lst_the_loai[index],
                              style: TextStyle(
                                  fontFamily: font,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          )
                        ],
                      );
                    })),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Text('Địa điểm nổi bật',
                  style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 25)),
            ),
          ])),
          SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(
                decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    image: DecorationImage(
                      image: NetworkImage(
                          'http://www.teleenergia.ch/manutank/assets/img/demo/2.jpg'),
                      fit: BoxFit.cover,
                    )),
                margin: EdgeInsets.only(top: 10, left: 30, right: 30),
                height: 120,
                width: double.infinity,
                child: Stack(children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(70, 16, 18, 19),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                  ),
                  // ignore: avoid_unnecessary_containers
                  Container(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20, bottom: 10),
                        child: Text(
                          'Địa điểm nổi bật',
                          style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20),
                        ),
                      )
                    ],
                  )),
                ]),
              );
            }),
          )
        ],
      ),
    );
  }
}

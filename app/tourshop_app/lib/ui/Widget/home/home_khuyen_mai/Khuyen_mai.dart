import 'package:flutter/material.dart';
import 'package:tourshop_app/ui/common/constant/dimen.dart';
import 'package:tourshop_app/ui/common/constant/string.dart';


class KM_Text extends StatelessWidget {
  String Text_KM;
  String Name_KM;
  String avt_Congty_KM;
  String Name_Congty_KM;
  String Money_KM;
  KM_Text(
      {Key? key,
      this.Text_KM = 'Chương trình khuyến mãi siêu to khủng lồ',
      this.Name_KM = 'địa điểm du lịch ăn chơi xa đoạ đầy tâm tối',
      this.avt_Congty_KM =
          'https://www.gardendesign.com/pictures/images/675x529Max/site_3/english-lavender-lavandula-angustifolia-garden-design_11716.jpg',
      this.Name_Congty_KM = 'data',
      this.Money_KM = '200.000.000'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20),
          padding: const EdgeInsets.only(left: 20, top: 5, right: 5, bottom: 5),
          constraints: BoxConstraints(maxWidth: getWidthSize(context) * 0.45),
          decoration: const BoxDecoration(
            color: Color(0xFFfa0201),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15)),
          ),
          child: Center(
            child: Text(
              Text_KM,
              style: TextStyle(
                  overflow: TextOverflow.ellipsis,
                  color: Colors.white,
                  fontFamily: font,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 10),
          height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                constraints:
                    BoxConstraints(maxWidth: getWidthSize(context) * 0.45),
                child: Text(Name_Congty_KM,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: font,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        overflow: TextOverflow.ellipsis)),
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      backgroundImage: NetworkImage(avt_Congty_KM),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        Name_Congty_KM,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white,
                            fontFamily: font,
                            overflow: TextOverflow.ellipsis),
                      ),
                    )
                  ],
                ),
              ),
              // ignore: avoid_unnecessary_containers

              // ignore: avoid_unnecessary_containers
              Container(
                child: Text(
                  Money_KM,
                  style: TextStyle(
                      fontFamily: font,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

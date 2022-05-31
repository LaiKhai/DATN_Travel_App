import 'package:company_tour_app/ui/page/widget/Tao_tour/Step_tour.dart';
import 'package:flutter/material.dart';

class Create_tour_Screen extends StatefulWidget {
  const Create_tour_Screen({Key? key}) : super(key: key);

  @override
  State<Create_tour_Screen> createState() => _Create_tour_ScreenState();
}

class _Create_tour_ScreenState extends State<Create_tour_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tạo Tour")),
      body: Create_Tour(),
    );
  }
}

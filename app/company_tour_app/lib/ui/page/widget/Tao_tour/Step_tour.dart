import 'package:company_tour_app/ui/page/widget/Tao_tour/step/Chi_tiet_tab.dart';
import 'package:company_tour_app/ui/page/widget/Tao_tour/step/Dieu_khoan_tab.dart';
import 'package:company_tour_app/ui/page/widget/Tao_tour/step/Lichtrinh_tab.dart';
import 'package:company_tour_app/ui/page/widget/Tao_tour/step/Them_Anh.dart';
import 'package:company_tour_app/ui/page/widget/Tao_tour/step/Thoi_gian_tab.dart';
import 'package:company_tour_app/ui/page/widget/Tao_tour/step/thong_tin_tab.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controller/Tao_tour/controller_text.dart';

class Create_Tour extends StatefulWidget {
  const Create_Tour({Key? key}) : super(key: key);

  @override
  _Create_TourState createState() => _Create_TourState();
}

class _Create_TourState extends State<Create_Tour> {
  int _activeStepIndex = 0;
  List<Step> stepList() => [
        Step(
          isActive: _activeStepIndex >= 0,
          title: const Text('Tạo thông tin Tour'),
          content: Container(
            child: CreateWidget(),
          ),
        ),
        Step(
            // state:
            //     _activeStepIndex <= 1 ? StepState.editing : StepState.complete,
            isActive: _activeStepIndex >= 1,
            title: const Text('Thời gian Tour'),
            content: Container(child: Thoi_gian_tab())),
        Step(
            // state: StepState.complete,
            isActive: _activeStepIndex >= 2,
            title: const Text('Lịch trình'),
            content: Lichtrinh_tab()),
        Step(
            // state: StepState.complete,
            isActive: _activeStepIndex >= 3,
            title: const Text('Chi tiết dịch vụ'),
            content: Chi_Tiet_tab()),
        Step(
            // state: StepState.complete,
            isActive: _activeStepIndex >= 4,
            title: const Text('Điều khoảng thoả thuận'),
            content: Dieu_Khoan_tab()),
        Step(
            // state: StepState.complete,
            isActive: _activeStepIndex >= 5,
            title: const Text('Thêm ảnh'),
            content: Them_anh_tab())
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stepper(
        type: StepperType.vertical,
        currentStep: _activeStepIndex,
        steps: stepList(),
        onStepContinue: () {
          if (_activeStepIndex < (stepList().length - 1)) {
            setState(() {
              _activeStepIndex += 1;
            });
          } else {
            DK_Tieu_de = [Tieude];
            DK_Chi_tiet = [ChiTiet];
            ten_chuyen.clear();
            Mo_Ta.clear();
            Kinh_nghiem.clear();
            Diem_noi_bat.clear();
            Gia.clear();
            So_nguoi.clear();
            Bao_gom.clear();
            Khong_Bao_gom.clear();
            Tre_em.clear();
            Tieude.clear();
            ChiTiet.clear();
          }
        },
        onStepCancel: () {
          if (_activeStepIndex == 0) {
            return;
          }

          setState(() {
            _activeStepIndex -= 1;
          });
        },
        onStepTapped: (int index) {
          setState(() {
            _activeStepIndex = index;
          });
        },
        controlsBuilder: (context, detail) {
          final isLastStep = _activeStepIndex == stepList().length - 1;
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                if (_activeStepIndex > 0)
                  InkWell(
                    onTap: detail.onStepCancel,
                    child: Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(35),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'HUỶ BỎ',
                          style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                InkWell(
                  onTap: detail.onStepContinue,
                  child: Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xFF3192D3),
                      borderRadius: BorderRadius.circular(35),
                      border: Border.all(
                        color: Colors.transparent,
                        width: 1,
                      ),
                    ),
                    child: Center(
                      child: (isLastStep)
                          ? Text(
                              ' HOÀN TẤT',
                              style: GoogleFonts.quicksand(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            )
                          : Text(
                              'TIẾP THEO',
                              style: GoogleFonts.quicksand(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                    ),
                  ),
                ),
              ],
            ),
          );

          // Container(
          //   child: Row(
          //     children: [
          //       Expanded(
          //         child: ElevatedButton(
          //           onPressed: detail.onStepContinue,
          //           child: (isLastStep)
          //               ? const Text('Submit')
          //               : const Text('Next'),
          //         ),
          //       ),
          //       const SizedBox(
          //         width: 10,
          //       ),
          //       if (_activeStepIndex > 0)
          //         Expanded(
          //           child: ElevatedButton(
          //             onPressed: detail.onStepCancel,
          //             child: const Text('Back'),
          //           ),
          //         )
          //     ],
          //   ),
          // );
        },
      ),
    );
  }
}

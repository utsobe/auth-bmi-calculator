import 'package:bmi_calculator/app/data/constants/extensions/double_extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/widgets/text_widgets/poppins_text.dart';
import '../../../data/constants/size_constant.dart';
import '../controllers/result_controller.dart';

class ResultView extends GetView<ResultController> {
  const ResultView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(SizeConst.getSize(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PoppinsText(
                title: 'Results',
                size: SizeConst.getSize(26),
                weight: FontWeight.bold,
              ),
              (SizeConst.getSize(20)).height,
              SingleChildScrollView(
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.all(SizeConst.getSize(20)),
                        margin: EdgeInsets.only(bottom: SizeConst.getSize(16)),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                PoppinsText(
                                  title: 'WEIGHT',
                                  size: SizeConst.getSize(12),
                                  color: Colors.grey.shade600,
                                ),
                                PoppinsText(title: '70.5 kg'),
                              ],
                            ),
                            IntrinsicHeight(
                              child: Container(
                                height: SizeConst.getSize(40),
                                width: 0.5,
                                color: Colors.grey.shade400,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                PoppinsText(
                                  title: 'DATE',
                                  size: SizeConst.getSize(12),
                                  color: Colors.grey.shade600,
                                ),
                                PoppinsText(title: '14.07.2023'),
                              ],
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:bmi_calculator/app/core/widgets/custom_container/custom_container.dart';
import 'package:bmi_calculator/app/core/widgets/custom_widgets/icon_content.dart';
import 'package:bmi_calculator/app/data/constants/color_constant.dart';
import 'package:bmi_calculator/app/data/constants/extensions/double_extension.dart';
import 'package:bmi_calculator/app/data/constants/extensions/widget_extensions.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../../core/widgets/custom_widgets/round_icon_buttom.dart';
import '../../../core/widgets/text_widgets/poppins_text.dart';
import '../../../data/constants/size_constant.dart';
import '../controllers/calculate_controller.dart';

class CalculateView extends GetView<CalculateController> {
  const CalculateView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: Obx(() {
          return Padding(
            padding: EdgeInsets.all(SizeConst.getSize(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PoppinsText(
                      title: 'Calculator',
                      size: SizeConst.getSize(26),
                      weight: FontWeight.bold,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: SizeConst.getSize(15),
                        vertical: SizeConst.getSize(5),
                      ),
                      decoration: BoxDecoration(
                          color: ColorConstant.primaryColor,
                          borderRadius: BorderRadius.circular(50)),
                      child: Icon(
                        Icons.touch_app_outlined,
                        color: Colors.white,
                      ),
                    ).onTap(() {
                      controller.calculateBmi();
                    }),
                  ],
                ),
                (SizeConst.getSize(20)).height,
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomContainer(
                          color: controller.gender.value == 'male'
                              ? Colors.blue.shade50
                              : Colors.white,
                          cardChild: IconContent(
                            icon: FontAwesomeIcons.mars,
                            label: 'MALE',
                          ),
                          onPress: () {
                            controller.gender.value = 'male';
                          },
                        ),
                      ),
                      (SizeConst.getSize(20)).width,
                      Expanded(
                        child: CustomContainer(
                          color: controller.gender.value == 'female'
                              ? Colors.blue.shade50
                              : Colors.white,
                          cardChild: IconContent(
                            icon: FontAwesomeIcons.venus,
                            label: 'FEMALE',
                          ),
                          onPress: () {
                            controller.gender.value = 'female';
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                (SizeConst.getSize(20)).height,
                Expanded(
                  child: CustomContainer(
                    cardChild: Column(
                      children: [
                        PoppinsText(
                          title: 'HEIGHT',
                          size: SizeConst.getSize(18),
                          color: Color(0xFF8D8E98),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            PoppinsText(
                              title: controller.height.value.toString(),
                              size: SizeConst.getSize(50),
                              weight: FontWeight.w900,
                            ),
                            PoppinsText(
                              title: 'cm',
                              size: SizeConst.getSize(18),
                              color: Color(0xFF8D8E98),
                            )
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                              activeTrackColor: Colors.blue.shade100,
                              inactiveTrackColor: Colors.grey.shade300,
                              thumbColor: ColorConstant.primaryColor,
                              overlayColor: Colors.blue.shade200,
                              thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 15.0),
                              overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 30.0)),
                          child: Slider(
                            value: controller.height.value.toDouble(),
                            min: 120.0,
                            max: 220.0,
                            onChanged: (double newValue) {
                              controller.height.value = newValue.round();
                            },
                          ),
                        ),
                      ],
                    ),
                    onPress: () {},
                  ),
                ),
                (SizeConst.getSize(20)).height,
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomContainer(
                          onPress: () {},
                          cardChild: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              PoppinsText(
                                title: 'WEIGHT',
                                size: SizeConst.getSize(18),
                                color: Color(0xFF8D8E98),
                              ),
                              PoppinsText(
                                title: controller.weight.value.toString(),
                                size: SizeConst.getSize(50),
                                weight: FontWeight.w900,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RoundIconButton(
                                    onPress: () {
                                      controller.weight.value--;
                                    },
                                    icon: FontAwesomeIcons.minus,
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  RoundIconButton(
                                    onPress: (() {
                                      controller.weight.value++;
                                    }),
                                    icon: FontAwesomeIcons.plus,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      (SizeConst.getSize(20)).width,
                      Expanded(
                        child: CustomContainer(
                          onPress: () {},
                          cardChild: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              PoppinsText(
                                title: 'AGE',
                                size: SizeConst.getSize(18),
                                color: Color(0xFF8D8E98),
                              ),
                              PoppinsText(
                                title: controller.age.value.toString(),
                                size: SizeConst.getSize(50),
                                weight: FontWeight.w900,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RoundIconButton(
                                    icon: FontAwesomeIcons.minus,
                                    onPress: (() {
                                      controller.age.value--;
                                    }),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  RoundIconButton(
                                    icon: FontAwesomeIcons.plus,
                                    onPress: (() {
                                      controller.age.value++;
                                    }),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}

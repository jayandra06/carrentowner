import 'package:carrentowner/constant/app_color.dart';
import 'package:carrentowner/constant/app_screen_size.dart';
import 'package:carrentowner/constant/app_text_style.dart';
import 'package:carrentowner/for_car_owner/verify_owner/mobile_owner.dart';
import 'package:carrentowner/for_car_owner/widget_owner/timeline_owner.dart';
import 'package:flutter/material.dart';
// import 'package:myride/constant/app_color.dart';
// import 'package:myride/constant/app_screen_size.dart';
// import 'package:myride/constant/app_text_style.dart';
// import 'package:myride/view/for_car_owner/verify_owner/mobile_owner.dart';
// import 'package:myride/view/for_car_owner/widget_owner/timeline_owner.dart';

class VerifyOwnerScreen extends StatefulWidget {
  const VerifyOwnerScreen({super.key});

  @override
  State<VerifyOwnerScreen> createState() => _VerifyOwnerScreenState();
}

class _VerifyOwnerScreenState extends State<VerifyOwnerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.graybg,
      body: Stack(
        children: [
          Positioned(
              top: AppSceenSize.getHeight(context) * 0.02,
              child: Image.asset(
                "assets/images/whitebg.png",
                fit: BoxFit.cover,
              )),
          Positioned(
            width: AppSceenSize.getWidth(context) * 1,
            top: AppSceenSize.getHeight(context) * 0.15,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "For Getting Approval",
                    textAlign: TextAlign.center,
                    style: AppTextStyle.headingtext,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "We kindly request you to provide us with some essential information to proceed with your admin approval.",
                    textAlign: TextAlign.center,
                    style: AppTextStyle.subheading,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            width: AppSceenSize.getWidth(context) * 1,
            top: AppSceenSize.getHeight(context) * 0.40,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  MyTimelineTileOwner(
                      title: "Verify Profile",
                      suntitle:
                          "To proceed, please provide a valid and verified profile  for communication purposes.",
                      isFirst: true,
                      isLast: false,
                      isPast: true),
                  MyTimelineTileOwner(
                      title: "Verify KYC",
                      suntitle:
                          "We require a kyc to keep you updated on important notifications.",
                      isFirst: false,
                      isLast: false,
                      isPast: true),
                  MyTimelineTileOwner(
                      title: "Driver Details",
                      suntitle:
                          "Kindly enter Driver details  for verification purposes.",
                      isFirst: false,
                      isLast: true,
                      isPast: true),
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 10,
              child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  width: AppSceenSize.getWidth(context),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Appcolors.appgreen, // Text color
                        padding: const EdgeInsets.all(16), // Button padding
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(8), // Button border radius
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MobileVerifyOwner(),
                            ));
                      },
                      child: const Text("Continue"))))
        ],
      ),
    );
  }
}

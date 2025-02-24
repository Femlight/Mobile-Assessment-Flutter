import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/app/presentation/ecommerce_signup_screen.dart';
import 'package:mobile_assessment_flutter/app/presentation/personal_signup_screen.dart';
// import 'package:mobile_assessment_flutter/app/presentation/personal_sign_up_screen.dart';
import 'package:mobile_assessment_flutter/core/constants.dart';
import 'package:mobile_assessment_flutter/core/reuseables.dart';
import 'package:mobile_assessment_flutter/core/size_config.dart';

// import '../../core/screen_size_config.dart';

class UserTypeScreen extends StatelessWidget {
  const UserTypeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenSizeConfig.init(context);
    return buildRegistrationScreenBackground(
      child: Padding(
        padding: EdgeInsets.only(
            left: getProportionateScreenWidth(26.33),
            right: getProportionateScreenWidth(28.64)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildRegistrationScreenHeader(
              title: 'What kind of user are\nyou?',
              subtitle: Text(
                'We will adapt the app to suit your\nneeds.',
                style: TextStyle(
                    color: Palette.headerTextColor,
                    fontSize: getProportionateScreenWidth(17.55),
                    fontFamily: FontFamily.light,
                    fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(48.04)),
            BuildButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PersonalSignUpScreen()));
              },
              buttonText: 'Personal',
              containerHeight: 136.78,
              containerWidth: 373.03,
              borderRadiusSize: 24.87,
              buttonTextSize: 39.5,
              buttonTextColor: Palette.whiteColor,
              buttonColor: Palette.primaryColor,
              borderColor: Palette.primaryColor,
              buttonTextWeight: FontWeight.w700,
              buttonTextFamily: FontFamily.bold,
            ),
            SizedBox(height: getProportionateScreenHeight(40.96)),
            BuildButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EcommerceSignUpScreen()));
              },
              buttonText: 'E-commerce',
              containerHeight: 136.78,
              containerWidth: 373.03,
              borderRadiusSize: 24.87,
              buttonTextSize: 39.5,
              buttonTextColor: Palette.whiteColor,
              buttonColor: Palette.primaryColor,
              borderColor: Palette.primaryColor,
              buttonTextWeight: FontWeight.w700,
              buttonTextFamily: FontFamily.bold,
            ),
          ],
        ),
      ),
    );
  }
}

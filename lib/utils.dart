import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-2/check-in-out-Xmr.dart';
import 'package:myapp/page-2/check-in-out.dart';
import 'package:myapp/page-2/customer_profile.dart';
import 'package:myapp/page-2/main-screen-pTj.dart';
import 'package:myapp/page-2/main-screen.dart';
import 'package:myapp/page-2/notify.dart';
import 'package:myapp/page-2/search.dart';
import 'package:myapp/page-2/settings_screen.dart';

import 'page-2/care_provider_profile.dart';
import 'page-2/offers.dart';

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

TextStyle SafeGoogleFont(
  String fontFamily, {
  TextStyle? textStyle,
  Color? color,
  Color? backgroundColor,
  double? fontSize,
  FontWeight? fontWeight,
  FontStyle? fontStyle,
  double? letterSpacing,
  double? wordSpacing,
  TextBaseline? textBaseline,
  double? height,
  Locale? locale,
  Paint? foreground,
  Paint? background,
  List<Shadow>? shadows,
  List<FontFeature>? fontFeatures,
  TextDecoration? decoration,
  Color? decorationColor,
  TextDecorationStyle? decorationStyle,
  double? decorationThickness,
}) {
  try {
    return GoogleFonts.getFont(
      fontFamily,
      textStyle: textStyle,
      color: color,
      backgroundColor: backgroundColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height,
      locale: locale,
      foreground: foreground,
      background: background,
      shadows: shadows,
      fontFeatures: fontFeatures,
      decoration: decoration,
      decorationColor: decorationColor,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
    );
  } catch (ex) {
    return GoogleFonts.getFont(
      "Source Sans Pro",
      textStyle: textStyle,
      color: color,
      backgroundColor: backgroundColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height,
      locale: locale,
      foreground: foreground,
      background: background,
      shadows: shadows,
      fontFeatures: fontFeatures,
      decoration: decoration,
      decorationColor: decorationColor,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
    );
  }
}

void navigate(BuildContext context, Widget nextScreen) {
  Navigator.push(context, MaterialPageRoute(
    builder: (context) {
      return nextScreen;
    },
  ));
}

Color primaryColor = const Color(0xff009900);
Color primaryColorLight = const Color(0xff7bcc70);
Color backgroundColor = const Color(0xffecf1fa);

AppBar appBar(double fem) {
  return AppBar(
    backgroundColor: const Color(0xffecf1fa),
    elevation: 0,
    leading: Builder(builder: (context) {
      return Container(
        // backmEh (112:485)
        margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 11 * fem),
        width: 35 * fem,
        height: 35 * fem,
        child: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Image.asset(
            'assets/page-2/images/back-FKw.png',
            fit: BoxFit.contain,
          ),
        ),
      );
    }),
    actions: [
      Builder(builder: (context) {
        return Builder(builder: (context) {
          return IconButton(
              onPressed: () => navigate(context, const SettingsScreen()),
              icon: const Icon(
                Icons.settings,
                color: Colors.black,
              ));
        });
      })
    ],
  );
}

bottomBar(double fem, double ffem, BuildContext context, int index) {
  return SizedBox(
    width: double.infinity,
    height: 70 * fem,
    child: Container(
      height: 70 * fem,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xff7bcc70)),
        color: const Color(0xffffffff),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () =>
                  (index != 0) ? navigate(context, const HomePage()) : null,
              child: Container(
                // autogroupi5szBkm (5yPk4VTqyVGbsLAXKUi5SZ)
                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 2 * fem),
                width: 35 * fem,
                height: 46 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // homeiVo (112:120)
                      left: 0 * fem,
                      top: 0 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 35 * fem,
                          height: 35 * fem,
                          child: Image.asset(
                            'assets/page-2/images/home.png',
                            color: (index == 0)
                                ? const Color(0xff7bcc70)
                                : const Color(0xffb7b7b7),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // homeRv1 (112:125)
                      left: 2 * fem,
                      top: 33 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 32 * fem,
                          height: 13 * fem,
                          child: Text(
                            'Home',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 10 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.2175 * ffem / fem,
                              color: (index == 0)
                                  ? const Color(0xff7bcc70)
                                  : const Color(0xffb7b7b7),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => (index != 1)
                  ? navigate(context, const NotificationScreen())
                  : null,
              child: Container(
                // autogroupe2sbjvh (5yPk8f1aAS2jXyRqUge2sb)
                margin: EdgeInsets.fromLTRB(0 * fem, 2 * fem, 0 * fem, 0 * fem),
                width: 60 * fem,
                height: 46 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // notificationUdP (112:119)
                      left: 12 * fem,
                      top: 0 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 35 * fem,
                          height: 35 * fem,
                          child: Image.asset(
                            'assets/page-2/images/notification-5db.png',
                            color: (index == 1)
                                ? const Color(0xff7bcc70)
                                : const Color(0xffb7b7b7),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // notificationQ1F (112:126)
                      left: 0 * fem,
                      top: 33 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 60 * fem,
                          height: 13 * fem,
                          child: Text(
                            'Notification',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 10 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.2175 * ffem / fem,
                              color: (index == 1)
                                  ? const Color(0xff7bcc70)
                                  : const Color(0xffb7b7b7),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => (index != 2)
                  ? navigate(context, const CheckInCheckOutCleint())
                  : null,
              child: Container(
                // autogroupdbqugUZ (5yPkCKa8ed6me92C6dDbQu)
                margin: EdgeInsets.fromLTRB(0 * fem, 2 * fem, 0 * fem, 0 * fem),
                width: 35 * fem,
                height: 46 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // searchQfT (112:118)
                      left: 0 * fem,
                      top: 0 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 35 * fem,
                          height: 35 * fem,
                          child: Image.asset(
                            'assets/images/checkInOut.png',
                            color: (index == 2)
                                ? const Color(0xff7bcc70)
                                : const Color(0xffb7b7b7),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // searchXVB (112:127)
                      left: 0 * fem,
                      top: 33 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 35 * fem,
                          height: 13 * fem,
                          child: Text(
                            'Check-in/out',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 10 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.2175 * ffem / fem,
                              color: (index == 2)
                                  ? const Color(0xff7bcc70)
                                  : const Color(0xffb7b7b7),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () =>
                  (index != 3) ? navigate(context, const SearchPage()) : null,
              child: Container(
                // autogroupdbqugUZ (5yPkCKa8ed6me92C6dDbQu)
                margin: EdgeInsets.fromLTRB(0 * fem, 2 * fem, 0 * fem, 0 * fem),
                width: 35 * fem,
                height: 46 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // searchQfT (112:118)
                      left: 0 * fem,
                      top: 0 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 35 * fem,
                          height: 35 * fem,
                          child: Image.asset(
                            'assets/page-2/images/search.png',
                            color: (index == 3)
                                ? const Color(0xff7bcc70)
                                : const Color(0xffb7b7b7),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // searchXVB (112:127)
                      left: 0 * fem,
                      top: 33 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 35 * fem,
                          height: 13 * fem,
                          child: Text(
                            'Search',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 10 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.2175 * ffem / fem,
                              color: (index == 3)
                                  ? const Color(0xff7bcc70)
                                  : const Color(0xffb7b7b7),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () =>
                  (index != 4) ? navigate(context, const UserProfile()) : null,
              child: Container(
                // autogroupgmey2B3 (5yPkFpUJZtwSZUitsUgMey)
                margin: EdgeInsets.fromLTRB(0 * fem, 2 * fem, 0 * fem, 0 * fem),
                width: 33 * fem,
                height: 46 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // customervGR (112:124)
                      left: 0 * fem,
                      top: 0 * fem,
                      child: Align(
                        child: SizedBox(
                            width: 35 * fem,
                            height: 35 * fem,
                            child: Image.asset(
                              'assets/page-2/images/customer-3MB.png',
                              color: (index == 4)
                                  ? const Color(0xff7bcc70)
                                  : const Color(0xffb7b7b7),
                              fit: BoxFit.contain,
                            )),
                      ),
                    ),
                    Positioned(
                      // profileoLD (112:128)
                      left: 1 * fem,
                      top: 33 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 33 * fem,
                          height: 13 * fem,
                          child: Text(
                            'Profile',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 10 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.2175 * ffem / fem,
                              color: (index == 4)
                                  ? const Color(0xff7bcc70)
                                  : const Color(0xffb7b7b7),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

bottomBarCareProvider(
    double fem, double ffem, BuildContext context, int index) {
  return SizedBox(
    width: double.infinity,
    height: 70 * fem,
    child: Container(
      height: 70 * fem,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xff7bcc70)),
        color: const Color(0xffffffff),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () => (index != 0)
                  ? navigate(context, const MainScreenCareProvider())
                  : null,
              child: Container(
                // autogroupi5szBkm (5yPk4VTqyVGbsLAXKUi5SZ)
                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 2 * fem),
                width: 35 * fem,
                height: 46 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // homeiVo (112:120)
                      left: 0 * fem,
                      top: 0 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 35 * fem,
                          height: 35 * fem,
                          child: Image.asset(
                            'assets/page-2/images/home.png',
                            color: (index == 0)
                                ? const Color(0xff7bcc70)
                                : const Color(0xffb7b7b7),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // homeRv1 (112:125)
                      left: 2 * fem,
                      top: 33 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 32 * fem,
                          height: 13 * fem,
                          child: Text(
                            'Home',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 10 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.2175 * ffem / fem,
                              color: (index == 0)
                                  ? const Color(0xff7bcc70)
                                  : const Color(0xffb7b7b7),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => (index != 1)
                  ? navigate(context, const NotificationScreen())
                  : null,
              child: Container(
                // autogroupe2sbjvh (5yPk8f1aAS2jXyRqUge2sb)
                margin: EdgeInsets.fromLTRB(0 * fem, 2 * fem, 0 * fem, 0 * fem),
                width: 60 * fem,
                height: 46 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // notificationUdP (112:119)
                      left: 12 * fem,
                      top: 0 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 35 * fem,
                          height: 35 * fem,
                          child: Image.asset(
                            'assets/page-2/images/notification-5db.png',
                            color: (index == 1)
                                ? const Color(0xff7bcc70)
                                : const Color(0xffb7b7b7),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // notificationQ1F (112:126)
                      left: 0 * fem,
                      top: 33 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 60 * fem,
                          height: 13 * fem,
                          child: Text(
                            'Notification',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 10 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.2175 * ffem / fem,
                              color: (index == 1)
                                  ? const Color(0xff7bcc70)
                                  : const Color(0xffb7b7b7),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => (index != 2)
                  ? navigate(context, const CheckInServiceProvider())
                  : null,
              child: Container(
                // autogroupdbqugUZ (5yPkCKa8ed6me92C6dDbQu)
                margin: EdgeInsets.fromLTRB(0 * fem, 2 * fem, 0 * fem, 0 * fem),
                width: 40 * fem,
                height: 46 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // searchQfT (112:118)
                      left: 0 * fem,
                      top: 0 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 35 * fem,
                          height: 35 * fem,
                          child: Image.asset(
                            'assets/images/checkInOut.png',
                            color: (index == 2)
                                ? const Color(0xff7bcc70)
                                : const Color(0xffb7b7b7),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // searchXVB (112:127)
                      left: 0 * fem,
                      top: 33 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 45 * fem,
                          height: 13 * fem,
                          child: Text(
                            'CheckIn',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 10 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.2175 * ffem / fem,
                              color: (index == 2)
                                  ? const Color(0xff7bcc70)
                                  : const Color(0xffb7b7b7),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => (index != 3)
                  ? navigate(context, const RequestsCareProvider())
                  : null,
              child: Container(
                // autogroupdbqugUZ (5yPkCKa8ed6me92C6dDbQu)
                margin: EdgeInsets.fromLTRB(0 * fem, 2 * fem, 0 * fem, 0 * fem),
                width: 35 * fem,
                height: 46 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // searchQfT (112:118)
                      left: 0 * fem,
                      top: 0 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 35 * fem,
                          height: 35 * fem,
                          child: Image.asset(
                            'assets/page-2/images/handshake.png',
                            color: (index == 3)
                                ? const Color(0xff7bcc70)
                                : const Color(0xffb7b7b7),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // searchXVB (112:127)
                      left: 0 * fem,
                      top: 33 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 65 * fem,
                          height: 13 * fem,
                          child: Text(
                            'Requests',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 10 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.2175 * ffem / fem,
                              color: (index == 3)
                                  ? const Color(0xff7bcc70)
                                  : const Color(0xffb7b7b7),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => (index != 4)
                  ? navigate(context, const UserProfileCareProvider1())
                  : null,
              child: Container(
                // autogroupgmey2B3 (5yPkFpUJZtwSZUitsUgMey)
                margin: EdgeInsets.fromLTRB(0 * fem, 2 * fem, 0 * fem, 0 * fem),
                width: 35 * fem,
                height: 46 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // customervGR (112:124)
                      left: 0 * fem,
                      top: 0 * fem,
                      child: Align(
                        child: SizedBox(
                            width: 35 * fem,
                            height: 35 * fem,
                            child: Image.asset(
                              'assets/page-2/images/customer-3MB.png',
                              color: (index == 4)
                                  ? const Color(0xff7bcc70)
                                  : const Color(0xffb7b7b7),
                              fit: BoxFit.contain,
                            )),
                      ),
                    ),
                    Positioned(
                      // profileoLD (112:128)
                      left: 1 * fem,
                      top: 33 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 33 * fem,
                          height: 13 * fem,
                          child: Text(
                            'Profile',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 10 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.2175 * ffem / fem,
                              color: (index == 4)
                                  ? const Color(0xff7bcc70)
                                  : const Color(0xffb7b7b7),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

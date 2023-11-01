import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-2/care_provider_profile.dart';
import 'package:myapp/page-2/customer_profile.dart';
import 'package:myapp/page-2/splash-screen.dart';
import 'package:myapp/utils.dart';

import '../main.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isNotify = false;

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      backgroundColor: const Color(0xffecf1fa),
      appBar: AppBar(
        backgroundColor: primaryColorLight,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  // hello625 (112:7)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 10 * fem),
                  child: Text(
                    'Hello,',
                    style: SafeGoogleFont(
                      'Montserrat',
                      fontSize: 24 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2175 * ffem / fem,
                      color: const Color(0x59000000),
                    ),
                  ),
                ),
              ],
            ),

            Container(
              // autogroup8htmbzR (5yPh7psDXEgs9QHWjb8Htm)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 20 * fem, 13 * fem),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // raymysteriow2h (112:8)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
                    child: Text(
                      '${loggedinUser!.firstName} ${loggedinUser!.lastName}',
                      style: SafeGoogleFont(
                        'Montserrat',
                        fontSize: 24 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2175 * ffem / fem,
                        color: const Color(0xb2000000),
                      ),
                    ),
                  ),
                  SizedBox(
                    // maskgroup3Ld (112:46)
                    width: 30 * fem,
                    height: 30 * fem,
                    child: Image.asset(
                      'assets/page-2/images/mask-group.png',
                      width: 30 * fem,
                      height: 30 * fem,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => (isClient)
                              ? const UserProfile()
                              : const UserProfileCareProvider1()));
                },
                child: tab(title: 'Profile', icon: 'profile.png')),
            tab(title: 'Notifications', icon: 'notification.png'),
            GestureDetector(
                // onTap: () {
                //   Navigator.push(context,
                //       MaterialPageRoute(builder: (context) => PrivacyScreen()));
                // },
                child: tab(title: 'Privacy Policy', icon: 'privacy.png')),
            GestureDetector(
                onTap: () {
                  //   Navigator.push(context,
                  //       MaterialPageRoute(builder: (context) => TermsScreen()));
                },
                child: tab(title: 'Terms of services', icon: 'terms.png')),
            GestureDetector(
                onTap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => SupportScreen()));
                },
                child: tab(title: 'Support', icon: 'support.png')),
            // GestureDetector(
            //     onTap: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (context) => VideoPlayerScreen(
            //                   videoPath:
            //                       'assets/videos/big_buck_bunny_720p_1mb.mp4',
            //                 )),
            //       );
            //     },
            //     child: tab(title: 'Video', icon: 'upload.png')),
            GestureDetector(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SplashScreen()),
                      (route) => false);
                },
                child: tab(title: 'Logout', icon: 'signout.png'))
          ],
        ),
      ),
    );
  }

  Widget tab({String? title, String? icon}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: const EdgeInsets.only(top: 22),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: primaryColorLight),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/$icon',
                  // height: 0.01 * MediaQuery.of(context).size.height,
                  // width: 0.020 * MediaQuery.of(context).size.width,
                ),
                SizedBox(
                  width: 0.048 * MediaQuery.of(context).size.width,
                ),
                Text(
                  '$title',
                  style: GoogleFonts.dmSans(
                      textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: title == 'Logout'
                              ? const Color.fromRGBO(213, 79, 74, 1)
                              : Colors.white)),
                ),
              ],
            ),
            title == 'Notifications'
                ? SizedBox(
                    height: 0.030 * MediaQuery.of(context).size.height,
                    width: 50,
                    child: FlutterSwitch(
                      value: isNotify,
                      // inactiveColor: colorOne,
                      // inactiveToggleColor: whiteColor,
                      // activeToggleColor: colorOne,
                      // activeColor: whiteColor,
                      onToggle: (v) {
                        setState(() {
                          isNotify = v;
                        });
                      },
                    ),
                  )
                : Icon(
                    Icons.arrow_forward,
                    color: title == 'Logout'
                        ? const Color.fromRGBO(213, 79, 74, 1)
                        : Colors.white,
                  )
          ],
        ),
      ),
    );
  }
}

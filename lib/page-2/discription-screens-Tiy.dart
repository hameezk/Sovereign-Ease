import 'package:flutter/material.dart';
import 'package:myapp/page-2/discription-screens-BhT.dart';
import 'package:myapp/utils.dart';

class CareProviderDiscriptionScreen1 extends StatelessWidget {
  const CareProviderDiscriptionScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Container(
          // discriptionscreensgau (56:279)
          padding: EdgeInsets.fromLTRB(45*fem, 66*fem, 45*fem, 0*fem),
          width: double.infinity,
          decoration: const BoxDecoration (
            color: Color(0xffecf1fa),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogroup9nfsC3T (5yPe3VpgxmWKqVSVDe9nfs)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 77*fem),
                width: double.infinity,
                height: 331*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // ellipse27RK (56:282)
                      left: 20*fem,
                      top: 31*fem,
                      child: Align(
                        child: SizedBox(
                          width: 300*fem,
                          height: 300*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(150*fem),
                              color: const Color(0xff7bcc70),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle12p4q (56:284)
                      left: 0*fem,
                      top: 280*fem,
                      child: Align(
                        child: SizedBox(
                          width: 340*fem,
                          height: 51*fem,
                          child: Container(
                            decoration: const BoxDecoration (
                              color: Color(0xffecf1fa),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // image13KGV (112:32)
                      left: 30*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 280*fem,
                          height: 280*fem,
                          child: Image.asset(
                            'assets/page-2/images/image-13.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // autogroupvvxbSc1 (5yPe9aUtgGRA9dSocMvvXB)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 91*fem),
                padding: EdgeInsets.fromLTRB(26*fem, 59*fem, 26*fem, 59*fem),
                width: double.infinity,
                height: 214*fem,
                decoration: BoxDecoration (
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(20*fem),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x3f000000),
                      offset: Offset(0*fem, 4*fem),
                      blurRadius: 5*fem,
                    ),
                  ],
                ),
                child: Center(
                  // welcomecareersjoinourdreamteam (56:281)
                  child: SizedBox(
                    child: Container(
                      constraints: BoxConstraints (
                        maxWidth: 288*fem,
                      ),
                      child: Text(
                        'Welcome to Sovereign Ease Careers!\nWe\'re a forward-thinking home health care company transforming the industry. We\'re on the lookout for talented individuals to join our staff as we continue to grow and turn our vision into reality. ',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Poppins',
                          fontSize: 16*ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.5*ffem/fem,
                          color: const Color(0xff7bcc70),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                // autogroupeshkYoT (5yPeEABbHWFhnLSFPHeshK)
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // ellipse3Hm3 (56:286)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                      width: 10*fem,
                      height: 10*fem,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(5*fem),
                        color: const Color(0xff7bcc70),
                      ),
                    ),
                    Container(
                      // ellipse4pW5 (56:287)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                      width: 10*fem,
                      height: 10*fem,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(5*fem),
                        color: const Color(0xffffffff),
                      ),
                    ),
                    Container(
                      // ellipse5wah (56:288)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 274*fem, 0*fem),
                      width: 10*fem,
                      height: 10*fem,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(5*fem),
                        color: const Color(0xffffffff),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => navigate(context, const CareProviderDiscriptionScreen2()),
                      child: Text(
                        // skipU4q (56:289)
                        'Skip',
                        style: SafeGoogleFont (
                          'Poppins',
                          fontSize: 12*ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.5*ffem/fem,
                          color: const Color(0xff7bcc70),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
            ),
    );
  }
}
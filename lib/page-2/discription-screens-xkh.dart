import 'package:flutter/material.dart';
import 'package:myapp/page-2/main-screen-pTj.dart';
import 'package:myapp/utils.dart';

class CareProviderDiscriptionScreen3 extends StatelessWidget {
  const CareProviderDiscriptionScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Container(
          // discriptionscreens4H7 (56:301)
          padding: EdgeInsets.fromLTRB(45 * fem, 66 * fem, 45 * fem, 0 * fem),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xffecf1fa),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogrouphdgvZzZ (5yPgFbouQXiENTHH4VHdGV)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 77 * fem),
                width: double.infinity,
                height: 331 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // ellipse2hqs (56:303)
                      left: 20 * fem,
                      top: 31 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 300 * fem,
                          height: 300 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(150 * fem),
                              color: const Color(0xff7bcc70),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle12p9o (56:305)
                      left: 0 * fem,
                      top: 280 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 340 * fem,
                          height: 51 * fem,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color(0xffecf1fa),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // image15k3T (112:36)
                      left: 30 * fem,
                      top: 0 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 280 * fem,
                          height: 280 * fem,
                          child: Image.asset(
                            'assets/page-2/images/image-15.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // autogroupwxpz5Ld (5yPgMWoiZ7PhVmPwc7wxpZ)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 91 * fem),
                padding:
                    EdgeInsets.fromLTRB(12 * fem, 47 * fem, 12 * fem, 47 * fem),
                width: double.infinity,
                height: 214 * fem,
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(20 * fem),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x3f000000),
                      offset: Offset(0 * fem, 4 * fem),
                      blurRadius: 5 * fem,
                    ),
                  ],
                ),
                child: Center(
                  // atsovereigneaseouremployeeshel (56:311)
                  child: SizedBox(
                    child: Container(
                      constraints: BoxConstraints(
                        maxWidth: 316 * fem,
                      ),
                      child: Text(
                        'At Sovereign Ease, our employees help \nmake our clients’ healthier a reality by\nstriving to be the best at what we do.\nAccept work shifts based on their own\navailability.',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 16 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.5 * ffem / fem,
                          color: const Color(0xff7bcc70),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                // autogroupy8dfyKX (5yPgR6Y5kqr41X3UJWy8DF)
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // ellipse3KuB (56:306)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 5 * fem, 0 * fem),
                      width: 10 * fem,
                      height: 10 * fem,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5 * fem),
                        color: const Color(0xffffffff),
                      ),
                    ),
                    Container(
                      // ellipse4reD (56:307)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 5 * fem, 0 * fem),
                      width: 10 * fem,
                      height: 10 * fem,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5 * fem),
                        color: const Color(0xffffffff),
                      ),
                    ),
                    GestureDetector(
                      onTap: () =>
                          navigate(context, const MainScreenCareProvider()),
                      child: Container(
                        // ellipse5PPF (56:308)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 265 * fem, 0 * fem),
                        width: 10 * fem,
                        height: 10 * fem,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5 * fem),
                          color: const Color(0xff7bcc70),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () =>
                          navigate(context, const MainScreenCareProvider()),
                      child: Text(
                        // finish85w (56:309)
                        'Finish',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 12 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.5 * ffem / fem,
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

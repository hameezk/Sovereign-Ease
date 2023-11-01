import 'package:flutter/material.dart';
import 'package:myapp/models/appointment_model.dart';
import 'package:myapp/models/care_provider_model.dart';
import 'package:myapp/page-2/main-screen.dart';
import 'package:myapp/utils.dart';

class ConfirmAppointment extends StatefulWidget {
  final CareProviderModel careProviderModel;
  final AppointmentModel appointmentModel;
  const ConfirmAppointment(
      {super.key,
      required this.careProviderModel,
      required this.appointmentModel});

  @override
  State<ConfirmAppointment> createState() => _ConfirmAppointmentState();
}

class _ConfirmAppointmentState extends State<ConfirmAppointment> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Container(
            // confirmo1j (146:572)
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xffecf1fa),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // autogroup6ypyKVs (5yQ3TQeQKwQTpBM2jL6Ypy)
                  padding: EdgeInsets.fromLTRB(
                      25 * fem, 15 * fem, 46 * fem, 56 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          // backdFf (146:578)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 41 * fem),
                          width: 35 * fem,
                          height: 35 * fem,
                          child: Image.asset(
                            'assets/page-2/images/back-tb3.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Container(
                        // appointmentYtR (146:574)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 10 * fem),
                        child: Text(
                          'Appointment',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 24 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2175 * ffem / fem,
                            color: const Color(0x59000000),
                          ),
                        ),
                      ),
                      Container(
                        // successfullyconfirmedegZ (146:575)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 10 * fem),
                        child: Text(
                          'Successfully Confirmed!!',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 24 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2175 * ffem / fem,
                            color: const Color(0xb2000000),
                          ),
                        ),
                      ),
                      Container(
                        // image18kzV (146:642)
                        margin: EdgeInsets.fromLTRB(
                            115 * fem, 0 * fem, 0 * fem, 4 * fem),
                        width: 150 * fem,
                        height: 150 * fem,
                        child: Image.asset(
                          'assets/page-2/images/image-18.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        // autogroupjtjfVBP (5yQ1ycn23HjLgwhyrtjTjf)
                        margin: EdgeInsets.fromLTRB(
                            20 * fem, 0 * fem, 0 * fem, 0 * fem),
                        padding: EdgeInsets.fromLTRB(
                            25 * fem, 7 * fem, 24 * fem, 46 * fem),
                        width: 339 * fem,
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(5 * fem),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x3f000000),
                              offset: Offset(0 * fem, 3 * fem),
                              blurRadius: 2 * fem,
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // successfuluku (146:644)
                              margin: EdgeInsets.fromLTRB(
                                  9 * fem, 0 * fem, 0 * fem, 8 * fem),
                              child: Text(
                                'Successful!!!',
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 34 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2175 * ffem / fem,
                                  color: const Color(0xff7bcc70),
                                ),
                              ),
                            ),
                            Container(
                              // appointmentconfirmedwithDWh (146:645)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 1 * fem, 25 * fem),
                              child: Text(
                                'Appointment confirmed with',
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 15 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2175 * ffem / fem,
                                  color: const Color(0xb2000000),
                                ),
                              ),
                            ),
                            Container(
                              // autogrouplvazX1b (5yQ2G7JYE9YWAgsaedLVAZ)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 33 * fem),
                              width: double.infinity,
                              height: 66 * fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // autogroup2r4dSPT (5yQ2Nmn6vrm7diVgWA2R4D)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 20 * fem, 0 * fem),
                                    padding: EdgeInsets.fromLTRB(
                                        18 * fem, 7 * fem, 18 * fem, 8 * fem),
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: const Color(0xffecf1fa),
                                      borderRadius:
                                          BorderRadius.circular(5 * fem),
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color(0x3f000000),
                                          offset: Offset(0 * fem, 2 * fem),
                                          blurRadius: 1 * fem,
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      // doctorwithtabletandphonevZX (146:656)
                                      child: SizedBox(
                                        width: 34 * fem,
                                        height: 51 * fem,
                                        child: Image.network(
                                          widget.careProviderModel.profilePic ??
                                              '',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // infocarddTw (146:646)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 1 * fem, 0 * fem, 2 * fem),
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          // drstrangekoT (146:647)
                                          'Dr. ${widget.careProviderModel.firstName} ${widget.careProviderModel.lastName}',
                                          style: SafeGoogleFont(
                                            'Montserrat',
                                            fontSize: 20 * ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2175 * ffem / fem,
                                            color: const Color(0xb2000000),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5 * fem,
                                        ),
                                        Container(
                                          // certifiednursingassistantsUjT (146:648)
                                          margin: EdgeInsets.fromLTRB(2 * fem,
                                              0 * fem, 0 * fem, 0 * fem),
                                          child: Text(
                                            widget.careProviderModel.jobTitle ??
                                                '',
                                            style: SafeGoogleFont(
                                              'Montserrat',
                                              fontSize: 10 * ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.2175 * ffem / fem,
                                              color: const Color(0xb2000000),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5 * fem,
                                        ),
                                        Container(
                                          // autogrouprjdoZF7 (5yQ2ZBeRQDfSoKexuArJdo)
                                          margin: EdgeInsets.fromLTRB(1 * fem,
                                              0 * fem, 0 * fem, 0 * fem),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                // starHS1 (146:651)
                                                width: 15 * fem,
                                                height: 15 * fem,
                                                child: Image.asset(
                                                  'assets/page-2/images/star-CZw.png',
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                              SizedBox(
                                                // stardkm (146:652)
                                                width: 15 * fem,
                                                height: 15 * fem,
                                                child: Image.asset(
                                                  'assets/page-2/images/star-Ao3.png',
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                              SizedBox(
                                                // starBnH (146:653)
                                                width: 15 * fem,
                                                height: 15 * fem,
                                                child: Image.asset(
                                                  'assets/page-2/images/star-UwK.png',
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                              SizedBox(
                                                // stark4h (146:654)
                                                width: 15 * fem,
                                                height: 15 * fem,
                                                child: Image.asset(
                                                  'assets/page-2/images/star-mds.png',
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                              Container(
                                                // star6PT (146:650)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    15 * fem,
                                                    0 * fem),
                                                width: 15 * fem,
                                                height: 15 * fem,
                                                child: Image.asset(
                                                  'assets/page-2/images/star-hvH.png',
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                              Text(
                                                // RwX (146:649)
                                                '(1398)',
                                                style: SafeGoogleFont(
                                                  'Montserrat',
                                                  fontSize: 10 * ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.2175 * ffem / fem,
                                                  color:
                                                      const Color(0xb2000000),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // appointmentpayeda3j (146:657)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 10 * fem),
                              child: Text(
                                'Appointment payed',
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 15 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2175 * ffem / fem,
                                  color: const Color(0xb2000000),
                                ),
                              ),
                            ),
                            Container(
                              // tq7 (146:658)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 1 * fem, 8 * fem),
                              child: Text(
                                '\$ ${widget.appointmentModel.totalCost}',
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 34 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2175 * ffem / fem,
                                  color: const Color(0xff7bcc70),
                                ),
                              ),
                            ),
                            Container(
                              // autogroupiwzmDMb (5yQ2rkyUH3UUzS7JgyiWzm)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 32 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  12 * fem, 10 * fem, 58 * fem, 10 * fem),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: const Color(0xff7bcc70),
                                borderRadius: BorderRadius.circular(5 * fem),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0x3f000000),
                                    offset: Offset(0 * fem, 2 * fem),
                                    blurRadius: 2.5 * fem,
                                  ),
                                ],
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // infofzH (146:663)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 11 * fem, 1 * fem),
                                    width: 15 * fem,
                                    height: 15 * fem,
                                    child: Image.asset(
                                      'assets/page-2/images/info-7Xw.png',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Container(
                                    // careproviderwillstartproviding (146:664)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                    constraints: BoxConstraints(
                                      maxWidth: 175 * fem,
                                    ),
                                    child: Text(
                                      'Care Provider will start providing\nservices from selected date&time.',
                                      style: SafeGoogleFont(
                                        'Montserrat',
                                        fontSize: 10 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2175 * ffem / fem,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.popUntil(
                                    context, (route) => route.isFirst);
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const HomePage();
                                    },
                                  ),
                                );
                              },
                              child: Container(
                                // autogroupe2y752R (5yQ2zb5kxBJemExyU8E2y7)
                                width: double.infinity,
                                height: 35 * fem,
                                decoration: BoxDecoration(
                                  color: const Color(0xff7bcc70),
                                  borderRadius: BorderRadius.circular(5 * fem),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0x3f000000),
                                      offset: Offset(0 * fem, 3 * fem),
                                      blurRadius: 2.5 * fem,
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    'Confirm',
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.5 * ffem / fem,
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: bottomBar(fem, ffem, context, 0),
    );
  }
}

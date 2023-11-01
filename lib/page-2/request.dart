import 'package:flutter/material.dart';
import 'package:myapp/models/appointment_model.dart';
import 'package:myapp/models/care_provider_model.dart';
import 'package:myapp/page-2/payment.dart';
import 'package:myapp/utils.dart';

class AppointmentRequest extends StatefulWidget {
  final CareProviderModel careProviderModel;
  final AppointmentModel appointmentModel;
  const AppointmentRequest(
      {super.key,
      required this.careProviderModel,
      required this.appointmentModel});

  @override
  State<AppointmentRequest> createState() => _AppointmentRequestState();
}

class _AppointmentRequestState extends State<AppointmentRequest> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      backgroundColor: const Color(0xffecf1fa),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Container(
            // request7XP (149:1506)
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xffecf1fa),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // autogrouplr2qeXK (5yQ6v9DGDr5dj9UKaeLR2q)
                  padding: EdgeInsets.fromLTRB(
                      25 * fem, 15 * fem, 46 * fem, 56 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          // backm69 (149:1509)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 324 * fem, 41 * fem),
                          width: 35 * fem,
                          height: 35 * fem,
                          child: Image.asset(
                            'assets/page-2/images/back-HZT.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Container(
                        // appointmentrequestgU1 (149:1507)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 82 * fem, 23 * fem),
                        child: Text(
                          'Appointment Request',
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
                        // appointmentrequestsentsuccessf (149:1508)
                        margin: EdgeInsets.fromLTRB(
                            20 * fem, 0 * fem, 0 * fem, 20 * fem),
                        child: Text(
                          'Appointment request sent Successfully!!!',
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
                        // image20soP (149:1546)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 5 * fem, 22 * fem),
                        width: 120 * fem,
                        height: 120 * fem,
                        child: Image.asset(
                          'assets/page-2/images/image-20.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        // autogroup9juwPmj (5yQ5U1xmcNiAUAjoB69Juw)
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
                              // successful35b (149:1522)
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
                              // appointmentrequestsuccessfully (149:1524)
                              margin: EdgeInsets.fromLTRB(
                                  2 * fem, 0 * fem, 0 * fem, 24 * fem),
                              child: Text(
                                'Appointment request successfully delivered to ',
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 10 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2175 * ffem / fem,
                                  color: const Color(0xb2000000),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  // autogroupxlbjrYq (5yQ5k6LKNwSuyrBGM6xLbj)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 31 * fem),
                                  // width: double.infinity,
                                  height: 66 * fem,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // autogroupegvpz9F (5yQ5rkot5efXSsoNCdeGVP)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 20 * fem, 0 * fem),
                                        padding: EdgeInsets.fromLTRB(18 * fem,
                                            7 * fem, 18 * fem, 8 * fem),
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
                                          // doctorwithtabletandphonefmB (149:1536)
                                          child: SizedBox(
                                            width: 34 * fem,
                                            height: 51 * fem,
                                            child: Image.network(
                                              widget.careProviderModel
                                                      .profilePic ??
                                                  '',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // infocardBUd (149:1526)
                                        margin: EdgeInsets.fromLTRB(
                                            0 * fem, 1 * fem, 0 * fem, 2 * fem),
                                        height: double.infinity,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              // drstrangeuvR (149:1527)
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
                                              // certifiednursingassistantsRds (149:1528)
                                              margin: EdgeInsets.fromLTRB(
                                                  2 * fem,
                                                  0 * fem,
                                                  0 * fem,
                                                  0 * fem),
                                              child: Text(
                                                widget.careProviderModel
                                                        .jobTitle ??
                                                    '',
                                                style: SafeGoogleFont(
                                                  'Montserrat',
                                                  fontSize: 10 * ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.2175 * ffem / fem,
                                                  color:
                                                      const Color(0xb2000000),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5 * fem,
                                            ),
                                            Container(
                                              // autogroupmmmj7Fo (5yQ6311oz6LVRf4zkZMMmj)
                                              margin: EdgeInsets.fromLTRB(
                                                  1 * fem,
                                                  0 * fem,
                                                  0 * fem,
                                                  0 * fem),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    // starELR (149:1531)
                                                    width: 15 * fem,
                                                    height: 15 * fem,
                                                    child: Image.asset(
                                                      'assets/page-2/images/star-yt5.png',
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    // staraQH (149:1532)
                                                    width: 15 * fem,
                                                    height: 15 * fem,
                                                    child: Image.asset(
                                                      'assets/page-2/images/star-ywX.png',
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    // star7v1 (149:1533)
                                                    width: 15 * fem,
                                                    height: 15 * fem,
                                                    child: Image.asset(
                                                      'assets/page-2/images/star-c6d.png',
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    // star5M3 (149:1534)
                                                    width: 15 * fem,
                                                    height: 15 * fem,
                                                    child: Image.asset(
                                                      'assets/page-2/images/star-T7w.png',
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ),
                                                  Container(
                                                    // stardNZ (149:1530)
                                                    margin: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        0 * fem,
                                                        15 * fem,
                                                        0 * fem),
                                                    width: 15 * fem,
                                                    height: 15 * fem,
                                                    child: Image.asset(
                                                      'assets/page-2/images/star-DUV.png',
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ),
                                                  Text(
                                                    // xvd (149:1529)
                                                    '(1398)',
                                                    style: SafeGoogleFont(
                                                      'Montserrat',
                                                      fontSize: 10 * ffem,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      height:
                                                          1.2175 * ffem / fem,
                                                      color: const Color(
                                                          0xb2000000),
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
                              ],
                            ),
                            Container(
                              // chargesyouwillhavetopayuqs (149:1525)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 1 * fem, 12 * fem),
                              child: Text(
                                'Charges you will have to pay',
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
                              // pT3 (149:1523)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 1 * fem, 8 * fem),
                              child: Text(
                                '\$ ${widget.careProviderModel.charges}',
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
                              // autogroupyngqXMT (5yQ6LKrH1YJUqXgrmjYNgq)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 23 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  11 * fem, 10 * fem, 12 * fem, 8 * fem),
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
                                    // infoCCh (149:1541)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 11 * fem, 2 * fem),
                                    width: 15 * fem,
                                    height: 15 * fem,
                                    child: Image.asset(
                                      'assets/page-2/images/info-r6m.png',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Container(
                                    // onceacareprovideracceptsyourre (149:1542)
                                    constraints: BoxConstraints(
                                      maxWidth: 229 * fem,
                                    ),
                                    child: Text(
                                      'Once a care provider accepts your request,\nyou can proceed to make payment and avail\nof the services as arranged.',
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
                              onTap: () => navigate(
                                  context,
                                  PaymentMethod(
                                    careProviderModel: widget.careProviderModel,
                                    appointmentModel: widget.appointmentModel,
                                  )),
                              child: Container(
                                // autogrouphvmtPY5 (5yQ6TeyPyvSZ3rsa1chVmT)
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
                                    'Done',
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

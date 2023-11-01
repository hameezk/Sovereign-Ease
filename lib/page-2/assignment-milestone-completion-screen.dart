import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:myapp/models/appointment_model.dart';
import 'package:myapp/page-2/main-screen-pTj.dart';
import 'package:myapp/utils.dart';

class ServicesCompleted extends StatefulWidget {
  final AppointmentModel appointmentModel;
  const ServicesCompleted({super.key, required this.appointmentModel});

  @override
  State<ServicesCompleted> createState() => _ServicesCompletedState();
}

class _ServicesCompletedState extends State<ServicesCompleted> {
  bool isReCaptchaLoading = false;
  bool isReCaptchaCompleted = false;
  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: GestureDetector(
            child: Container(
              // assignmentmilestonecompletions (175:2283)
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xffecf1fa),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroup6rnyDtM (CpFyvVfmuWDzHVfP4m6Rny)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 29 * fem),
                    padding: EdgeInsets.fromLTRB(
                        25 * fem, 15 * fem, 25 * fem, 14 * fem),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xff7bcc70),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Container(
                            // back7yj (175:2285)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 18 * fem),
                            width: 35 * fem,
                            height: 35 * fem,
                            child: Image.asset(
                              'assets/page-2/images/back-vgR.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Container(
                          // servicescompletedT21 (175:2286)
                          margin: EdgeInsets.fromLTRB(
                              85 * fem, 0 * fem, 0 * fem, 0 * fem),
                          child: Text(
                            'Services Completed',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 20 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2175 * ffem / fem,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupgbl5kWu (CpFzJehXPZsa7K7AdVgbL5)
                    margin: EdgeInsets.fromLTRB(
                        45 * fem, 0 * fem, 45 * fem, 17 * fem),
                    width: double.infinity,
                    height: 709 * fem,
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(5 * fem),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x3f000000),
                          offset: Offset(1 * fem, 1 * fem),
                          blurRadius: 1.5 * fem,
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          // autogroup8enmCth (CpFzsy5Lu7xdSTDfu98EnM)
                          left: 28 * fem,
                          top: 0 * fem,
                          child: SizedBox(
                            width: 284 * fem,
                            height: 129 * fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // servicecompletiondetailsLED (175:2290)
                                  left: 0 * fem,
                                  top: 104 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 284 * fem,
                                      height: 25 * fem,
                                      child: Text(
                                        'Service Completion Details',
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 20 * ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.2175 * ffem / fem,
                                          color: const Color(0xb2000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // image21cSd (209:2657)
                                  left: 89 * fem,
                                  top: 0 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 104.26 * fem,
                                      height: 104.26 * fem,
                                      child: Image.asset(
                                        'assets/page-2/images/image-21.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // autogroupjzotJKT (CpG1bStEDeLav3y9e7JzoT)
                          left: 18 * fem,
                          top: 412 * fem,
                          child: SizedBox(
                            width: 245 * fem,
                            height: 19 * fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      // namep2u (175:2303)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 12 * fem, 2 * fem),
                                      width: 15 * fem,
                                      height: 15 * fem,
                                      child: Image.asset(
                                        'assets/page-2/images/name-DSH.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Container(
                                      // johncenaKVT (175:2291)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                      child: Text(
                                        widget.appointmentModel.bookedByName ??
                                            '',
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 15 * ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.2175 * ffem / fem,
                                          color: const Color(0xff7bcc70),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      // ageqCu (175:2304)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 12 * fem, 2 * fem),
                                      width: 15 * fem,
                                      height: 15 * fem,
                                      child: Image.asset(
                                        'assets/page-2/images/age-V3P.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Text(
                                      // kam (175:2295)
                                      '32',
                                      style: SafeGoogleFont(
                                        'Montserrat',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2175 * ffem / fem,
                                        color: const Color(0xff7bcc70),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // autogroupytwwgzD (CpG1orhDW21JKZpGCBYTww)
                          left: 18 * fem,
                          top: 444 * fem,
                          child: SizedBox(
                            width: 253 * fem,
                            height: 18 * fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // addressp4q (175:2302)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 12 * fem, 1 * fem),
                                  width: 15 * fem,
                                  height: 15 * fem,
                                  child: Image.asset(
                                    'assets/page-2/images/address-689.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Text(
                                  widget.appointmentModel.address ?? '',
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.5 * ffem / fem,
                                    color: const Color(0xff7bcc70),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // autogroup7abtFvq (CpG1yBm1HQukmogob87AbT)
                          left: 18 * fem,
                          top: 479 * fem,
                          child: SizedBox(
                            width: 303 * fem,
                            height: 18 * fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // phoneNkZ (175:2301)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 12 * fem, 1 * fem),
                                  width: 15 * fem,
                                  height: 15 * fem,
                                  child: Image.asset(
                                    'assets/page-2/images/phone-LDo.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Container(
                                  // WLy (175:2293)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 37 * fem, 0 * fem),
                                  child: Text(
                                    widget.appointmentModel.phoneNo ?? '',
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.5 * ffem / fem,
                                      color: const Color(0xff7bcc70),
                                    ),
                                  ),
                                ),
                                Container(
                                  // mailEGy (175:2300)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 12 * fem, 1 * fem),
                                  width: 15 * fem,
                                  height: 15 * fem,
                                  child: Image.asset(
                                    'assets/page-2/images/mail-MfF.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Text(
                                  // cenajgmailcomAAd (175:2294)
                                  'cena_j@gmail.com',
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.5 * ffem / fem,
                                    color: const Color(0xff7bcc70),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // buttonWEV (209:2673)
                          left: 110 * fem,
                          top: 673 * fem,
                          child: GestureDetector(
                            onTap: () => acceptJob(widget.appointmentModel),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(
                                  15 * fem, 5 * fem, 15 * fem, 5 * fem),
                              width: 120 * fem,
                              height: 20 * fem,
                              decoration: BoxDecoration(
                                color: const Color(0xffecf1fa),
                                borderRadius: BorderRadius.circular(5 * fem),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0x3f000000),
                                    offset: Offset(0 * fem, 1 * fem),
                                    blurRadius: 1 * fem,
                                  ),
                                ],
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // submitresponsemRK (175:2298)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 8 * fem, 0 * fem),
                                    child: Text(
                                      'Submit Response',
                                      style: SafeGoogleFont(
                                        'Montserrat',
                                        fontSize: 8 * ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.2175 * ffem / fem,
                                        color: const Color(0xff7bcc70),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    // donegoB (175:2305)
                                    width: 10 * fem,
                                    height: 10 * fem,
                                    child: Image.asset(
                                      'assets/page-2/images/done-e73.png',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // servicecategoryqAH (209:2642)
                          left: 25 * fem,
                          top: 150 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 134 * fem,
                              height: 19 * fem,
                              child: Text(
                                'Service Category',
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 15 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2175 * ffem / fem,
                                  color: const Color(0xb2000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // typesofservicesX37 (209:2643)
                          left: 26 * fem,
                          top: 243 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 136 * fem,
                              height: 19 * fem,
                              child: Text(
                                'Types of Services',
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 15 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2175 * ffem / fem,
                                  color: const Color(0xb2000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // autogroupma3jQch (CpG1LTKD93bi7jpRUAmA3j)
                          left: 25 * fem,
                          top: 335 * fem,
                          child: SizedBox(
                            width: 290 * fem,
                            height: 19 * fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // jobcompletedLmF (209:2654)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 125 * fem, 0 * fem),
                                  child: Text(
                                    'Job Completed',
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
                                  // autogroupzthjfHj (CpG1W7hn4GxtwdUGZHZTHj)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 1 * fem, 0 * fem, 3 * fem),
                                  padding: EdgeInsets.fromLTRB(
                                      23 * fem, 1 * fem, 2 * fem, 1 * fem),
                                  width: 45 * fem,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff009900),
                                    borderRadius:
                                        BorderRadius.circular(3 * fem),
                                  ),
                                  child: Align(
                                    // rectangle14yJR (209:2653)
                                    alignment: Alignment.centerRight,
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 13 * fem,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(2 * fem),
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // patientdetailsuhs (209:2659)
                          left: 25 * fem,
                          top: 386 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 117 * fem,
                              height: 19 * fem,
                              child: Text(
                                'Patient Details',
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 15 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2175 * ffem / fem,
                                  color: const Color(0xb2000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // autogroupvde9DCm (CpG2CRswQNjJ7SzBNdvdE9)
                          left: 18 * fem,
                          top: 509 * fem,
                          child: SizedBox(
                            width: 303 * fem,
                            height: 150 * fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogroup8569w8m (CpG2SvTnnDn5MHTx1K8569)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 19 * fem, 58 * fem),
                                  width: 143 * fem,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // captchafKf (209:2662)
                                        margin: EdgeInsets.fromLTRB(
                                            7 * fem, 0 * fem, 0 * fem, 7 * fem),
                                        child: Text(
                                          'Captcha',
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
                                        // autogroupdb4vaxR (CpG2aka5TMcF86KcnTdb4V)
                                        padding: EdgeInsets.fromLTRB(11 * fem,
                                            8 * fem, 12 * fem, 7 * fem),
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: const Color(0xffecf1fa),
                                          borderRadius:
                                              BorderRadius.circular(2 * fem),
                                          boxShadow: [
                                            BoxShadow(
                                              color: const Color(0x3f000000),
                                              offset: Offset(0 * fem, 1 * fem),
                                              blurRadius: 1 * fem,
                                            ),
                                          ],
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            SizedBox(
                                              // autogrouppjrbswX (CpG2fzvLLGNFW6sfwjpjRb)
                                              width: double.infinity,
                                              height: 18 * fem,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  GestureDetector(
                                                      onTap: () =>
                                                          completeRecaptcha(
                                                              context),
                                                      child: (isReCaptchaLoading)
                                                          ? Container(
                                                              // rectangle871q7f (209:2664)

                                                              width: 14 * fem,
                                                              height: 14 * fem,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(1 *
                                                                            fem),
                                                              ),
                                                              child:
                                                                  const CircularProgressIndicator(),
                                                            )
                                                          : (isReCaptchaCompleted)
                                                              ? Container(
                                                                  // rectangle871q7f (209:2664)
                                                                  margin: EdgeInsets
                                                                      .fromLTRB(
                                                                          0 *
                                                                              fem,
                                                                          2 *
                                                                              fem,
                                                                          87 *
                                                                              fem,
                                                                          0 * fem),
                                                                  width:
                                                                      14 * fem,
                                                                  height:
                                                                      14 * fem,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(1 *
                                                                            fem),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: Colors
                                                                          .blue,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      const Icon(
                                                                    Icons.done,
                                                                    color: Colors
                                                                        .blue,
                                                                    size: 10,
                                                                    weight: 9,
                                                                  ),
                                                                )
                                                              : Container(
                                                                  // rectangle871q7f (209:2664)
                                                                  margin: EdgeInsets
                                                                      .fromLTRB(
                                                                          0 *
                                                                              fem,
                                                                          2 *
                                                                              fem,
                                                                          87 *
                                                                              fem,
                                                                          0 * fem),
                                                                  width:
                                                                      14 * fem,
                                                                  height:
                                                                      14 * fem,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(1 *
                                                                            fem),
                                                                    border: Border.all(
                                                                        color: const Color(
                                                                            0xffb7b7b7)),
                                                                  ),
                                                                )),
                                                  SizedBox(
                                                    // autogroupygbjkkR (CpG2kad2wWCo8os7ifYgbj)
                                                    height: double.infinity,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          // image22JX3 (209:2666)
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  0 * fem,
                                                                  0 * fem,
                                                                  0 * fem,
                                                                  1 * fem),
                                                          width: 13 * fem,
                                                          height: 13 * fem,
                                                          child: Image.asset(
                                                            'assets/page-2/images/image-22.png',
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                        Text(
                                                          // recaptchaDe1 (209:2667)
                                                          'reCAPTCHA',
                                                          style: SafeGoogleFont(
                                                            'Montserrat',
                                                            fontSize: 3 * ffem,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            height: 1.2175 *
                                                                ffem /
                                                                fem,
                                                            color: const Color(
                                                                0xffa7b1c6),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              // privacytermsZC5 (209:2668)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  2 * fem,
                                                  0 * fem),
                                              child: Text(
                                                'Privacy.Terms',
                                                style: SafeGoogleFont(
                                                  'Montserrat',
                                                  fontSize: 2 * ffem,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.2175 * ffem / fem,
                                                  color:
                                                      const Color(0xffa7b1c6),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // autogroupwgyfsiZ (CpG3QtrXUbCp4ihCNxWGyF)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 15 * fem, 0 * fem, 16 * fem),
                                  width: 133 * fem,
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // additionalnotesos7 (209:2670)
                                        margin: EdgeInsets.fromLTRB(
                                            0 * fem, 0 * fem, 0 * fem, 8 * fem),
                                        child: Text(
                                          'Additional Notes',
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
                                        // autogroupndj18Pb (CpG3VZPRNHf3HqdU5RndJ1)
                                        padding: EdgeInsets.fromLTRB(
                                            3 * fem, 3 * fem, 3 * fem, 3 * fem),
                                        width: double.infinity,
                                        height: 92 * fem,
                                        decoration: BoxDecoration(
                                          color: const Color(0xffecf1fa),
                                          borderRadius:
                                              BorderRadius.circular(3 * fem),
                                          boxShadow: [
                                            BoxShadow(
                                              color: const Color(0x3f000000),
                                              offset: Offset(0 * fem, 1 * fem),
                                              blurRadius: 1 * fem,
                                            ),
                                          ],
                                        ),
                                        child: TextField(
                                          style: SafeGoogleFont(
                                            'Montserrat',
                                            fontSize: 8 * ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2175 * ffem / fem,
                                            color: const Color(0xffa7b1c6),
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
                        Positioned(
                          // autogroupojj7bHB (CpG13ToXFS6T5Wys9Aojj7)
                          left: 65 * fem,
                          top: 177 * fem,
                          child: Container(
                            width: 210 * fem,
                            height: 26 * fem,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xff7bcc70)),
                              borderRadius: BorderRadius.circular(2 * fem),
                            ),
                            child: Center(
                              child: Text(
                                'In-Home care services',
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 10 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2175 * ffem / fem,
                                  color: const Color(0xff7bcc70),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // autogroupasdxT4V (CpG1CNiLcXvVZh8GvPaSdX)
                          left: 65 * fem,
                          top: 270 * fem,
                          child: Container(
                            width: 210 * fem,
                            height: 26 * fem,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xff7bcc70)),
                              borderRadius: BorderRadius.circular(2 * fem),
                            ),
                            child: Center(
                              child: Text(
                                'Physical Therapy',
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 10 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2175 * ffem / fem,
                                  color: const Color(0xff7bcc70),
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
          ),
        ),
      ),
      bottomNavigationBar: bottomBarCareProvider(fem, ffem, context, 2),
    );
  }

  acceptJob(AppointmentModel appointmentModel) async {
    appointmentModel.isCompleted = true;
    await FirebaseFirestore.instance
        .collection("appointments")
        .doc(appointmentModel.appointmentId)
        .set(appointmentModel.toMap())
        .then((value) => navigate(context, const MainScreenCareProvider()));
    // .then((value) => navigate(context, const History()));
  }

  completeRecaptcha(BuildContext context) async {
    setState(() {
      isReCaptchaLoading = true;
    });
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      isReCaptchaLoading = false;
      isReCaptchaCompleted = true;
    });
  }
}

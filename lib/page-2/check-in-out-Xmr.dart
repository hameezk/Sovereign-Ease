import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:myapp/main.dart';
import 'package:myapp/utils.dart';

import '../models/appointment_model.dart';

class CheckInServiceProvider extends StatefulWidget {
  const CheckInServiceProvider({super.key});

  @override
  State<CheckInServiceProvider> createState() => _CheckInServiceProviderState();
}

class _CheckInServiceProviderState extends State<CheckInServiceProvider> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    List activeJobs = [];
    List pastJobs = [];

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Container(
              // checkinouteEc (653:1226)
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xffecf1fa),
              ),
              child: StreamBuilder<Object>(
                  stream: FirebaseFirestore.instance
                      .collection("appointments")
                      .where('bookedDoctorId',
                          isEqualTo: loggedinUserCareProvider!.uid)
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.active) {
                      if (snapshot.hasData) {
                        activeJobs = [];
                        pastJobs = [];
                        QuerySnapshot doctorsSnapshot =
                            snapshot.data as QuerySnapshot;
                        for (var element in doctorsSnapshot.docs) {
                          AppointmentModel appointmentModel =
                              AppointmentModel.fromMap(
                                  element.data() as Map<String, dynamic>);
                          if (appointmentModel.isAccepted == true &&
                              appointmentModel.isCompleted == false) {
                            activeJobs.add(appointmentModel);
                          } else if (appointmentModel.isAccepted == true &&
                              appointmentModel.isCompleted == true) {
                            pastJobs.add(appointmentModel);
                          }
                        }
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogroupqqpjxm6 (MxjSGY1nKkgdrJy1PtqQPJ)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 10 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  25 * fem, 15 * fem, 25 * fem, 16 * fem),
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
                                      // backTSx (653:1228)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                      width: 35 * fem,
                                      height: 35 * fem,
                                      child: Image.asset(
                                        'assets/page-2/images/back.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // checkincheckoutaXa (653:1229)
                                    margin: EdgeInsets.fromLTRB(
                                        75 * fem, 0 * fem, 0 * fem, 0 * fem),
                                    child: Text(
                                      'Check-in & Check-out',
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
                              // activejobfound5DS (655:1392)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 1 * fem, 2 * fem),
                              child: Text(
                                'Active Jobs',
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 15 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2175 * ffem / fem,
                                  color: const Color(0xff7bcc70),
                                ),
                              ),
                            ),
                            // buildActiveJobsCard(fem, ffem),
                            ListView.separated(
                              primary: false,
                              shrinkWrap: true,
                              itemCount: activeJobs.length,
                              itemBuilder: (context, index) {
                                return buildAppointmentCard(fem, ffem, true,
                                    'Active Job Details', activeJobs[index]);
                              },
                              separatorBuilder:
                                  (BuildContext context, int index) {
                                return const SizedBox(height: 00);
                              },
                            ),
                            Container(
                              // activejobfound5DS (655:1392)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 1 * fem, 2 * fem),
                              child: Text(
                                'Recent Jobs',
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 15 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2175 * ffem / fem,
                                  color: const Color(0xff7bcc70),
                                ),
                              ),
                            ),
                            // buildActiveJobsCard(fem, ffem),
                            ListView.separated(
                              primary: false,
                              shrinkWrap: true,
                              itemCount: activeJobs.length,
                              itemBuilder: (context, index) {
                                return buildAppointmentCard(fem, ffem, true,
                                    'Recent Job Details', activeJobs[index]);
                              },
                              separatorBuilder:
                                  (BuildContext context, int index) {
                                return const SizedBox(
                                  height: 0,
                                );
                              },
                            ),
                          ],
                        );
                      } else if (snapshot.hasError) {
                        return Center(
                          child: Text(snapshot.error.toString()),
                        );
                      } else {
                        return const Center(
                          child: Text("No Announcements"),
                        );
                      }
                    } else {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  }),
            ),
          ),
        ),
      ),
      bottomNavigationBar: bottomBar(fem, ffem, context, 2),
    );
  }

  buildAppointmentCard(double fem, double ffem, bool isActive, String title,
      AppointmentModel appointmentModel) {
    return Padding(
      padding: EdgeInsets.fromLTRB(32 * fem, 0 * fem, 32 * fem, 10 * fem),
      child: Container(
        // group18NXA (655:1607)
        margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 10 * fem),
        width: double.infinity,
        height: 381 * fem,
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
              // activejobdetailsQye (655:1560)
              left: 75 * fem,
              top: 4 * fem,
              child: Align(
                child: SizedBox(
                  width: 189 * fem,
                  height: 25 * fem,
                  child: Text(
                    'Active Job Details',
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
              // clientdetailsVkC (655:1561)
              left: 25 * fem,
              top: 51 * fem,
              child: Align(
                child: SizedBox(
                  width: 106 * fem,
                  height: 19 * fem,
                  child: Text(
                    'Client Details',
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
              // jobdetailsnzC (655:1562)
              left: 126 * fem,
              top: 195 * fem,
              child: Align(
                child: SizedBox(
                  width: 88 * fem,
                  height: 19 * fem,
                  child: Text(
                    'Job Details',
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
              // autogrouptlvchLU (Mxjjss1KxaVDCfzdMpTLvC)
              left: 25 * fem,
              top: 83 * fem,
              child: SizedBox(
                width: 245 * fem,
                height: 19 * fem,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Container(
                          // namepAC (655:1571)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 2 * fem),
                          width: 15 * fem,
                          height: 15 * fem,
                          child: Image.asset(
                            'assets/page-2/images/name.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        Container(
                          // johncenavj2 (655:1563)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 0 * fem),
                          child: Text(
                            appointmentModel.bookedByName ?? "",
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
                          // agepZW (655:1572)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 12 * fem, 2 * fem),
                          width: 15 * fem,
                          height: 15 * fem,
                          child: Image.asset(
                            'assets/page-2/images/age.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        Text(
                          // jwN (655:1567)
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
              // autogroup5eeth7W (Mxjk4h2crETxLLt3NZ5EEt)
              left: 25 * fem,
              top: 115 * fem,
              child: SizedBox(
                width: 253 * fem,
                height: 18 * fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // addressoRS (655:1570)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 12 * fem, 1 * fem),
                      width: 15 * fem,
                      height: 15 * fem,
                      child: Image.asset(
                        'assets/page-2/images/address.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    Text(
                      appointmentModel.address ?? "",
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
              // autogroup2m4cFYL (MxjkCSJiEugSWjntEA2M4c)
              left: 25 * fem,
              top: 150 * fem,
              child: SizedBox(
                width: 303 * fem,
                height: 18 * fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // phonexSk (655:1569)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 12 * fem, 1 * fem),
                      width: 15 * fem,
                      height: 15 * fem,
                      child: Image.asset(
                        'assets/page-2/images/phone.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      // 5nG (655:1565)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 37 * fem, 0 * fem),
                      child: Text(
                        appointmentModel.phoneNo ?? "",
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
                      // mail1R2 (655:1568)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 12 * fem, 1 * fem),
                      width: 15 * fem,
                      height: 15 * fem,
                      child: Image.asset(
                        'assets/page-2/images/mail.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    Text(
                      // cenajgmailcomYA4 (655:1566)
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
              // autogroupse8qsCL (MxjkPgUyYrjbcUQRrcSE8Q)
              left: 25 * fem,
              top: 225 * fem,
              child: SizedBox(
                width: 296 * fem,
                height: 60 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // servicecategoryByi (655:1575)
                      left: 10 * fem,
                      top: 10 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 92 * fem,
                          height: 13 * fem,
                          child: Text(
                            'Service Category:',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 10 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2175 * ffem / fem,
                              color: const Color(0xb2000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // typesofservicesg9n (655:1576)
                      left: 10 * fem,
                      top: 32 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 93 * fem,
                          height: 13 * fem,
                          child: Text(
                            'Types of Services:',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 10 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2175 * ffem / fem,
                              color: const Color(0xb2000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle37NYQ (655:1577)
                      left: 0 * fem,
                      top: 0 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 296 * fem,
                          height: 60 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2 * fem),
                              border:
                                  Border.all(color: const Color(0xff7bcc70)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // inhomecareservices5xc (655:1579)
                      left: 112 * fem,
                      top: 10 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 115 * fem,
                          height: 13 * fem,
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
                      // physicaltherapyBkk (655:1580)
                      left: 114 * fem,
                      top: 32 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 87 * fem,
                          height: 13 * fem,
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
            ),
            Positioned(
              // autogroupg7hzHHz (Mxjka6MJ2Ddvn5ZiFdG7hz)
              left: 75 * fem,
              top: 323 * fem,
              child: Container(
                padding:
                    EdgeInsets.fromLTRB(11 * fem, 7 * fem, 10 * fem, 8 * fem),
                width: 190 * fem,
                height: 30 * fem,
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
                      // checkinandcheckoutYUp (655:1586)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 1 * fem, 16 * fem, 0 * fem),
                      child: Text(
                        'Check-in and Check-out',
                        style: SafeGoogleFont(
                          'Montserrat',
                          fontSize: 11 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2175 * ffem / fem,
                          color: const Color(0xff7bcc70),
                        ),
                      ),
                    ),
                    SizedBox(
                      // groupGQp (655:1599)
                      width: 15 * fem,
                      height: 15 * fem,
                      child: Image.asset(
                        'assets/page-2/images/group-5GL.png',
                        width: 15 * fem,
                        height: 15 * fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

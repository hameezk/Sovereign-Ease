import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:myapp/main.dart';
import 'package:myapp/models/appointment_model.dart';
import 'package:myapp/page-2/assignment-milestone-completion-screen.dart';
import 'package:myapp/page-2/maps.dart';
import 'package:myapp/utils.dart';

class RequestsCareProvider extends StatefulWidget {
  const RequestsCareProvider({super.key});

  @override
  State<RequestsCareProvider> createState() => _RequestsCareProviderState();
}

class _RequestsCareProviderState extends State<RequestsCareProvider> {
  bool isPending = true;
  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      backgroundColor: const Color(0xffecf1fa),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: primaryColorLight,
        elevation: 0,
        leading: Builder(builder: (context) {
          return Container(
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
        title: Text(
          'Pending Service Requests',
          style: SafeGoogleFont(
            'Montserrat',
            fontSize: 20 * ffem,
            fontWeight: FontWeight.w700,
            height: 1.2175 * ffem / fem,
            color: const Color(0xffffffff),
          ),
        ),
      ),
      body: SingleChildScrollView(
        primary: true,
        child: SizedBox(
          width: double.infinity,
          child: Container(
            // offersAfB (149:1753)
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xffecf1fa),
            ),
            child: Column(
              children: [
                GestureDetector(
                  child: Container(
                    // autogroupbd4uqVs (CpFj3696JishsttMSUbD4u)
                    margin: EdgeInsets.fromLTRB(
                        45 * fem, 20 * fem, 45 * fem, 10 * fem),
                    padding: EdgeInsets.fromLTRB(
                        23 * fem, 2 * fem, 21 * fem, 1.5 * fem),
                    width: double.infinity,
                    height: 35 * fem,
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () => setState(() {
                            isPending = !isPending;
                          }),
                          child: Container(
                            // autogroupowmb6gh (CpFj95y6jmArbcwqueowmb)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 7 * fem, 35 * fem, 4.5 * fem),
                            height: double.infinity,
                            child: Container(
                              // pendingpsb (209:3397)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 1 * fem),
                              child: Text(
                                'Pending',
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 15 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2175 * ffem / fem,
                                  color: isPending
                                      ? primaryColor
                                      : primaryColorLight,
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => setState(() {
                            isPending = !isPending;
                          }),
                          child: Container(
                            // acceptedHFP (209:3398)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 1.5 * fem, 0 * fem, 0 * fem),
                            child: Text(
                              'Accepted',
                              style: SafeGoogleFont(
                                'Montserrat',
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.2175 * ffem / fem,
                                color: isPending
                                    ? primaryColorLight
                                    : primaryColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                (isPending)
                    ? buildPending(fem, ffem)
                    : Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: StreamBuilder(
                          stream: FirebaseFirestore.instance
                              .collection("appointments")
                              .where('bookedDoctorId',
                                  isEqualTo: loggedinUserCareProvider!.uid)
                              .where('isAccepted', isEqualTo: true)
                              .where('isCompleted', isEqualTo: false)
                              .snapshots(),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.active) {
                              if (snapshot.hasData) {
                                QuerySnapshot appointmentSnapshot =
                                    snapshot.data as QuerySnapshot;

                                return ListView.separated(
                                  primary: false,
                                  shrinkWrap: true,
                                  itemCount: appointmentSnapshot.docs.length,
                                  itemBuilder: (context, index) {
                                    AppointmentModel appointmentModel =
                                        AppointmentModel.fromMap(
                                            appointmentSnapshot.docs[index]
                                                    .data()
                                                as Map<String, dynamic>);
                                    return buildAccepetedServiceCard(
                                        context, fem, ffem, appointmentModel);
                                  },
                                  separatorBuilder:
                                      (BuildContext context, int index) {
                                    return SizedBox(
                                      height: 15 * fem,
                                    );
                                  },
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
                          },
                        ),
                      ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: bottomBarCareProvider(fem, ffem, context, 2),
    );
  }

  buildAccepetedServiceCard(BuildContext context, double fem, double ffem,
      AppointmentModel appointmentModel) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
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
        child: GestureDetector(
          onTap: () => navigate(
              context,
              ServicesCompleted(
                appointmentModel: appointmentModel,
              )),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  // autogroup1asjqoX (CpFwRQAsa8WpiJz2tv1Asj)
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 180 * fem,
                  child: Stack(
                    children: [
                      Positioned(
                        // servicerequestdetailsmx5 (209:3407)
                        left: 46 * fem,
                        top: 7 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 248 * fem,
                            height: 25 * fem,
                            child: Text(
                              'Service Request Details',
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
                        // autogroup8ntsrTj (CpFvkW823qD2dWYAmp8nTs)
                        left: 25 * fem,
                        top: 45 * fem,
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
                                    // nameyYM (209:3420)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 12 * fem, 2 * fem),
                                    width: 15 * fem,
                                    height: 15 * fem,
                                    child: Image.asset(
                                      'assets/page-2/images/name-FgD.png',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Container(
                                    // johncenatfK (209:3408)
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
                                    // ageDBo (209:3421)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 12 * fem, 2 * fem),
                                    width: 15 * fem,
                                    height: 15 * fem,
                                    child: Image.asset(
                                      'assets/page-2/images/age-N6d.png',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Text(
                                    // 9LM (209:3412)
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
                        // autogroup95xmhMs (CpFvukMcYmVoVLTtFD95xm)
                        left: 25 * fem,
                        top: 77 * fem,
                        child: SizedBox(
                          width: 253 * fem,
                          height: 18 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // addressdFX (209:3419)
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
                        // autogrouppr13V2q (CpFw2VfNXwL6Yn2p2HPR13)
                        left: 25 * fem,
                        top: 112 * fem,
                        child: SizedBox(
                          width: 303 * fem,
                          height: 18 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // phonePP7 (209:3418)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 12 * fem, 1 * fem),
                                width: 15 * fem,
                                height: 15 * fem,
                                child: Image.asset(
                                  'assets/page-2/images/phone-ZmK.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Container(
                                // Wid (209:3410)
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
                                // maildoF (209:3417)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 12 * fem, 1 * fem),
                                width: 15 * fem,
                                height: 15 * fem,
                                child: Image.asset(
                                  'assets/page-2/images/mail-Dus.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Text(
                                // cenajgmailcomNVw (209:3411)
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
                        // locationKRB (209:3498)
                        left: 144 * fem,
                        top: 155 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 52 * fem,
                            height: 18 * fem,
                            child: Text(
                              'Location',
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.5 * ffem / fem,
                                color: const Color(0xff7bcc70),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // autogroup1jgdEY9 (CpFwAVS3mzPdWQn8eX1jGd)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 5 * fem),
                  padding: EdgeInsets.fromLTRB(
                      23.5 * fem, 19.5 * fem, 23.5 * fem, 38.5 * fem),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/page-2/images/image-40-bg.png',
                      ),
                    ),
                  ),
                  child: Align(
                    // vector104XGM (209:3501)
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 200 * fem,
                      child: ShowMap(
                        appointmentModel: [appointmentModel],
                      ),
                      //     Image.asset(
                      //   'assets/images/maps.png',
                      //   width: 177.5 * fem,
                      //   height: 157 * fem,
                      // ),
                    ),
                  ),
                ),
                // Container(
                //   // autogroupjgsm3Vb (CpFwF58kPEEB97maRSjgSm)
                //   margin: EdgeInsets.fromLTRB(125 * fem, 0 * fem, 126 * fem, 0 * fem),
                //   padding: EdgeInsets.fromLTRB(11 * fem, 5 * fem, 11 * fem, 5 * fem),
                //   width: double.infinity,
                //   decoration: BoxDecoration(
                //     color: const Color(0xffecf1fa),
                //     borderRadius: BorderRadius.circular(5 * fem),
                //     boxShadow: [
                //       BoxShadow(
                //         color: const Color(0x3f000000),
                //         offset: Offset(0 * fem, 1 * fem),
                //         blurRadius: 1 * fem,
                //       ),
                //     ],
                //   ),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       Container(
                //         // openinmapv3b (209:3503)
                //         margin:
                //             EdgeInsets.fromLTRB(0 * fem, 0 * fem, 4 * fem, 0 * fem),
                //         child: Text(
                //           'Open in Map',
                //           style: SafeGoogleFont(
                //             'Montserrat',
                //             fontSize: 8 * ffem,
                //             fontWeight: FontWeight.w500,
                //             height: 1.2175 * ffem / fem,
                //             color: const Color(0xff7bcc70),
                //           ),
                //         ),
                //       ),
                //       // Container(
                //       //   // doneeEV (209:3504)
                //       //   width: 10 * fem,
                //       //   height: 10 * fem,
                //       //   child: Image.asset(
                //       //     'assets/page-2/images/done-ic1.png',
                //       //     fit: BoxFit.contain,
                //       //   ),
                //       // ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  buildPending(double fem, double ffem) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          // autogroupuxjtozy (5yRRDNFPqqzoVSGmusUxjT)
          padding: EdgeInsets.fromLTRB(45 * fem, 10 * fem, 45 * fem, 15 * fem),
          // width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection("appointments")
                    .where('bookedDoctorId',
                        isEqualTo: loggedinUserCareProvider!.uid)
                    .where('isAccepted', isEqualTo: false)
                              .where('isCompleted', isEqualTo: false)
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.active) {
                    if (snapshot.hasData) {
                      QuerySnapshot appointmentSnapshot =
                          snapshot.data as QuerySnapshot;

                      return ListView.separated(
                        shrinkWrap: true,
                        itemCount: appointmentSnapshot.docs.length,
                        itemBuilder: (context, index) {
                          AppointmentModel appointmentModel =
                              AppointmentModel.fromMap(
                                  appointmentSnapshot.docs[index].data()
                                      as Map<String, dynamic>);
                          return buildServiceCard(fem, ffem, appointmentModel);
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            height: 15 * fem,
                          );
                        },
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
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  buildServiceCard(double fem, double ffem, AppointmentModel appointmentModel) {
    return Container(
      // requestcardXvy (149:1899)
      padding: EdgeInsets.fromLTRB(25 * fem, 7 * fem, 12 * fem, 17 * fem),
      width: double.infinity,
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // jobrequestdetailsp9P (149:1760)
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 14 * fem, 13 * fem),
            child: Text(
              'Job Request Details',
              style: SafeGoogleFont(
                'Montserrat',
                fontSize: 20 * ffem,
                fontWeight: FontWeight.w700,
                height: 1.2175 * ffem / fem,
                color: const Color(0xb2000000),
              ),
            ),
          ),
          Container(
            // autogroupvse9vTK (5yRRh6xBLes84v3vL4VsE9)
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 58 * fem, 13 * fem),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // namerbs (149:1893)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 12 * fem, 2 * fem),
                  width: 15 * fem,
                  height: 15 * fem,
                  child: Image.asset(
                    'assets/page-2/images/name.png',
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  width: 120,
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
                  child: Text(
                    appointmentModel.bookedByName ?? '',
                    overflow: TextOverflow.fade,
                    style: SafeGoogleFont(
                      'Montserrat',
                      fontSize: 15 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2175 * ffem / fem,
                      color: const Color(0xff7bcc70),
                    ),
                  ),
                ),
                Container(
                  // ageVuj (149:1894)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 12 * fem, 2 * fem),
                  width: 15 * fem,
                  height: 15 * fem,
                  child: Image.asset(
                    'assets/page-2/images/age-N6d.png',
                    fit: BoxFit.contain,
                  ),
                ),
                Text(
                  // Dqj (149:1895)
                  '22',
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
          ),
          Container(
            // autogroupy4zxyK7 (5yRS2Lu7teyp8HQnakY4ZX)
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 50 * fem, 17 * fem),
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // addresshku (149:1892)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 12 * fem, 1 * fem),
                  width: 15 * fem,
                  height: 15 * fem,
                  child: Image.asset(
                    'assets/page-2/images/address.png',
                    fit: BoxFit.contain,
                  ),
                ),
                Text(
                  // mainstreettampafl33602usaDjF (149:1896)
                  appointmentModel.address ?? '',

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
          Container(
            // autogroupyo1kwQM (5yRS8kt6jzMNp5CQfeYo1K)
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 9 * fem),
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // phonesYu (149:1891)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 12 * fem, 1 * fem),
                  width: 15 * fem,
                  height: 15 * fem,
                  child: Image.asset(
                    'assets/page-2/images/phone-ZmK.png',
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  // 19K (149:1897)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 37 * fem, 0 * fem),
                  child: Text(
                    '+305 409 5998',
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
                  // mailKfo (149:1890)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 12 * fem, 1 * fem),
                  width: 15 * fem,
                  height: 15 * fem,
                  child: Image.asset(
                    'assets/page-2/images/mail-Dus.png',
                    fit: BoxFit.contain,
                  ),
                ),
                Text(
                  // cenajgmailcom361 (149:1898)
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
          Container(
            // autogroupsu4maLq (5yRSHkd7PYo6tfHeNQsu4M)
            margin: EdgeInsets.fromLTRB(45 * fem, 0 * fem, 58 * fem, 0 * fem),
            width: double.infinity,
            height: 20 * fem,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => rejectJob(appointmentModel),
                  child: Container(
                    // autogroup4cuzJXj (5yRSRqDyv4UKShynvC4cUZ)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 50 * fem, 0 * fem),
                    padding: EdgeInsets.fromLTRB(
                        15 * fem, 5 * fem, 14 * fem, 5 * fem),
                    height: double.infinity,
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
                          // rejecty85 (149:1769)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 10 * fem, 0 * fem),
                          child: Text(
                            'Reject',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 8 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.2175 * ffem / fem,
                              color: const Color(0xffeb3223),
                            ),
                          ),
                        ),
                        SizedBox(
                          // closeVMK (149:1858)
                          width: 10 * fem,
                          height: 10 * fem,
                          child: Image.asset(
                            'assets/page-2/images/close-Z5T.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => acceptJob(appointmentModel),
                  child: Container(
                    // autogroup8xyrp8h (5yRSWuurE3zxdteCEP8xYR)
                    padding: EdgeInsets.fromLTRB(
                        13 * fem, 5 * fem, 13 * fem, 5 * fem),
                    height: double.infinity,
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
                          // accepthTP (149:1768)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 10 * fem, 0 * fem),
                          child: Text(
                            'Accept',
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
                          // done2Vf (149:1856)
                          width: 10 * fem,
                          height: 10 * fem,
                          child: Image.asset(
                            'assets/page-2/images/done-g9w.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  acceptJob(AppointmentModel appointmentModel) async {
    appointmentModel.isAccepted = true;
    await FirebaseFirestore.instance
        .collection("appointments")
        .doc(appointmentModel.appointmentId)
        .set(appointmentModel.toMap())
        .then((value) => setState((() {
              isPending = false;
            })));
  }

  rejectJob(AppointmentModel appointmentModel) {}
}

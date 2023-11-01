import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:myapp/helpers/ui_helper.dart';
import 'package:myapp/main.dart';
import 'package:myapp/models/appointment_model.dart';
import 'package:myapp/utils.dart';

class CheckInCheckOutCleint extends StatefulWidget {
  const CheckInCheckOutCleint({super.key});

  @override
  State<CheckInCheckOutCleint> createState() => _CheckInCheckOutCleintState();
}

class _CheckInCheckOutCleintState extends State<CheckInCheckOutCleint> {
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
                      .where('bookedById', isEqualTo: loggedinUser!.uid)
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
    return GestureDetector(
      // onTap: () => navigate(
      //     context,
      //     CheckInCleintDetails(
      //       appointmentModel: appointmentModel,
      //     )),
      child: SizedBox(
        // autogroupgtma2Ka (MxjSWXcTzr3KXfmpVJgTMa)
        width: double.infinity,
        height: 201 * fem,
        child: Stack(
          children: [
            Positioned(
              // group17N8Y (655:1440)
              left: 45 * fem,
              top: 0 * fem,
              child: Container(
                padding:
                    EdgeInsets.fromLTRB(25 * fem, 5 * fem, 10 * fem, 14 * fem),
                width: 340 * fem,
                height: 176 * fem,
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
                      // recentjobdetailscYg (655:1442)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 16 * fem, 8 * fem),
                      child: Text(
                        title,
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
                      // clientdetailsXQk (655:1443)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 199 * fem, 13 * fem),
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
                    Container(
                      // autogrouphvjgSnc (MxjSnBq3M7hf5HVA3bhVJG)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 60 * fem, 13 * fem),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // nameBkC (655:1448)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 12 * fem, 2 * fem),
                            width: 15 * fem,
                            height: 15 * fem,
                            child: Image.asset(
                              'assets/page-2/images/name.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          Container(
                            // johncena6sA (655:1444)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 90 * fem, 0 * fem),
                            child: Text(
                              appointmentModel.bookedDoctorName ?? "",
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
                            // agedMJ (655:1449)
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
                            // MHJ (655:1446)
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
                    ),
                    Container(
                      // autogroupgctah6G (MxjSvgatHvTHbPuSD6gCTa)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 52 * fem, 9 * fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // addressE6C (655:1447)
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
                            // mainstreettampafl33602usakqE (655:1445)
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
                    Container(
                      // autogroup1jtw6PJ (MxjT2r5HHsyoVwraXN1jTW)
                      margin: EdgeInsets.fromLTRB(
                          234 * fem, 0 * fem, 0 * fem, 0 * fem),
                      padding: EdgeInsets.fromLTRB(
                          13 * fem, 5 * fem, 12 * fem, 5 * fem),
                      width: double.infinity,
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
                      child: GestureDetector(
                        onTap: () => deleteAppointment(appointmentModel),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () => deleteAppointment(appointmentModel),
                              child: Container(
                                // deleteAtx (655:1452)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 9 * fem, 0 * fem),
                                child: Text(
                                  'Delete',
                                  style: SafeGoogleFont(
                                    'Montserrat',
                                    fontSize: 8 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.2175 * ffem / fem,
                                    color: const Color(0xffeb3223),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              // layer26nc (655:1453)
                              width: 10 * fem,
                              height: 10 * fem,
                              child: Image.asset(
                                'assets/images/delete.png',
                                width: 10 * fem,
                                height: 10 * fem,
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
          ],
        ),
      ),
    );
  }

  deleteAppointment(AppointmentModel appointmentModel) {
    FirebaseFirestore.instance
        .collection('appointments')
        .doc(appointmentModel.appointmentId)
        .delete()
        .then((value) =>
            showCustomSnackbar(context: context, content: 'Job Deleted!'));
  }
}

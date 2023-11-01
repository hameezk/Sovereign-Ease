// ignore_for_file: avoid_unnecessary_containers

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';

import '../models/care_provider_model.dart';
import 'doctor-info.dart';

class CareProviders extends StatelessWidget {
  const CareProviders({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: appBar(fem),
      body: SizedBox(
        width: double.infinity,
        child: Container(
          // careproviders1rZ (116:786)
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xffecf1fa),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Container(
              //   // autogroup77gmwER (5yQk4Qf3kQ5XV6CkZc77GM)
              //   padding: EdgeInsets.fromLTRB(
              //       25 * fem, 15 * fem, 45 * fem, 11 * fem),
              //   width: double.infinity,
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Container(
              //         // autogroupvxukmz9 (5yQYzZRrzFD5KfsaafVXuK)
              //         margin: EdgeInsets.fromLTRB(
              //             20 * fem, 0 * fem, 0 * fem, 0 * fem),
              //         padding: EdgeInsets.fromLTRB(
              //             10 * fem, 10 * fem, 10 * fem, 10 * fem),
              //         decoration: BoxDecoration(
              //           color: const Color(0xffffffff),
              //           borderRadius: BorderRadius.circular(5 * fem),
              //         ),
              //         child: Row(
              //           crossAxisAlignment: CrossAxisAlignment.center,
              //           children: [
              //             Container(
              //               // searchrkh (116:790)
              //               margin: EdgeInsets.fromLTRB(
              //                   0 * fem, 0 * fem, 22 * fem, 0 * fem),
              //               width: 15 * fem,
              //               height: 15 * fem,
              //               child: Image.asset(
              //                 'assets/page-2/images/search-zkh.png',
              //                 fit: BoxFit.contain,
              //               ),
              //             ),
              //             Container(
              //               // searchcareproviderawb (116:792)
              //               margin: EdgeInsets.fromLTRB(
              //                   0 * fem, 0 * fem, 156 * fem, 0 * fem),
              //               child: Text(
              //                 'Search Care Provider....',
              //                 style: SafeGoogleFont(
              //                   'Poppins',
              //                   fontSize: 10 * ffem,
              //                   fontWeight: FontWeight.w300,
              //                   height: 1.5 * ffem / fem,
              //                   color: const Color(0x59000000),
              //                 ),
              //               ),
              //             ),
              //             SizedBox(
              //               // expandarrowtBb (116:853)
              //               width: 15 * fem,
              //               height: 15 * fem,
              //               child: Image.asset(
              //                 'assets/page-2/images/expand-arrow-T4m.png',
              //                 fit: BoxFit.contain,
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),

              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.7,
                child: Expanded(
                  // autogroupzt8yXrH (5yPsqSB8Kt4S8VuuPJzt8y)
                  // width: double.infinity,
                  // height: 548 * fem,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
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
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: StreamBuilder<Object>(
                            stream: FirebaseFirestore.instance
                                .collection("staffMembers")
                                // .where('filter', isEqualTo: 'Apartments')
                                .snapshots(),
                            builder: (context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.active) {
                                if (snapshot.hasData) {
                                  QuerySnapshot doctorsSnapshot =
                                      snapshot.data as QuerySnapshot;

                                  return ListView.builder(
                                    itemCount: doctorsSnapshot.docs.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      CareProviderModel careProviderModel =
                                          CareProviderModel.fromMap(
                                              doctorsSnapshot.docs[index].data()
                                                  as Map<String, dynamic>);
                                      return buildDoctorCard(
                                          fem, ffem, careProviderModel);
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
                            }),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottomBar(fem, ffem, context, 0),
    );
  }

  buildDoctorCard(
      double fem, double ffem, CareProviderModel careProviderModel) {
    return Builder(builder: (context) {
      return GestureDetector(
        onTap: () => navigate(
            context,
            DoctorInfo(
              careProviderModel: careProviderModel,
            )),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 0),
          child: Container(
            // property1defaultpcq (144:16)
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 17 * fem),
            padding: EdgeInsets.fromLTRB(4 * fem, 4 * fem, 4 * fem, 4 * fem),
            width: double.infinity,
            height: 92 * fem,
            decoration: BoxDecoration(
              color: const Color(0xffecf1fa),
              borderRadius: BorderRadius.circular(5 * fem),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x3f000000),
                  offset: Offset(1 * fem, 1 * fem),
                  blurRadius: 1.5 * fem,
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // autogroupcqhotch (5yPmUnS4Ls745E6sR4cQHo)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 4 * fem, 0 * fem, 0 * fem),
                  padding:
                      EdgeInsets.fromLTRB(7 * fem, 7 * fem, 7 * fem, 7 * fem),
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(5 * fem),
                  ),
                  child: Center(
                    // doctormaleskintype2bn1 (112:95)
                    child: SizedBox(
                      width: 46 * fem,
                      height: 46 * fem,
                      child: Image.network(
                        careProviderModel.profilePic ?? '',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20 * fem,
                ),
                Container(
                  // autogroupsiphJgR (5yPmcN3mAd6B4o84RaSipH)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 4 * fem, 0 * fem, 0 * fem),
                  width: 170 * fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // autogroupyqbkSGq (5yPmomtR3VNhMMdFu7yQBK)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 3 * fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // drstrangeyGm (112:82)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 6 * fem, 0 * fem),
                              child: Text(
                                'Dr. ${careProviderModel.firstName} ${careProviderModel.lastName}',
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2175 * ffem / fem,
                                  color: const Color(0xb2000000),
                                ),
                              ),
                            ),
                            Container(
                              // HoF (144:15)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 6 * fem, 0 * fem, 0 * fem),
                              child: RichText(
                                text: TextSpan(
                                  style: SafeGoogleFont(
                                    'Montserrat',
                                    fontSize: 10 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2175 * ffem / fem,
                                    color: const Color(0xb2000000),
                                  ),
                                  children: [
                                    const TextSpan(
                                      text: '(',
                                    ),
                                    TextSpan(
                                      text: '\$',
                                      style: SafeGoogleFont(
                                        'Montserrat',
                                        fontSize: 10 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2175 * ffem / fem,
                                        color: const Color(0xff7bcc70),
                                      ),
                                    ),
                                    TextSpan(
                                      text: careProviderModel.charges ?? '1200',
                                      style: SafeGoogleFont(
                                        'Montserrat',
                                        fontSize: 10 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2175 * ffem / fem,
                                        color: const Color(0xff7bcc70),
                                      ),
                                    ),
                                    const TextSpan(
                                      text: ')',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // certifiednursingassistantskqF (112:83)
                        margin: EdgeInsets.fromLTRB(
                            1 * fem, 0 * fem, 0 * fem, 4 * fem),
                        child: Text(
                          careProviderModel.jobTitle ?? '',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 10 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2175 * ffem / fem,
                            color: const Color(0xb2000000),
                          ),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            // staroYd (112:85)
                            width: 15 * fem,
                            height: 15 * fem,
                            child: Image.asset(
                              'assets/page-2/images/star-UoT.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(
                            // starubf (112:88)
                            width: 15 * fem,
                            height: 15 * fem,
                            child: Image.asset(
                              'assets/page-2/images/star-obF.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(
                            // starTNH (112:89)
                            width: 15 * fem,
                            height: 15 * fem,
                            child: Image.asset(
                              'assets/page-2/images/star-k73.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(
                            // starCKs (112:90)
                            width: 15 * fem,
                            height: 15 * fem,
                            child: Image.asset(
                              'assets/page-2/images/star-BXF.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          Container(
                            // stark6V (112:86)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 5 * fem, 0 * fem),
                            width: 15 * fem,
                            height: 15 * fem,
                            child: Image.asset(
                              'assets/page-2/images/star-5eH.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          Text(
                            // HMK (112:99)
                            '(1398)',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 10 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2175 * ffem / fem,
                              color: const Color(0xb2000000),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20 * fem,
                ),
                SizedBox(
                  // autogrouphwqt241 (5yPnDgNFVBwcdqvPrHHwqT)
                  width: 45 * fem,
                  height: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // autogrouppteuAR7 (5yPnKWXsMK1QAk6EUNPtEu)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 29 * fem),
                        padding: EdgeInsets.fromLTRB(
                            2 * fem, 2 * fem, 3 * fem, 3 * fem),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(2 * fem),
                        ),
                        child: Center(
                          // addbookmarkURo (112:98)
                          child: SizedBox(
                            width: 15 * fem,
                            height: 15 * fem,
                            child: Image.asset(
                              'assets/page-2/images/add-bookmark-pmF.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // autogroup4ejs1Aq (5yPnNbH4rHmf824odW4ejs)
                        width: double.infinity,
                        height: 15 * fem,
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xff7bcc70)),
                          borderRadius: BorderRadius.circular(2 * fem),
                        ),
                        child: Center(
                          child: Text(
                            'Open',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 8 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2175 * ffem / fem,
                              color: const Color(0xff7bcc70),
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
      );
    });
  }
}

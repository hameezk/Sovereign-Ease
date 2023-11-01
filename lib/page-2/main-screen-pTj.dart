import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:myapp/main.dart';
import 'package:myapp/models/care_provider_model.dart';
import 'package:myapp/page-2/doctor-info.dart';
import 'package:myapp/utils.dart';

class MainScreenCareProvider extends StatefulWidget {
  const MainScreenCareProvider({super.key});

  @override
  State<MainScreenCareProvider> createState() => _MainScreenCareProviderState();
}

class _MainScreenCareProviderState extends State<MainScreenCareProvider> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Container(
              // mainscreenpxZ (149:1314)
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                color: Color(0xffecf1fa),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupgdpxxJ5 (5yPuZtHkZJ1hgPvNjWgDPX)
                    padding: EdgeInsets.fromLTRB(
                        25 * fem, 15 * fem, 45 * fem, 19 * fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Container(
                            // backFny (149:1352)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 11 * fem),
                            width: 35 * fem,
                            height: 35 * fem,
                            child: Image.asset(
                              'assets/page-2/images/back.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Container(
                          // helloZof (149:1315)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 10 * fem),
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
                        Container(
                          // autogroupeg5frnm (5yPru3a62EKfgueMZ1EG5f)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 22 * fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // randarosiPGu (149:1316)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 182 * fem, 0 * fem),
                                child: Text(
                                  '${loggedinUserCareProvider!.firstName} ${loggedinUserCareProvider!.lastName}',
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
                                // maskgrouphYV (149:1328)
                                width: 30 * fem,
                                height: 30 * fem,
                                child: Image.asset(
                                  'assets/page-2/images/mask-group-H4m.png',
                                  width: 30 * fem,
                                  height: 30 * fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupoge5dBF (5yPsDcsUJZWtzyScRLoGE5)
                          margin: EdgeInsets.fromLTRB(
                              20 * fem, 0 * fem, 0 * fem, 36 * fem),
                          width: 340 * fem,
                          height: 151 * fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // rectangle19L5f (149:1322)
                                left: 0 * fem,
                                top: 0 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 340 * fem,
                                    height: 139 * fem,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(5 * fem),
                                        color: const Color(0xff7bcc70),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // pendingjobrequestozq (149:1323)
                                left: 21 * fem,
                                top: 38 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 185 * fem,
                                    height: 61 * fem,
                                    child: Text(
                                      'Pending\nJob Request!!!',
                                      style: SafeGoogleFont(
                                        'Montserrat',
                                        fontSize: 25 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2175 * ffem / fem,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // ellipse10gHw (149:1324)
                                left: 238 * fem,
                                top: 34 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 69 * fem,
                                    height: 69 * fem,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(34.5 * fem),
                                        color: const Color(0xffffffff),
                                        boxShadow: [
                                          BoxShadow(
                                            color: const Color(0x3f000000),
                                            offset: Offset(0 * fem, 3 * fem),
                                            blurRadius: 2.5 * fem,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // rectangle20wjf (149:1326)
                                left: 90 * fem,
                                top: 126 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 160 * fem,
                                    height: 25 * fem,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(3 * fem),
                                        color: const Color(0xffffffff),
                                        boxShadow: [
                                          BoxShadow(
                                            color: const Color(0x3f000000),
                                            offset: Offset(0 * fem, 2 * fem),
                                            blurRadius: 2.5 * fem,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // seeallrequestspYZ (149:1327)
                                left: 129 * fem,
                                top: 133 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 81 * fem,
                                    height: 13 * fem,
                                    child: Text(
                                      'See all requests',
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
                                // notification1V8u (175:1977)
                                left: 234 * fem,
                                top: 25 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 77 * fem,
                                    height: 77 * fem,
                                    child: Image.asset(
                                      'assets/page-2/images/notification-1.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          // otherspecialistsbhj (175:1982)
                          'Other specialists',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2175 * ffem / fem,
                            color: const Color(0xb2000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
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
                        child: StreamBuilder<Object>(
                            stream: FirebaseFirestore.instance
                                .collection("staffMembers")
                                .where('uid',
                                    isNotEqualTo: loggedinUserCareProvider!.uid)
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
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: bottomBarCareProvider(fem, ffem, context, 0),
    );
  }

  buildDoctorCard(
      double fem, double ffem, CareProviderModel careProviderModel) {
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
          padding: EdgeInsets.fromLTRB(10 * fem, 12 * fem, 24 * fem, 16 * fem),
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
                margin: EdgeInsets.fromLTRB(0 * fem, 4 * fem, 0 * fem, 0 * fem),
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
                margin: EdgeInsets.fromLTRB(0 * fem, 4 * fem, 0 * fem, 0 * fem),
                width: 180 * fem,
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
                                0 * fem, 0 * fem, 0 * fem, 0 * fem),
                            child: Text(
                              'Dr. ${careProviderModel.firstName} ${careProviderModel.lastName}  ',
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
                width: 10 * fem,
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
                          8 * fem, 0 * fem, 8 * fem, 29 * fem),
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
  }
}

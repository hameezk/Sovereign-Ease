import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';

import '../models/care_provider_model.dart';
import 'doctor-info.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController serviceCintroller = TextEditingController();
  TextEditingController doctorCintroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      backgroundColor: const Color(0xffecf1fa),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xffecf1fa),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogrouphwamcBT (5yQTC9G5ppLstAtJszHWaM)
                    padding: EdgeInsets.fromLTRB(
                        25 * fem, 15 * fem, 25 * fem, 17 * fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // back7e1 (146:1037)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 11 * fem),
                          width: 35 * fem,
                          height: 35 * fem,
                          child: Image.asset(
                            'assets/page-2/images/back-1Qm.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        searchBar(
                          fem,
                          ffem,
                          'Service',
                          serviceCintroller,
                        ),
                        Container(
                          // autogroupfkmbiQ9 (5yPi3t9Uh3xuDLmksifKMb)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 35 * fem),
                          padding: EdgeInsets.fromLTRB(
                              20 * fem, 13 * fem, 20 * fem, 20 * fem),
                          width: double.infinity,
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
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                // autogroup2kc16Qh (5yPiL3MDk5KLKSA3yH2kC1)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 17 * fem),
                                width: double.infinity,
                                height: 55 * fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // catcard2JM (112:58)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 20 * fem, 0 * fem),
                                      padding: EdgeInsets.fromLTRB(
                                          7 * fem, 8 * fem, 29 * fem, 7 * fem),
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffecf1fa),
                                        borderRadius:
                                            BorderRadius.circular(5 * fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: const Color(0x3f000000),
                                            offset: Offset(1 * fem, 1 * fem),
                                            blurRadius: 1.5 * fem,
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // autogroupevvoWUR (5yPigwv3yFjgF4RSgrEvVo)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 7 * fem, 0 * fem),
                                            padding: EdgeInsets.fromLTRB(
                                                7 * fem,
                                                7 * fem,
                                                8 * fem,
                                                8 * fem),
                                            height: double.infinity,
                                            decoration: BoxDecoration(
                                              color: const Color(0xff7bcc70),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      5 * fem),
                                            ),
                                            child: Center(
                                              // heartwithpulse2hf (112:57)
                                              child: SizedBox(
                                                width: 25 * fem,
                                                height: 25 * fem,
                                                child: Image.asset(
                                                  'assets/page-2/images/heart-with-pulse.png',
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // hospicecarepalliativem9T (112:56)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                1 * fem, 0 * fem, 0 * fem),
                                            constraints: BoxConstraints(
                                              maxWidth: 77 * fem,
                                            ),
                                            child: Text(
                                              'Hospice Care / \nPalliative',
                                              style: SafeGoogleFont(
                                                'Montserrat',
                                                fontSize: 10 * ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.2175 * ffem / fem,
                                                color: const Color(0xb2000000),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // autogrouptf45TY5 (5yPiUNSg7xqbeiggHgtf45)
                                      padding: EdgeInsets.fromLTRB(
                                          7 * fem, 8 * fem, 39 * fem, 7 * fem),
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffecf1fa),
                                        borderRadius:
                                            BorderRadius.circular(5 * fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: const Color(0x3f000000),
                                            offset: Offset(1 * fem, 1 * fem),
                                            blurRadius: 1.5 * fem,
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // autogroupb1tdwCM (5yPiYCfdB58zwiAgkib1td)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 7 * fem, 0 * fem),
                                            padding: EdgeInsets.fromLTRB(
                                                7 * fem,
                                                7 * fem,
                                                8 * fem,
                                                8 * fem),
                                            height: double.infinity,
                                            decoration: BoxDecoration(
                                              color: const Color(0xff7bcc70),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      5 * fem),
                                            ),
                                            child: Center(
                                              // volunteeringFD3 (112:74)
                                              child: SizedBox(
                                                width: 25 * fem,
                                                height: 25 * fem,
                                                child: Image.asset(
                                                  'assets/page-2/images/volunteering.png',
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // medicalcareBcV (112:62)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                1 * fem, 0 * fem, 0 * fem),
                                            child: Text(
                                              'Medical Care',
                                              style: SafeGoogleFont(
                                                'Montserrat',
                                                fontSize: 10 * ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.2175 * ffem / fem,
                                                color: const Color(0xb2000000),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                // autogroupn2hwhqj (5yPirMp337FpHiEp1LN2Hw)
                                width: double.infinity,
                                height: 55 * fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // autogroupovedeFB (5yPj1XDSFavuZ8DhZBoveD)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 20 * fem, 0 * fem),
                                      padding: EdgeInsets.fromLTRB(
                                          7 * fem, 8 * fem, 13 * fem, 7 * fem),
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffecf1fa),
                                        borderRadius:
                                            BorderRadius.circular(5 * fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: const Color(0x3f000000),
                                            offset: Offset(1 * fem, 1 * fem),
                                            blurRadius: 1.5 * fem,
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // autogroupd5gdKMK (5yPj6MQiiCcVy53d6kD5GD)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 7 * fem, 0 * fem),
                                            padding: EdgeInsets.fromLTRB(
                                                7 * fem,
                                                7 * fem,
                                                8 * fem,
                                                8 * fem),
                                            height: double.infinity,
                                            decoration: BoxDecoration(
                                              color: const Color(0xff7bcc70),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      5 * fem),
                                            ),
                                            child: Center(
                                              // trustEDP (112:75)
                                              child: SizedBox(
                                                width: 25 * fem,
                                                height: 25 * fem,
                                                child: Image.asset(
                                                  'assets/page-2/images/trust.png',
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // hospitalrecoverycarexfB (112:67)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                5 * fem, 0 * fem, 0 * fem),
                                            constraints: BoxConstraints(
                                              maxWidth: 93 * fem,
                                            ),
                                            child: Text(
                                              'Hospital Recovery\ncare',
                                              style: SafeGoogleFont(
                                                'Montserrat',
                                                fontSize: 10 * ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.2175 * ffem / fem,
                                                color: const Color(0xb2000000),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // autogroupkcx3GQy (5yPjC6k9Hs4buZGdoHkcX3)
                                      padding: EdgeInsets.fromLTRB(
                                          7 * fem, 8 * fem, 19 * fem, 7 * fem),
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffecf1fa),
                                        borderRadius:
                                            BorderRadius.circular(5 * fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: const Color(0x3f000000),
                                            offset: Offset(1 * fem, 1 * fem),
                                            blurRadius: 1.5 * fem,
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // autogrouptacyZey (5yPjFr8u4WkKc8opLmtaCy)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 7 * fem, 0 * fem),
                                            padding: EdgeInsets.fromLTRB(
                                                7 * fem,
                                                7 * fem,
                                                8 * fem,
                                                8 * fem),
                                            height: double.infinity,
                                            decoration: BoxDecoration(
                                              color: const Color(0xff7bcc70),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      5 * fem),
                                            ),
                                            child: Center(
                                              // doctorsbagUmw (112:76)
                                              child: SizedBox(
                                                width: 25 * fem,
                                                height: 25 * fem,
                                                child: Image.asset(
                                                  'assets/page-2/images/doctors-bag.png',
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // companioncareservicesQvV (112:72)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                1 * fem, 0 * fem, 0 * fem),
                                            constraints: BoxConstraints(
                                              maxWidth: 87 * fem,
                                            ),
                                            child: Text(
                                              'Companion Care\nServices',
                                              style: SafeGoogleFont(
                                                'Montserrat',
                                                fontSize: 10 * ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.2175 * ffem / fem,
                                                color: const Color(0xb2000000),
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
                        searchBar(fem, ffem, 'Care Providers', doctorCintroller)
                      ],
                    ),
                  ),
                  SizedBox(
                    // autogroupzt8yXrH (5yPsqSB8Kt4S8VuuPJzt8y)
                    // width: double.infinity,
                    height: 400 * fem,
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
                                                doctorsSnapshot.docs[index]
                                                        .data()
                                                    as Map<String, dynamic>);
                                        return (careProviderModel.firstName!
                                                .contains(
                                                    doctorCintroller.text))
                                            ? buildDoctorCard(
                                                fem, ffem, careProviderModel)
                                            : Container(
                                                height: 0,
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
                              }),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: bottomBar(fem, ffem, context, 3),
    );
  }

  searchBar(
    double fem,
    double ffem,
    String searchKey,
    TextEditingController controller,
  ) {
    return Builder(builder: (context) {
      return Container(
        // autogrouprvbbEid (5yQMf3z6spgHcdq53Rrvbb)
        margin: EdgeInsets.fromLTRB(20 * fem, 10 * fem, 20 * fem, 0 * fem),
        padding: EdgeInsets.fromLTRB(10 * fem, 10 * fem, 10 * fem, 10 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(5 * fem),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // searchw7F (146:982)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 22 * fem, 0 * fem),
              width: 15 * fem,
              height: 15 * fem,
              child: Image.asset(
                'assets/page-2/images/search-twB.png',
                fit: BoxFit.contain,
              ),
            ),
            Container(
              // searchserviceG9X (146:984)
              width: MediaQuery.of(context).size.width * 0.6,
              height: 15 * fem,
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
              child: Center(
                child: TextField(
                  onChanged: (value) => setState(() {}),
                  controller: controller,
                  decoration: InputDecoration(
                    hintText: 'Search $searchKey....',
                    hintStyle: SafeGoogleFont(
                      'Poppins',
                      fontSize: 10 * ffem,
                      fontWeight: FontWeight.w300,
                      height: 1.5 * ffem / fem,
                      color: const Color(0x59000000),
                    ),
                    border: InputBorder.none,
                  ),
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 10 * ffem,
                    fontWeight: FontWeight.w300,
                    height: 1.5 * ffem / fem,
                    color: const Color(0x59000000),
                  ),
                ),
              ),
            ),
            // SizedBox(
            //   // expandarrowMAy (146:997)
            //   width: 15 * fem,
            //   height: 15 * fem,
            //   child: Image.asset(
            //     'assets/page-2/images/expand-arrow-Kr9.png',
            //     fit: BoxFit.contain,
            //   ),
            // ),
          ],
        ),
      );
    });
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
  }
}

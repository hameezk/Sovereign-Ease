import 'package:flutter/material.dart';
import 'package:myapp/helpers/ui_helper.dart';
import 'package:myapp/models/care_provider_model.dart';
import 'package:myapp/page-2/doctor-info-Nu7.dart';
import 'package:myapp/utils.dart';

import '../main.dart';

class DoctorInfo extends StatefulWidget {
  final CareProviderModel careProviderModel;
  const DoctorInfo({super.key, required this.careProviderModel});

  @override
  State<DoctorInfo> createState() => _DoctorInfoState();
}

class _DoctorInfoState extends State<DoctorInfo> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColorLight,
        elevation: 0,
        leading: Builder(builder: (context) {
          return Container(
            // backmEh (112:485)
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
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Container(
            // doctorinfogcR (112:270)
            padding: EdgeInsets.fromLTRB(0 * fem, 15 * fem, 0 * fem, 0 * fem),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xff7bcc70),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  // autogroupgve5zND (5yRfYNYQ482Y6SLPRVgve5)
                  width: double.infinity,
                  height: 895 * fem,
                  child: Stack(
                    children: [
                      Positioned(
                        // ellipse12KQV (112:380)
                        left: 70 * fem,
                        top: 26 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 315 * fem,
                            height: 315 * fem,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(157.5 * fem),
                                color: const Color(0xffffffff),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0x3f000000),
                                    offset: Offset(0 * fem, 0 * fem),
                                    blurRadius: 5 * fem,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // doctorwithtabletandphonezmX (112:379)
                        left: 152 * fem,
                        top: 31 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 126 * fem,
                            height: 187 * fem,
                            child: Image.asset(
                              'assets/page-2/images/doctor-with-tablet-and-phone-bbw.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // rectangle34hA9 (112:377)
                        left: 0 * fem,
                        top: 211 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 430 * fem,
                            height: 690 * fem,
                            child: Container(
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0xff7bcc70)),
                                color: const Color(0xffffffff),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20 * fem),
                                  topRight: Radius.circular(20 * fem),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // infomatzf3 (112:426)
                        left: 44 * fem,
                        top: 231 * fem,
                        child: SizedBox(
                          width: 341 * fem,
                          height: 565 * fem,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // infocardiL9 (112:400)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 20 * fem),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // autogroupsx4heUh (5yRi6YnVtUVxctzJkUSx4H)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 3 * fem),
                                      width: double.infinity,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                // drstrangeAT3 (112:384)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    0 * fem,
                                                    0 * fem),
                                                child: Text(
                                                  'Dr. ${widget.careProviderModel.firstName} ${widget.careProviderModel.lastName}',
                                                  style: SafeGoogleFont(
                                                    'Montserrat',
                                                    fontSize: 25 * ffem,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.2175 * ffem / fem,
                                                    color:
                                                        const Color(0xb2000000),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // GFB (144:205)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    6 * fem,
                                                    0 * fem,
                                                    0 * fem),
                                                child: RichText(
                                                  text: TextSpan(
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
                                                    children: [
                                                      const TextSpan(
                                                        text: '(',
                                                      ),
                                                      TextSpan(
                                                        text: '\$',
                                                        style: SafeGoogleFont(
                                                          'Montserrat',
                                                          fontSize: 10 * ffem,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          height: 1.2175 *
                                                              ffem /
                                                              fem,
                                                          color: const Color(
                                                              0xff7bcc70),
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: widget
                                                                .careProviderModel
                                                                .charges ??
                                                            '1200',
                                                        style: SafeGoogleFont(
                                                          'Montserrat',
                                                          fontSize: 10 * ffem,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          height: 1.2175 *
                                                              ffem /
                                                              fem,
                                                          color: const Color(
                                                              0xff7bcc70),
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
                                          GestureDetector(
                                            onTap: () => showCustomSnackbar(
                                                context: context,
                                                content: 'Bookmark added'),
                                            child: SizedBox(
                                              // addbookmarkkZf (112:396)
                                              width: 25 * fem,
                                              height: 25 * fem,
                                              child: Image.asset(
                                                'assets/page-2/images/add-bookmark-kaM.png',
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // certifiednursingassistantstvm (112:385)
                                      margin: EdgeInsets.fromLTRB(
                                          2 * fem, 0 * fem, 0 * fem, 5 * fem),
                                      child: Text(
                                        widget.careProviderModel.jobTitle ?? '',
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 10 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2175 * ffem / fem,
                                          color: const Color(0xb2000000),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // autogroupktmjzyo (5yRiEo3kyuQYMma79LkTmj)
                                      margin: EdgeInsets.fromLTRB(
                                          1 * fem, 0 * fem, 0 * fem, 0 * fem),
                                      height: 25 * fem,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          SizedBox(
                                            // staruL5 (112:388)
                                            width: 25 * fem,
                                            height: 25 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-Zwo.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          SizedBox(
                                            // starrWD (112:389)
                                            width: 25 * fem,
                                            height: 25 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-8X3.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          SizedBox(
                                            // autogroupmbhjbih (5yRiN3LgfpvvygozTgMBhj)
                                            width: 48 * fem,
                                            height: double.infinity,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  // star9kD (112:390)
                                                  left: 0 * fem,
                                                  top: 0 * fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 25 * fem,
                                                      height: 25 * fem,
                                                      child: Image.asset(
                                                        'assets/page-2/images/star-4uX.png',
                                                        fit: BoxFit.contain,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  // starVJH (112:391)
                                                  left: 23 * fem,
                                                  top: 0 * fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 25 * fem,
                                                      height: 25 * fem,
                                                      child: Image.asset(
                                                        'assets/page-2/images/star-zzD.png',
                                                        fit: BoxFit.contain,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // starcdo (112:387)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 12 * fem, 0 * fem),
                                            width: 25 * fem,
                                            height: 25 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-kTj.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          Container(
                                            // wvy (112:386)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 85 * fem, 2 * fem),
                                            child: Text(
                                              '(1398)',
                                              style: SafeGoogleFont(
                                                'Montserrat',
                                                fontSize: 15 * ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.2175 * ffem / fem,
                                                color: const Color(0xb2000000),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // seeallreviewsfry (112:397)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 0 * fem, 2 * fem),
                                            child: Text(
                                              'see all reviews',
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
                              Container(
                                // aboutbEq (112:398)
                                margin: EdgeInsets.fromLTRB(
                                    2 * fem, 0 * fem, 0 * fem, 5 * fem),
                                child: Text(
                                  'About',
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
                                // loremipsumdolorsitametconsecte (112:401)
                                margin: EdgeInsets.fromLTRB(
                                    1 * fem, 0 * fem, 0 * fem, 9 * fem),
                                constraints: BoxConstraints(
                                  maxWidth: 339 * fem,
                                ),
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
                                        text:
                                            'Lorem ipsum dolor sit amet consectetur. Lorem massa morbi erat\nscelerisque vitae donec sollicitudin scelerisque sit. Sed pulvinar ip\nsum sem integer sem sodales sapien ac. Amet amet ipsum tortor\norci erat porta enim eget. Eget elementum aliquam felis scelerisq\nue suspendisse malesuada at at nunc. Scelerisque rhoncus ac a\nfermentum tincidunt massa ante lorem amet. Ultrices turpis elit\nvitae pretium risus lobortis cursus adipiscing. Venenatis ornare fa\nucibus risus ipsum. Bibendum tellus hac non in dictum purus dia\nm nulla morbi. Ut sed cras senectus lectus                            ',
                                      ),
                                      TextSpan(
                                        text: 'MORE...',
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 10 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2175 * ffem / fem,
                                          color: const Color(0xff009900),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                // availabilityc5P (112:402)
                                margin: EdgeInsets.fromLTRB(
                                    2 * fem, 0 * fem, 0 * fem, 0 * fem),
                                child: Text(
                                  'Availability',
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
                                // availabilityc5P (112:402)
                                margin: EdgeInsets.fromLTRB(
                                    2 * fem, 20 * fem, 0 * fem, 0 * fem),
                                width: 340 * fem,
                                height: 26 * fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // autogroupdf7oYv5 (5yRgJMH7tQryNRSerndf7o)
                                      padding: EdgeInsets.fromLTRB(
                                          13 * fem, 7 * fem, 5 * fem, 6 * fem),
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: (widget.careProviderModel
                                                      .availablity ==
                                                  'Full-Time')
                                              ? const Color(0xff7bcc70)
                                              : const Color(0xffcc7075),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(2 * fem),
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // fulltime59K (112:404)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 14 * fem, 0 * fem),
                                            child: Text(
                                              'Full-Time',
                                              style: SafeGoogleFont(
                                                'Montserrat',
                                                fontSize: 10 * ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.2175 * ffem / fem,
                                                color: (widget.careProviderModel
                                                            .availablity ==
                                                        'Full-Time')
                                                    ? const Color(0xff7bcc70)
                                                    : const Color(0xffcc7075),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // checkedcheckboxQSV (112:410)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 0 * fem, 1 * fem),
                                            width: 10 * fem,
                                            height: 10 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/checked-checkbox-E1X.png',
                                              fit: BoxFit.contain,
                                              color: (widget.careProviderModel
                                                          .availablity ==
                                                      'Full-Time')
                                                  ? const Color(0xff7bcc70)
                                                  : const Color(0xffcc7075),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 30 * fem,
                                    ),
                                    Container(
                                      // autogrouprppvX1K (5yRgQM78KTA869W9KxrPpV)
                                      padding: EdgeInsets.fromLTRB(
                                          15 * fem, 7 * fem, 4 * fem, 6 * fem),
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: (widget.careProviderModel
                                                      .availablity ==
                                                  'Part-Time')
                                              ? const Color(0xff7bcc70)
                                              : const Color(0xffcc7075),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(2 * fem),
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // parttimedq3 (112:406)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 10 * fem, 0 * fem),
                                            child: Text(
                                              'Part-Time',
                                              style: SafeGoogleFont(
                                                'Montserrat',
                                                fontSize: 10 * ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.2175 * ffem / fem,
                                                color: (widget.careProviderModel
                                                            .availablity ==
                                                        'Part-Time')
                                                    ? const Color(0xff7bcc70)
                                                    : const Color(0xffcc7075),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // checkedcheckboxZCu (112:412)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 0 * fem, 1 * fem),
                                            width: 10 * fem,
                                            height: 10 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/checked-checkbox.png',
                                              fit: BoxFit.contain,
                                              color: (widget.careProviderModel
                                                          .availablity ==
                                                      'Part-Time')
                                                  ? const Color(0xff7bcc70)
                                                  : const Color(0xffcc7075),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 30 * fem,
                                    ),
                                    Container(
                                      // autogroupv92yek9 (5yRgVWdBuuJSsk7NZhV92y)
                                      padding: EdgeInsets.fromLTRB(
                                          18 * fem, 7 * fem, 3 * fem, 6 * fem),
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: (widget.careProviderModel
                                                      .availablity ==
                                                  'Flexible')
                                              ? const Color(0xff7bcc70)
                                              : const Color(0xffcc7075),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(2 * fem),
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // flexibleNRF (112:408)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 19 * fem, 0 * fem),
                                            child: Text(
                                              'Flexible',
                                              style: SafeGoogleFont(
                                                'Montserrat',
                                                fontSize: 10 * ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.2175 * ffem / fem,
                                                color: (widget.careProviderModel
                                                            .availablity ==
                                                        'Flexible')
                                                    ? const Color(0xff7bcc70)
                                                    : const Color(0xffcc7075),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // multiplication5aZ (112:411)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 0 * fem, 1 * fem),
                                            width: 10 * fem,
                                            height: 10 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/multiplication.png',
                                              fit: BoxFit.contain,
                                              color: (widget.careProviderModel
                                                          .availablity ==
                                                      'Flexible')
                                                  ? const Color(0xff7bcc70)
                                                  : const Color(0xffcc7075),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                // autogroup9x8qi8R (5yRh7zaQCtmSka9Gv29x8q)
                                width: double.infinity,
                                height: 266 * fem,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      // autogroupvcsmSaD (5yRghWHCmytkKCEMW3vcSM)
                                      left: 1 * fem,
                                      top: 67 * fem,
                                      child: SizedBox(
                                        width: 339 * fem,
                                        height: 25 * fem,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              // experiencexYZ (112:413)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  167 * fem,
                                                  0 * fem),
                                              child: Text(
                                                'Experience',
                                                style: SafeGoogleFont(
                                                  'Montserrat',
                                                  fontSize: 20 * ffem,
                                                  fontWeight: FontWeight.w700,
                                                  height: 1.2175 * ffem / fem,
                                                  color:
                                                      const Color(0xb2000000),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // yearsHKw (112:414)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  0 * fem,
                                                  1 * fem),
                                              child: Text(
                                                '${widget.careProviderModel.workExperience} years',
                                                style: SafeGoogleFont(
                                                  'Montserrat',
                                                  fontSize: 15 * ffem,
                                                  fontWeight: FontWeight.w700,
                                                  height: 1.2175 * ffem / fem,
                                                  color:
                                                      const Color(0xff7bcc70),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // servicecategoryp4y (112:415)
                                      left: 2 * fem,
                                      top: 114 * fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 179 * fem,
                                          height: 25 * fem,
                                          child: Text(
                                            'Service Category',
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
                                      // typesofservicesvNu (112:423)
                                      left: 2 * fem,
                                      top: 203 * fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 181 * fem,
                                          height: 25 * fem,
                                          child: Text(
                                            'Types of Services',
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
                                      // autogroupr8vvzxR (5yRgpW5YcXa69sdm3kr8vV)
                                      left: 26 * fem,
                                      top: 148 * fem,
                                      child: Container(
                                        width: 290 * fem,
                                        height: 26 * fem,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0xff7bcc70)),
                                          borderRadius:
                                              BorderRadius.circular(2 * fem),
                                        ),
                                        child: Center(
                                          child: Text(
                                            widget.careProviderModel
                                                    .serviceCategory ??
                                                "",
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
                                      // autogroupjudf5DB (5yRgvqELBQKyFFUZD7JUDf)
                                      left: 26 * fem,
                                      top: 234 * fem,
                                      child: Container(
                                        width: 290 * fem,
                                        height: 26 * fem,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0xff7bcc70)),
                                          borderRadius:
                                              BorderRadius.circular(2 * fem),
                                        ),
                                        child: Center(
                                          child: Text(
                                            widget.careProviderModel
                                                    .typeOfService ??
                                                "",
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
                      Positioned(
                        // rectangle4LQ1 (112:428)
                        left: 70 * fem,
                        top: 799 * fem,
                        child: (isClient)
                            ? GestureDetector(
                                onTap: () => navigate(
                                    context,
                                    BookAppointment(
                                      careProviderModel:
                                          widget.careProviderModel,
                                    )),
                                child: Align(
                                  child: SizedBox(
                                    width: 290 * fem,
                                    height: 35 * fem,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(5 * fem),
                                        color: const Color(0xff7bcc70),
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
                              )
                            : Container(
                                height: 0,
                              ),
                      ),
                      (isClient)
                          ? Positioned(
                              // bookanappointmentq5s (112:429)
                              left: 137 * fem,
                              top: 806 * fem,
                              child: GestureDetector(
                                onTap: () => navigate(
                                    context,
                                    BookAppointment(
                                      careProviderModel:
                                          widget.careProviderModel,
                                    )),
                                child: Align(
                                  child: SizedBox(
                                    width: 156 * fem,
                                    height: 21 * fem,
                                    child: Text(
                                      'Book an appointment',
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
                            )
                          : Container(
                              height: 0,
                            ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: (isClient)
          ? bottomBar(fem, ffem, context, 1)
          : bottomBarCareProvider(fem, ffem, context, 1),
    );
  }
}

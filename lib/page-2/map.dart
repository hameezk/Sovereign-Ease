import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // mapfAy (209:3400)
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffecf1fa),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupnj1fo2H (CpFsevcaEUoFRQWkQhnJ1f)
              padding:
                  EdgeInsets.fromLTRB(25 * fem, 15 * fem, 114 * fem, 16 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff7bcc70),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // backVvh (209:3402)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 58 * fem, 41 * fem),
                    width: 35 * fem,
                    height: 35 * fem,
                    child: Image.asset(
                      'assets/page-2/images/back-AJm.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                    // servicesaccepteddGD (209:3403)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 51 * fem, 0 * fem, 0 * fem),
                    child: Text(
                      'Services Accepted',
                      style: SafeGoogleFont(
                        'Montserrat',
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2175 * ffem / fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                  Container(
                    // uzR (209:3404)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 30 * fem, 0 * fem, 0 * fem),
                    child: Text(
                      '3',
                      style: SafeGoogleFont(
                        'Montserrat',
                        fontSize: 8 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2175 * ffem / fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupneu9dQd (CpFvKrAS416y1JjbWkneU9)
              padding:
                  EdgeInsets.fromLTRB(45 * fem, 26 * fem, 45 * fem, 17 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupsoudAQZ (CpFsob2okCnF8LpgRHsoUD)
                    margin: EdgeInsets.fromLTRB(
                        45 * fem, 0 * fem, 45 * fem, 32 * fem),
                    padding: EdgeInsets.fromLTRB(
                        23 * fem, 2 * fem, 21 * fem, 1.5 * fem),
                    width: double.infinity,
                    height: 35 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(5 * fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0 * fem, 1 * fem),
                          blurRadius: 1 * fem,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // pendingdJ9 (209:3493)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 1.5 * fem, 35 * fem, 0 * fem),
                          child: Text(
                            'Pending',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 15 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2175 * ffem / fem,
                              color: Color(0xff7bcc70),
                            ),
                          ),
                        ),
                        Container(
                          // autogroupy92h8Eu (CpFsuW2ctnTiFewLxvY92H)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 7 * fem, 0 * fem, 4.5 * fem),
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // acceptedTHB (209:3494)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 1 * fem),
                                child: Text(
                                  'Accepted',
                                  style: SafeGoogleFont(
                                    'Montserrat',
                                    fontSize: 15 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2175 * ffem / fem,
                                    color: Color(0xff009900),
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
            Container(
              // autogroupp4q9PC5 (CpFt2zp8S5q9ep1i3tp4Q9)
              width: double.infinity,
              height: 487 * fem,
              child: Stack(
                children: [
                  Positioned(
                    // mapobjXp5 (388:271)
                    left: 45 * fem,
                    top: 0 * fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 12 * fem),
                      width: 340 * fem,
                      height: 487 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(5 * fem),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            offset: Offset(1 * fem, 1 * fem),
                            blurRadius: 1.5 * fem,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupgcm7PrH (CpFu63tjSSnXZRuMjjGcM7)
                            width: double.infinity,
                            height: 180 * fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // servicerequestdetails83B (388:276)
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
                                          color: Color(0xb2000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // autogroupxtbpzr5 (CpFtNVFeqTntVRD45DXTBP)
                                  left: 25 * fem,
                                  top: 45 * fem,
                                  child: Container(
                                    width: 245 * fem,
                                    height: 19 * fem,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // namein5 (388:286)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 12 * fem, 2 * fem),
                                          width: 15 * fem,
                                          height: 15 * fem,
                                          child: Image.asset(
                                            'assets/page-2/images/name-cnM.png',
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        Container(
                                          // johncena3pM (388:277)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 90 * fem, 0 * fem),
                                          child: Text(
                                            'John Cena',
                                            style: SafeGoogleFont(
                                              'Montserrat',
                                              fontSize: 15 * ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.2175 * ffem / fem,
                                              color: Color(0xff7bcc70),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // ageNLq (388:287)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 12 * fem, 2 * fem),
                                          width: 15 * fem,
                                          height: 15 * fem,
                                          child: Image.asset(
                                            'assets/page-2/images/age-Hf7.png',
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        Text(
                                          // 6nd (388:282)
                                          '32',
                                          style: SafeGoogleFont(
                                            'Montserrat',
                                            fontSize: 15 * ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2175 * ffem / fem,
                                            color: Color(0xff7bcc70),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // autogroupg8ok3xm (CpFtZUwLJ2zzouz7w3G8oK)
                                  left: 25 * fem,
                                  top: 77 * fem,
                                  child: Container(
                                    width: 253 * fem,
                                    height: 18 * fem,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // addressB3P (388:285)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 12 * fem, 1 * fem),
                                          width: 15 * fem,
                                          height: 15 * fem,
                                          child: Image.asset(
                                            'assets/page-2/images/address-vVX.png',
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        Text(
                                          // mainstreettampafl33602usahGd (388:278)
                                          '123 Main Street, Tampa, FL 33602, USA',
                                          style: SafeGoogleFont(
                                            'Poppins',
                                            fontSize: 12 * ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1.5 * ffem / fem,
                                            color: Color(0xff7bcc70),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // autogroupjtah241 (CpFtgeQ4hVuhqRHBKqJTah)
                                  left: 25 * fem,
                                  top: 112 * fem,
                                  child: Container(
                                    width: 303 * fem,
                                    height: 18 * fem,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // phoneKoo (388:284)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 12 * fem, 1 * fem),
                                          width: 15 * fem,
                                          height: 15 * fem,
                                          child: Image.asset(
                                            'assets/page-2/images/phone-A1o.png',
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        Container(
                                          // A3j (388:279)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 37 * fem, 0 * fem),
                                          child: Text(
                                            '+305 409 5998',
                                            style: SafeGoogleFont(
                                              'Poppins',
                                              fontSize: 12 * ffem,
                                              fontWeight: FontWeight.w500,
                                              height: 1.5 * ffem / fem,
                                              color: Color(0xff7bcc70),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // mailGcZ (388:283)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 12 * fem, 1 * fem),
                                          width: 15 * fem,
                                          height: 15 * fem,
                                          child: Image.asset(
                                            'assets/page-2/images/mail-n4h.png',
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        Text(
                                          // cenajgmailcombuj (388:280)
                                          'cena_j@gmail.com',
                                          style: SafeGoogleFont(
                                            'Poppins',
                                            fontSize: 12 * ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1.5 * ffem / fem,
                                            color: Color(0xff7bcc70),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // location9gM (388:281)
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
                                          color: Color(0xff7bcc70),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogroupbyj9FzH (CpFtptfKnvpHaHryihbyJ9)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 5 * fem),
                            padding: EdgeInsets.fromLTRB(
                                23.5 * fem, 59.5 * fem, 23.5 * fem, 38.5 * fem),
                            width: double.infinity,
                            height: 255 * fem,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/page-2/images/image-40-bg-Utq.png',
                                ),
                              ),
                            ),
                            child: Align(
                              // vector104ZEH (388:289)
                              alignment: Alignment.centerLeft,
                              child: SizedBox(
                                width: 177.5 * fem,
                                height: 157 * fem,
                                child: Image.asset(
                                  'assets/page-2/images/vector-104-SPs.png',
                                  width: 177.5 * fem,
                                  height: 157 * fem,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // autogroup17v9tnM (CpFtuircFYVszEguGG17v9)
                            margin: EdgeInsets.fromLTRB(
                                125 * fem, 0 * fem, 126 * fem, 0 * fem),
                            padding: EdgeInsets.fromLTRB(
                                11 * fem, 5 * fem, 11 * fem, 5 * fem),
                            width: double.infinity,
                            height: 20 * fem,
                            decoration: BoxDecoration(
                              color: Color(0xffecf1fa),
                              borderRadius: BorderRadius.circular(5 * fem),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x3f000000),
                                  offset: Offset(0 * fem, 1 * fem),
                                  blurRadius: 1 * fem,
                                ),
                              ],
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // openinmapmr9 (388:291)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 4 * fem, 0 * fem),
                                  child: Text(
                                    'Open in Map',
                                    style: SafeGoogleFont(
                                      'Montserrat',
                                      fontSize: 8 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.2175 * ffem / fem,
                                      color: Color(0xff7bcc70),
                                    ),
                                  ),
                                ),
                                Container(
                                  // doneJLH (388:292)
                                  width: 10 * fem,
                                  height: 10 * fem,
                                  child: Image.asset(
                                    'assets/page-2/images/done-KMb.png',
                                    fit: BoxFit.contain,
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
                    // searchef3 (209:3481)
                    left: 0 * fem,
                    top: 158 * fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          44 * fem, 13 * fem, 45 * fem, 9 * fem),
                      width: 430 * fem,
                      height: 70 * fem,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff7bcc70)),
                        color: Color(0xffffffff),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupi8mpKmB (CpFusSkm6Y5ZvS5fsGi8MP)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 55 * fem, 0 * fem),
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // homeeYZ (209:3489)
                                  width: 35 * fem,
                                  height: 35 * fem,
                                  child: Image.asset(
                                    'assets/page-2/images/home-phw.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Container(
                                  // homePm3 (209:3485)
                                  margin: EdgeInsets.fromLTRB(
                                      1 * fem, 0 * fem, 0 * fem, 0 * fem),
                                  child: Text(
                                    'Home',
                                    style: SafeGoogleFont(
                                      'Montserrat',
                                      fontSize: 10 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.2175 * ffem / fem,
                                      color: Color(0xffb7b7b7),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogroup8sjyKPo (CpFuy2Ro7HJJg6R2ij8sJy)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 48 * fem, 2 * fem),
                            width: 60 * fem,
                            height: 46 * fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // notificationegy (209:3484)
                                  left: 12 * fem,
                                  top: 0 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 35 * fem,
                                      height: 35 * fem,
                                      child: Image.asset(
                                        'assets/page-2/images/notification-3Aq.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // notificationxxZ (209:3486)
                                  left: 0 * fem,
                                  top: 33 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 60 * fem,
                                      height: 13 * fem,
                                      child: Text(
                                        'Notification',
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 10 * ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.2175 * ffem / fem,
                                          color: Color(0xffb7b7b7),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogroup4pk1fry (CpFv3ByXJE4SLjgLsw4pk1)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 60 * fem, 2 * fem),
                            width: 48 * fem,
                            height: 46 * fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // requestsoTP (209:3487)
                                  left: 0 * fem,
                                  top: 33 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 48 * fem,
                                      height: 13 * fem,
                                      child: Text(
                                        'Requests',
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 10 * ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.2175 * ffem / fem,
                                          color: Color(0xff7bcc70),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // handshakeX8V (209:3490)
                                  left: 6 * fem,
                                  top: 0 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 35 * fem,
                                      height: 35 * fem,
                                      child: Image.asset(
                                        'assets/page-2/images/handshake-YDw.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogroupmbaz3sX (CpFv72CUMLMqdjAMLxmBaZ)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 2 * fem),
                            width: 35 * fem,
                            height: 46 * fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // customerzGy (209:3483)
                                  left: 0 * fem,
                                  top: 0 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 35 * fem,
                                      height: 35 * fem,
                                      child: Image.asset(
                                        'assets/page-2/images/customer-xMw.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // profilevRX (209:3488)
                                  left: 1 * fem,
                                  top: 33 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 33 * fem,
                                      height: 13 * fem,
                                      child: Text(
                                        'Profile',
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 10 * ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.2175 * ffem / fem,
                                          color: Color(0xffb7b7b7),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

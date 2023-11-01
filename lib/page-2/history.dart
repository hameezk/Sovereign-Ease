import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Container(
            // historyhmB (209:3528)
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xffecf1fa),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // autogroup2xof22m (CpF9kxkqR2RokvuPij2Xof)
                  padding: EdgeInsets.fromLTRB(
                      25 * fem, 15 * fem, 25 * fem, 16 * fem),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xff7bcc70),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          // backv89 (209:3530)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 345 * fem, 16 * fem),
                          width: 35 * fem,
                          height: 35 * fem,
                          child: Image.asset(
                            'assets/page-2/images/back-vgR.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Text(
                        // historyRqb (209:3531)
                        'History',
                        style: SafeGoogleFont(
                          'Montserrat',
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2175 * ffem / fem,
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 26 * fem,
                ),
                Container(
                  // group2jrH (209:3661)
                  margin:
                      EdgeInsets.fromLTRB(45 * fem, 0 * fem, 45 * fem, 0 * fem),
                  width: double.infinity,
                  height: 389 * fem,
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
                        // recentjobdetails137 (209:3631)
                        left: 71 * fem,
                        top: 5 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 197 * fem,
                            height: 25 * fem,
                            child: Text(
                              'Recent Job Details',
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
                        // clientdetails5of (209:3648)
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
                        // jobdetailszQq (209:3651)
                        left: 126 * fem,
                        top: 203 * fem,
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
                        // autogroupdj8mV6h (CpFCMtRMcXCks1kaWfDj8M)
                        left: 25 * fem,
                        top: 83 * fem,
                        child: SizedBox(
                          width: 245 * fem,
                          height: 19 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // nameCmo (209:3644)
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
                                // johncenaL7K (209:3632)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 90 * fem, 0 * fem),
                                child: Text(
                                  'John Cena',
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
                                // ager5f (209:3645)
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
                                // myK (209:3636)
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
                      ),
                      Positioned(
                        // autogroupfcxqiNm (CpFCXt8hfb2g4ZBjHxFcxq)
                        left: 25 * fem,
                        top: 115 * fem,
                        child: SizedBox(
                          width: 253 * fem,
                          height: 18 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // addressqiH (209:3643)
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
                                // mainstreettampafl33602usaZuB (209:3633)
                                '123 Main Street, Tampa, FL 33602, USA',
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
                        // autogroupxylhfxD (CpFCfNvDCtQ7TiG6NvXYLh)
                        left: 25 * fem,
                        top: 150 * fem,
                        child: SizedBox(
                          width: 303 * fem,
                          height: 18 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // phonenX3 (209:3642)
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
                                // urZ (209:3634)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 37 * fem, 0 * fem),
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
                                // mailqER (209:3641)
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
                                // cenajgmailcomy5j (209:3635)
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
                        // servicecategorytyP (209:3652)
                        left: 25 * fem,
                        top: 231 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 90 * fem,
                            height: 13 * fem,
                            child: Text(
                              'Service Category',
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
                        // typesofserviceso4m (209:3653)
                        left: 25 * fem,
                        top: 285 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 91 * fem,
                            height: 13 * fem,
                            child: Text(
                              'Types of Services',
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
                        // autogroupo2mfJGR (CpFCqhxLPngm2uUYrPo2mf)
                        left: 65 * fem,
                        top: 251 * fem,
                        child: Container(
                          width: 210 * fem,
                          height: 26 * fem,
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xff7bcc70)),
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
                        // autogroupfn4qNGH (CpFCx377xfSe8HKM1kFN4q)
                        left: 65 * fem,
                        top: 305 * fem,
                        child: Container(
                          width: 210 * fem,
                          height: 26 * fem,
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xff7bcc70)),
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
                      Positioned(
                        // autogroupkt3beDo (CpFD5sDQdoGou6B1ntkt3B)
                        left: 244 * fem,
                        top: 349 * fem,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(
                              13 * fem, 5 * fem, 12 * fem, 5 * fem),
                          width: 71 * fem,
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
                                // deleteVkD (209:3659)
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
                              SizedBox(
                                // deleteDRK (209:3660)
                                width: 10 * fem,
                                height: 10 * fem,
                                child: Image.asset(
                                  'assets/page-2/images/delete-NFj.png',
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
                SizedBox(
                  height: 26 * fem,
                ),
                SizedBox(
                  // autogroupn5kpYyP (CpF9rHwHaPoVjMQGoYn5KP)
                  width: double.infinity,
                  height: 389 * fem,
                  child: Stack(
                    children: [
                      Positioned(
                        // group3WQR (209:3662)
                        left: 45 * fem,
                        top: 0 * fem,
                        child: Container(
                          width: 340 * fem,
                          height: 389 * fem,
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
                                // recentjobdetailsaQH (209:3664)
                                left: 71 * fem,
                                top: 5 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 197 * fem,
                                    height: 25 * fem,
                                    child: Text(
                                      'Recent Job Details',
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
                                // clientdetails569 (209:3665)
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
                                // jobdetailsZn1 (209:3666)
                                left: 126 * fem,
                                top: 203 * fem,
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
                                // autogroup52dwfa9 (CpFAFSwNTxqGg8BySp52dw)
                                left: 25 * fem,
                                top: 83 * fem,
                                child: SizedBox(
                                  width: 245 * fem,
                                  height: 19 * fem,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // namePFF (209:3675)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 12 * fem, 2 * fem),
                                        width: 15 * fem,
                                        height: 15 * fem,
                                        child: Image.asset(
                                          'assets/page-2/images/name-DSH.png',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Container(
                                        // johncena7S9 (209:3667)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 90 * fem, 0 * fem),
                                        child: Text(
                                          'John Cena',
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
                                        // age2p1 (209:3676)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 12 * fem, 2 * fem),
                                        width: 15 * fem,
                                        height: 15 * fem,
                                        child: Image.asset(
                                          'assets/page-2/images/age-V3P.png',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Text(
                                        // ZZ3 (209:3671)
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
                              ),
                              Positioned(
                                // autogroupdbqtWjB (CpFAcrVNPtwiAE8KhedbqT)
                                left: 25 * fem,
                                top: 115 * fem,
                                child: SizedBox(
                                  width: 253 * fem,
                                  height: 18 * fem,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // address2xR (209:3674)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 12 * fem, 1 * fem),
                                        width: 15 * fem,
                                        height: 15 * fem,
                                        child: Image.asset(
                                          'assets/page-2/images/address-689.png',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Text(
                                        // mainstreettampafl33602usaNFb (209:3668)
                                        '123 Main Street, Tampa, FL 33602, USA',
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
                                // autogroupfv73uFX (CpFAkrG3dx1F7rseKtFv73)
                                left: 25 * fem,
                                top: 150 * fem,
                                child: SizedBox(
                                  width: 303 * fem,
                                  height: 18 * fem,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // phoneDn1 (209:3673)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 12 * fem, 1 * fem),
                                        width: 15 * fem,
                                        height: 15 * fem,
                                        child: Image.asset(
                                          'assets/page-2/images/phone-rdw.png',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Container(
                                        // xUh (209:3669)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 37 * fem, 0 * fem),
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
                                        // mailUhw (209:3672)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 12 * fem, 1 * fem),
                                        width: 15 * fem,
                                        height: 15 * fem,
                                        child: Image.asset(
                                          'assets/page-2/images/mail-VLD.png',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Text(
                                        // cenajgmailcomQbb (209:3670)
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
                                // servicecategory9JH (209:3679)
                                left: 25 * fem,
                                top: 231 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 90 * fem,
                                    height: 13 * fem,
                                    child: Text(
                                      'Service Category',
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
                                // typesofservicesTJy (209:3680)
                                left: 25 * fem,
                                top: 285 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 91 * fem,
                                    height: 13 * fem,
                                    child: Text(
                                      'Types of Services',
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
                                // autogroupjqnuvyF (CpFAvm9CQZDUizMyBdjQnu)
                                left: 65 * fem,
                                top: 251 * fem,
                                child: Container(
                                  width: 210 * fem,
                                  height: 26 * fem,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color(0xff7bcc70)),
                                    borderRadius:
                                        BorderRadius.circular(2 * fem),
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
                                // autogroup4wnqPrq (CpFB2vdbQWjzdYK7Vu4wnq)
                                left: 65 * fem,
                                top: 305 * fem,
                                child: Container(
                                  width: 210 * fem,
                                  height: 26 * fem,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color(0xff7bcc70)),
                                    borderRadius:
                                        BorderRadius.circular(2 * fem),
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
                              Positioned(
                                // autogroup9hrh4i5 (CpFB81KTiWGdpiyWp69Hrh)
                                left: 244 * fem,
                                top: 349 * fem,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(
                                      13 * fem, 5 * fem, 12 * fem, 5 * fem),
                                  width: 71 * fem,
                                  height: 20 * fem,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffecf1fa),
                                    borderRadius:
                                        BorderRadius.circular(5 * fem),
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color(0x3f000000),
                                        offset: Offset(0 * fem, 1 * fem),
                                        blurRadius: 1 * fem,
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // deletevVP (209:3686)
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
                                      SizedBox(
                                        // deleteEky (209:3687)
                                        width: 10 * fem,
                                        height: 10 * fem,
                                        child: Image.asset(
                                          'assets/page-2/images/delete-5dj.png',
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
                      ),
                    ],
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
}

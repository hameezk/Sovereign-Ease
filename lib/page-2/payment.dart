// ignore_for_file: use_build_context_synchronously

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:myapp/models/care_provider_model.dart';
import 'package:myapp/page-2/confirm.dart';
import 'package:myapp/utils.dart';

import '../helpers/ui_helper.dart';
import '../models/appointment_model.dart';

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

class PaymentMethod extends StatefulWidget {
  final CareProviderModel careProviderModel;
  final AppointmentModel appointmentModel;
  const PaymentMethod(
      {super.key,
      required this.careProviderModel,
      required this.appointmentModel});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  TextEditingController phoneNoController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController cardNoController = TextEditingController();
  TextEditingController cardExpController = TextEditingController();
  TextEditingController cardCvcController = TextEditingController();
  DateTime selectedDate = DateTime.now();
  bool rememberDetails = true;
  String? currentAddress;
  Position? currentPosition;
  @override
  void initState() {
    phoneNoController.text = widget.appointmentModel.phoneNo ?? '';
    addressController.text = widget.appointmentModel.address ?? '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      key: scaffoldKey,
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Container(
            // paymentf8m (144:319)
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xffecf1fa),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // autogroupdbjqPaZ (5yPyAs7sYdbTLEdTyhDbJq)
                  padding: EdgeInsets.fromLTRB(
                      25 * fem, 15 * fem, 25 * fem, 63 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          // backtXK (144:374)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 345 * fem, 25 * fem),
                          width: 35 * fem,
                          height: 35 * fem,
                          child: Image.asset(
                            'assets/page-2/images/back-Qty.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Container(
                        // autogroupztutCY1 (5yPwkpeF2dc3uaXbejzTuT)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 19.74 * fem, 45 * fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              // autogroupbbkfX4V (5yPwtuF7Z9HGTdDkCXBBKf)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 31 * fem, 0 * fem),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // addthe44R (144:321)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 10 * fem),
                                    child: Text(
                                      'Add the',
                                      style: SafeGoogleFont(
                                        'Montserrat',
                                        fontSize: 24 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2175 * ffem / fem,
                                        color: const Color(0x59000000),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    // paymentmethodkC9 (144:322)
                                    'Payment Method!',
                                    style: SafeGoogleFont(
                                      'Montserrat',
                                      fontSize: 24 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.2175 * ffem / fem,
                                      color: const Color(0xb2000000),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // image175VK (144:421)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 20.74 * fem),
                              width: 104.26 * fem,
                              height: 104.26 * fem,
                              child: Image.asset(
                                'assets/page-2/images/image-17.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // autogroupghj1BoF (5yPx2jMQEH7SES5QyfghJ1)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 33 * fem),
                        padding: EdgeInsets.fromLTRB(
                            10 * fem, 10 * fem, 145 * fem, 11 * fem),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xff7bcc70),
                          borderRadius: BorderRadius.circular(5 * fem),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x3f000000),
                              offset: Offset(0 * fem, 2 * fem),
                              blurRadius: 2.5 * fem,
                            ),
                          ],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // info3aZ (144:317)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 11 * fem, 0 * fem),
                              width: 15 * fem,
                              height: 15 * fem,
                              child: Image.asset(
                                'assets/page-2/images/info.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                            Container(
                              // carefullyselecttheoptionskjs (144:318)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 1 * fem, 0 * fem, 0 * fem),
                              child: Text(
                                'Carefully select the options',
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 13 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2175 * ffem / fem,
                                  color: const Color(0xffffffff),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // personaldetails4Em (146:491)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 252 * fem, 21 * fem),
                        child: Text(
                          'Personal Details',
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
                        // phoneMUm (144:445)
                        margin: EdgeInsets.fromLTRB(
                            20 * fem, 0 * fem, 20 * fem, 19 * fem),
                        width: double.infinity,
                        height: 56 * fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // rectangle5fkM (144:446)
                              left: 0 * fem,
                              top: 11 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 340 * fem,
                                  height: 45 * fem,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(10 * fem),
                                      border: Border.all(
                                          color: const Color(0xff009900)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // rectangle6mHb (144:447)
                              left: 14 * fem,
                              top: 3 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 146 * fem,
                                  height: 15 * fem,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(5 * fem),
                                      color: const Color(0xffecf1fa),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // yourphonenumbert7K (144:448)
                              left: 27 * fem,
                              top: 0 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 122 * fem,
                                  height: 18 * fem,
                                  child: Text(
                                    'Your phone Number',
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.5 * ffem / fem,
                                      color: const Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // BcD (144:449)
                              left: 16 * fem,
                              top: 10 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 320 * fem,
                                  // height: 28 * fem,
                                  child: TextField(
                                    controller: phoneNoController,
                                    keyboardType: TextInputType.phone,
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 2.0 * ffem / fem,
                                      color: const Color(0xff000000),
                                    ),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      prefixIcon: CountryCodePicker(
                                        onChanged: print,
                                        enabled: true,
                                        initialSelection: 'Us',
                                        // favorite: const ['+92', 'Pk'],
                                        showCountryOnly: false,
                                        showOnlyCountryWhenClosed: false,

                                        flagWidth: 20,
                                        textStyle: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 12 * ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.5 * ffem / fem,
                                          color: const Color(0xff000000),
                                        ),
                                        alignLeft: false,
                                      ),
                                    ),
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // addressqaH (144:455)
                        margin: EdgeInsets.fromLTRB(
                            20 * fem, 0 * fem, 20 * fem, 28 * fem),
                        width: double.infinity,
                        height: 56 * fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // rectangle5ZWH (144:456)
                              left: 0 * fem,
                              top: 11 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 340 * fem,
                                  height: 45 * fem,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(10 * fem),
                                      border: Border.all(
                                          color: const Color(0xff009900)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // rectangle6t2m (144:457)
                              left: 14 * fem,
                              top: 3 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 103 * fem,
                                  height: 15 * fem,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(5 * fem),
                                      color: const Color(0xffecf1fa),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // youraddresszrV (144:458)
                              left: 27 * fem,
                              top: 0 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 80 * fem,
                                  height: 18 * fem,
                                  child: Text(
                                    'Your Address',
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.5 * ffem / fem,
                                      color: const Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // mainstreettampafl33602usai1o (144:459)
                              left: 27 * fem,
                              top: 24 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 300 * fem,
                                  height: 18 * fem,
                                  child: TextField(
                                      controller: addressController,
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.5 * ffem / fem,
                                        color: const Color(0xff000000),
                                      ),
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                      )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // addyourpaymentinformationPNq (144:464)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 131 * fem, 18 * fem),
                        child: Text(
                          'Add your payment information!',
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
                        // cardnumberHj7 (144:465)
                        margin: EdgeInsets.fromLTRB(
                            19 * fem, 0 * fem, 21 * fem, 19 * fem),
                        width: double.infinity,
                        height: 56 * fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // rectangle51v1 (144:466)
                              left: 0 * fem,
                              top: 11 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 340 * fem,
                                  height: 45 * fem,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(10 * fem),
                                      border: Border.all(
                                          color: const Color(0xff009900)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // rectangle6vXB (144:467)
                              left: 14 * fem,
                              top: 3 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 106 * fem,
                                  height: 15 * fem,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(5 * fem),
                                      color: const Color(0xffecf1fa),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // cardnumber2q7 (144:468)
                              left: 27 * fem,
                              top: 0 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 83 * fem,
                                  height: 18 * fem,
                                  child: Text(
                                    'Card Number',
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.5 * ffem / fem,
                                      color: const Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // XWy (144:469)
                              left: 27 * fem,
                              top: 33 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 250 * fem,
                                  height: 18 * fem,
                                  child: TextField(
                                      controller: cardNoController,
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.5 * ffem / fem,
                                        color: const Color(0xff000000),
                                      ),
                                      keyboardType: TextInputType.number,
                                      maxLength: 16,
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        counter: Offstage(),
                                      )),
                                ),
                              ),
                            ),
                            Positioned(
                              // visadpu (144:472)
                              left: 295 * fem,
                              top: 20 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 25 * fem,
                                  height: 25 * fem,
                                  child: Image.asset(
                                    'assets/page-2/images/visa.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () => selectDate(context),
                        child: Container(
                          // autogroupuzy1xsB (5yPxCPjy9WUd4KjG4nUzY1)
                          margin: EdgeInsets.fromLTRB(
                              19 * fem, 0 * fem, 21 * fem, 19 * fem),
                          width: double.infinity,
                          height: 56 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // expdatehJy (144:473)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 20 * fem, 0 * fem),
                                width: 160 * fem,
                                height: double.infinity,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      // rectangle5puP (144:474)
                                      left: 0 * fem,
                                      top: 11 * fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 160 * fem,
                                          height: 45 * fem,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      10 * fem),
                                              border: Border.all(
                                                  color:
                                                      const Color(0xff009900)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // rectangle6YqP (144:475)
                                      left: 14 * fem,
                                      top: 3 * fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 86 * fem,
                                          height: 15 * fem,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      5 * fem),
                                              color: const Color(0xffecf1fa),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // expirydate4Hw (144:476)
                                      left: 27 * fem,
                                      top: 0 * fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 67 * fem,
                                          height: 18 * fem,
                                          child: Text(
                                            'Expiry Date',
                                            style: SafeGoogleFont(
                                              'Poppins',
                                              fontSize: 12 * ffem,
                                              fontWeight: FontWeight.w500,
                                              height: 1.5 * ffem / fem,
                                              color: const Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // Arm (144:477)
                                      left: 50 * fem,
                                      top: 24 * fem,
                                      child: GestureDetector(
                                        onTap: () => selectDate(context),
                                        child: SizedBox(
                                          width: 90 * fem,
                                          height: 18 * fem,
                                          child: TextField(
                                              controller: cardExpController,
                                              readOnly: true,
                                              style: SafeGoogleFont(
                                                'Poppins',
                                                fontSize: 12 * ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.5 * ffem / fem,
                                                color: const Color(0xff000000),
                                              ),
                                              decoration: const InputDecoration(
                                                border: InputBorder.none,
                                              )),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // scheduletXs (146:488)
                                      left: 27 * fem,
                                      top: 25 * fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 15 * fem,
                                          height: 15 * fem,
                                          child: Image.asset(
                                            'assets/page-2/images/schedule.png',
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                // cvcR21 (144:481)
                                width: 160 * fem,
                                height: double.infinity,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      // rectangle59yb (144:482)
                                      left: 0 * fem,
                                      top: 11 * fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 160 * fem,
                                          height: 45 * fem,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      10 * fem),
                                              border: Border.all(
                                                  color:
                                                      const Color(0xff009900)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // rectangle6GoK (144:483)
                                      left: 13 * fem,
                                      top: 3 * fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 43 * fem,
                                          height: 15 * fem,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      5 * fem),
                                              color: const Color(0xffecf1fa),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // cvczDX (144:484)
                                      left: 19.2001953125 * fem,
                                      top: 0 * fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 27 * fem,
                                          height: 18 * fem,
                                          child: Text(
                                            'CVC',
                                            style: SafeGoogleFont(
                                              'Poppins',
                                              fontSize: 12 * ffem,
                                              fontWeight: FontWeight.w500,
                                              height: 1.5 * ffem / fem,
                                              color: const Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // cenahtd (144:485)
                                      left: 27.7333984375 * fem,
                                      top: 25 * fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 90 * fem,
                                          height: 18 * fem,
                                          child: TextField(
                                              controller: cardCvcController,
                                              obscureText: true,
                                              style: SafeGoogleFont(
                                                'Poppins',
                                                fontSize: 12 * ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.5 * ffem / fem,
                                                color: const Color(0xff000000),
                                              ),
                                              decoration: const InputDecoration(
                                                border: InputBorder.none,
                                              )),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // magneticcardR3w (146:487)
                                      left: 115 * fem,
                                      top: 21 * fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 25 * fem,
                                          height: 25 * fem,
                                          child: Image.asset(
                                            'assets/page-2/images/magnetic-card.png',
                                            fit: BoxFit.contain,
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
                      Container(
                        // autogrouph3poLAu (5yPxmNo1XE6x1p4TeFh3Po)
                        margin: EdgeInsets.fromLTRB(
                            19 * fem, 0 * fem, 21 * fem, 28 * fem),
                        width: double.infinity,
                        height: 26 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // rememberpaymentdetailsTWR (146:492)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 88 * fem, 0 * fem),
                              child: Text(
                                'Remember Payment Details!',
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 13 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.5 * ffem / fem,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ),
                            (rememberDetails)
                                ? GestureDetector(
                                    onTap: () => setState(() {
                                      rememberDetails = !rememberDetails;
                                    }),
                                    child: Container(
                                      // autogroupwns5mX7 (5yPxt86mWPwF5FdPRKwNS5)
                                      padding: EdgeInsets.fromLTRB(
                                          32 * fem, 3 * fem, 3 * fem, 3 * fem),
                                      width: 64 * fem,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff009900),
                                        borderRadius:
                                            BorderRadius.circular(3 * fem),
                                      ),
                                      child: Align(
                                        // rectangle146JV (146:494)
                                        alignment: Alignment.centerRight,
                                        child: SizedBox(
                                          width: double.infinity,
                                          height: 20 * fem,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      2 * fem),
                                              color: const Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                : GestureDetector(
                                    onTap: () => setState(() {
                                      rememberDetails = !rememberDetails;
                                    }),
                                    child: Container(
                                      // autogroupwns5mX7 (5yPxt86mWPwF5FdPRKwNS5)
                                      padding: EdgeInsets.fromLTRB(
                                          3 * fem, 3 * fem, 32 * fem, 3 * fem),
                                      width: 64 * fem,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff009900),
                                        borderRadius:
                                            BorderRadius.circular(3 * fem),
                                      ),
                                      child: Align(
                                        // rectangle146JV (146:494)
                                        alignment: Alignment.centerRight,
                                        child: SizedBox(
                                          width: double.infinity,
                                          height: 20 * fem,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      2 * fem),
                                              color: const Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () =>
                            // navigate(context, const ConfirmAppointment()),
                            showConfirmDialog(context, fem, ffem),
                        child: Container(
                          // autogroup3jqxoyb (5yPxyxGPNX12c9oE3R3JqX)
                          margin: EdgeInsets.fromLTRB(
                              45 * fem, 0 * fem, 45 * fem, 0 * fem),
                          width: double.infinity,
                          height: 35 * fem,
                          decoration: BoxDecoration(
                            color: const Color(0xff7bcc70),
                            borderRadius: BorderRadius.circular(5 * fem),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x3f000000),
                                offset: Offset(0 * fem, 3 * fem),
                                blurRadius: 2.5 * fem,
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              'Pay (\$ ${widget.appointmentModel.totalCost})',
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: bottomBar(fem, ffem, context, 0),
    );
  }

  showConfirmDialog(
    BuildContext context,
    double fem,
    double ffem,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 290 * fem,
              height: 138 * fem,
              child: Center(
                child: Material(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Positioned(
                        // confirmpaymento3o (146:566)
                        left: 145 * fem,
                        top: 393 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 139 * fem,
                            height: 19 * fem,
                            child: Text(
                              'Confirm Payment',
                              style: SafeGoogleFont(
                                'Montserrat',
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.2175 * ffem / fem,
                                color: const Color(0xff009900),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // VxD (146:567)
                        left: 166 * fem,
                        top: 426 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 98 * fem,
                            height: 37 * fem,
                            child: Text(
                              '\$ ${widget.appointmentModel.totalCost}',
                              style: SafeGoogleFont(
                                'Montserrat',
                                fontSize: 30 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.2175 * ffem / fem,
                                color: const Color(0xff7bcc70),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // group1zty (146:899)
                        left: 93 * fem,
                        top: 476 * fem,
                        child: SizedBox(
                          width: 243 * fem,
                          height: 30 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () =>
                                    checkValues(scaffoldKey.currentContext!),
                                child: Container(
                                  // autogroupczrbLC9 (5yQ9ve2qjCxmk4qLdZcZRB)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 63 * fem, 0 * fem),
                                  width: 75 * fem,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffffffff),
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
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        // pay1p5 (146:568)
                                        left: 11 * fem,
                                        top: 5 * fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 29 * fem,
                                            height: 19 * fem,
                                            child: Text(
                                              'Pay',
                                              style: SafeGoogleFont(
                                                'Montserrat',
                                                fontSize: 15 * ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.2175 * ffem / fem,
                                                color: const Color(0xff7bcc70),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // doneuuT (146:564)
                                        left: 39 * fem,
                                        top: 2 * fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 25 * fem,
                                            height: 25 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/done.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () => Navigator.pop(context),
                                child: Container(
                                  // autogroupywrdEwj (5yQ9zoaZv9iuQi6enmYWrD)
                                  padding: EdgeInsets.fromLTRB(
                                      12 * fem, 2 * fem, 12 * fem, 3 * fem),
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffffffff),
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
                                        // canceljNh (146:569)
                                        margin: EdgeInsets.fromLTRB(
                                            0 * fem, 2 * fem, 2 * fem, 0 * fem),
                                        child: Text(
                                          'Cancel',
                                          style: SafeGoogleFont(
                                            'Montserrat',
                                            fontSize: 15 * ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2175 * ffem / fem,
                                            color: const Color(0xffeb3223),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        // closeFM3 (146:565)
                                        width: 25 * fem,
                                        height: 25 * fem,
                                        child: Image.asset(
                                          'assets/page-2/images/close.png',
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
              ),
            ),
          ],
        );
      },
    );
  }

  checkValues(BuildContext context) async {
    Navigator.pop(context);
    await getLocation();
    String phoneNo = phoneNoController.text.trim();
    String address = addressController.text.trim();
    String cardNo = cardNoController.text.trim();
    String cardExp = cardExpController.text.trim();
    String cardCvc = cardCvcController.text.trim();
    String latitude = currentPosition!.latitude.toString();
    String longitude = currentPosition!.longitude.toString();

    if (phoneNo.isEmpty ||
        address.isEmpty ||
        cardNo.isEmpty ||
        cardExp.isEmpty ||
        cardCvc.isEmpty) {
      showCustomSnackbar(
          context: context, content: 'Please fill all the required field!');
      Navigator.pop(context);
    } else {
      showLoadingDialog(context, 'Checking Details...');
      AppointmentModel appointmentModel = widget.appointmentModel;
      appointmentModel.phoneNo = phoneNo;
      appointmentModel.address = address;
      appointmentModel.cardNumber = cardNo;
      appointmentModel.cardExpiry = cardExp;
      appointmentModel.cardCvc = cardCvc;
      appointmentModel.latitude = latitude;
      appointmentModel.longitude = longitude;
      // List bookedDates = careProviderModel.bookedDates ?? [];
      // bookedDates.add(widget.appointmentModel.bookedDates);
      // careProviderModel.bookedDates = bookedDates;
      // await FirebaseFirestore.instance
      //     .collection("staffMembers")
      //     .doc(careProviderModel.uid)
      //     .set(careProviderModel.toMap());
      await FirebaseFirestore.instance
          .collection("appointments")
          .doc(appointmentModel.appointmentId)
          .set(appointmentModel.toMap())
          .then(
            (value) => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return ConfirmAppointment(
                    appointmentModel: widget.appointmentModel,
                    careProviderModel: widget.careProviderModel,
                  );
                },
              ),
            ),
          );
    }
  }

  Future<bool> handleLocationPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
              'Location services are disabled. Please enable the services')));
      return false;
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Location permissions are denied')));
        return false;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
              'Location permissions are permanently denied, we cannot request permissions.')));
      return false;
    }
    return true;
  }

  Future<void> getLocation() async {
    final hasPermission = await handleLocationPermission();
    if (!hasPermission) return;
    await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((Position position) {
      setState(() => currentPosition = position);
    }).catchError((e) {
      debugPrint(e);
    });
  }

  selectDate(context) async {
    DateTime? date = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime.now().subtract(const Duration(days: 900000000000)),
      lastDate: DateTime.now(),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: primaryColorLight,
              onPrimary: Colors.black54,
            ),
          ),
          child: child!,
        );
      },
    );
    setState(() {
      selectedDate = date!;
      cardExpController.text = DateFormat('dd/MM').format(selectedDate);
    });
  }
}

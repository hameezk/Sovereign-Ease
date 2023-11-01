import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myapp/helpers/ui_helper.dart';
import 'package:myapp/main.dart';
import 'package:myapp/models/appointment_model.dart';
import 'package:myapp/models/care_provider_model.dart';
import 'package:myapp/page-2/request.dart';
import 'package:myapp/utils.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:uuid/uuid.dart';

class BookAppointment extends StatefulWidget {
  final CareProviderModel careProviderModel;
  const BookAppointment({super.key, required this.careProviderModel});

  @override
  State<BookAppointment> createState() => _BookAppointmentState();
}

class _BookAppointmentState extends State<BookAppointment> {
  List<DateTime> disabledDates = [];
  List<DateTime> speicialDates = [];
  List<DateTime> selectedDates = [];
  List<String> bookedDates = [];
  DateTime? rangeStartDate;
  DateTime? rangeEndDate;
  List<PickerDateRange>? selectedRanges;
  DateTime selectedDate = DateTime.now();
  DateTime todayDate = DateTime.now();
  bool isFullTime = true;
  TimeOfDay startTime = TimeOfDay.now();
  TimeOfDay endTime = TimeOfDay.now();
  TimeOfDay? picked = TimeOfDay.now();
  Uuid uuid = const Uuid();

  @override
  void initState() {
    super.initState();
    disabledDates = [];
    disabledDates.addAll(
        widget.careProviderModel.bookedDates!.map((e) => DateTime.parse(e)));
  }

  @override
  Widget build(BuildContext context) {
    // todayDate = todayDate.subtract(Duration(
    //     hours: todayDate.hour,
    //     minutes: todayDate.minute,
    //     seconds: todayDate.second,
    //     milliseconds: todayDate.millisecond,
    //     microseconds: todayDate.microsecond));
    // for (int i = 0; i < 100; i++) {
    //   DateTime newDate = todayDate.add(Duration(days: i));
    //   DateTime disabledDate = newDate.subtract(Duration(
    //       hours: newDate.hour,
    //       minutes: newDate.minute,
    //       seconds: newDate.second,
    //       milliseconds: newDate.millisecond,
    //       microseconds: newDate.microsecond));
    //   if (i % 3 == 0) {
    //     print('disable date: $newDate');
    //     disabledDates.add(disabledDate);
    //   } else if (i % 5 == 0) {
    //     print('special date: $newDate');
    //     speicialDates.add(newDate);
    //   } else {
    //     print('accepeted date: $newDate');
    //   }
    // }
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
              // doctorinfomGm (112:430)
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xffecf1fa),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupyjthDPf (5yRqczuvs2F1eEFvBdYJth)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 22 * fem),
                    padding: EdgeInsets.fromLTRB(
                        0 * fem, 15 * fem, 0 * fem, 17 * fem),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xff7bcc70),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Container(
                            // backBE1 (112:488)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 36 * fem, 66 * fem),
                            width: 35 * fem,
                            height: 35 * fem,
                            child: Image.asset(
                              'assets/page-2/images/back-Hrq.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Container(
                          // autogroupitru3n1 (5yRqyA11Y58DE91sbJitru)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 35 * fem, 20 * fem, 0 * fem),
                          padding: EdgeInsets.fromLTRB(
                              18 * fem, 7 * fem, 18 * fem, 8 * fem),
                          decoration: BoxDecoration(
                            color: const Color(0xffffffff),
                            borderRadius: BorderRadius.circular(5 * fem),
                          ),
                          child: Center(
                            // doctorwithtabletandphoneJhw (112:501)
                            child: SizedBox(
                              width: 34 * fem,
                              height: 51 * fem,
                              child: Image.asset(
                                'assets/page-2/images/doctor-with-tablet-and-phone-HZj.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // infocard8gy (112:489)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 34 * fem, 0 * fem, 0 * fem),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                // drstrange2GZ (112:490)
                                'Dr. ${widget.careProviderModel.firstName} ${widget.careProviderModel.lastName}',
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 20 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2175 * ffem / fem,
                                  color: const Color(0xb2000000),
                                ),
                              ),
                              SizedBox(
                                height: 5 * fem,
                              ),
                              Container(
                                // certifiednursingassistantsGRo (112:491)
                                margin: EdgeInsets.fromLTRB(
                                    2 * fem, 0 * fem, 0 * fem, 0 * fem),
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
                              SizedBox(
                                height: 5 * fem,
                              ),
                              Container(
                                // autogroupfadw35B (5yRrAZqfQwQjWhX54rFaDw)
                                margin: EdgeInsets.fromLTRB(
                                    1 * fem, 0 * fem, 0 * fem, 0 * fem),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      // starut5 (112:495)
                                      width: 15 * fem,
                                      height: 15 * fem,
                                      child: Image.asset(
                                        'assets/page-2/images/star-wt5.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    SizedBox(
                                      // star2C1 (112:496)
                                      width: 15 * fem,
                                      height: 15 * fem,
                                      child: Image.asset(
                                        'assets/page-2/images/star-ywF.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    SizedBox(
                                      // starVbP (112:497)
                                      width: 15 * fem,
                                      height: 15 * fem,
                                      child: Image.asset(
                                        'assets/page-2/images/star-mRs.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    SizedBox(
                                      // star25X (112:498)
                                      width: 15 * fem,
                                      height: 15 * fem,
                                      child: Image.asset(
                                        'assets/page-2/images/star-j45.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Container(
                                      // staruf7 (112:494)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 15 * fem, 0 * fem),
                                      width: 15 * fem,
                                      height: 15 * fem,
                                      child: Image.asset(
                                        'assets/page-2/images/star-HGD.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Text(
                                      // xNV (112:492)
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
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // bookyourdate4Ad (112:502)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 179 * fem, 13 * fem),
                    child: Text(
                      'Book your date',
                      style: SafeGoogleFont(
                        'Montserrat',
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2175 * ffem / fem,
                        color: const Color(0xff7bcc70),
                      ),
                    ),
                  ),
                  SfDateRangePicker(
                    confirmText: '',
                    cancelText: '',
                    initialSelectedDate: selectedDate,
                    initialSelectedDates: selectedDates,
                    initialSelectedRanges: selectedRanges,
                    onCancel: () {},
                    onSelectionChanged: (args) {
                      setState(() {
                        if (args.value is DateTime) {
                          selectedDates = [args.value];
                          selectedDates.sort((a, b) => a.compareTo(b));
                        } else if (args.value is List<DateTime>) {
                          selectedDates = args.value;
                          selectedDates.sort((a, b) => a.compareTo(b));
                        } else {
                          selectedDates = args.value;
                          selectedDates.sort((a, b) => a.compareTo(b));
                        }
                      });
                    },
                    selectionMode: DateRangePickerSelectionMode.multiple,
                    selectionTextStyle: const TextStyle(color: Colors.white),
                    enablePastDates: false,
                    enableMultiView: true,
                    allowViewNavigation: true,
                    showActionButtons: true,
                    navigationDirection:
                        DateRangePickerNavigationDirection.vertical,
                    viewSpacing: 20,
                    rangeSelectionColor: Colors.pink.withOpacity(0.2),
                    startRangeSelectionColor: Colors.pink.withOpacity(0.7),
                    endRangeSelectionColor: Colors.pink.withOpacity(0.7),
                    view: DateRangePickerView.month,
                    headerStyle: const DateRangePickerHeaderStyle(
                      textAlign: TextAlign.center,
                    ),
                    monthCellStyle: DateRangePickerMonthCellStyle(
                      blackoutDatesDecoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Color(0xffcc7075),
                      ),
                      cellDecoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: primaryColorLight,
                      ),
                      blackoutDateTextStyle: const TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                      specialDatesTextStyle: const TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                      textStyle: const TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    monthViewSettings: DateRangePickerMonthViewSettings(
                        blackoutDates: disabledDates,
                        specialDates: speicialDates,
                        numberOfWeeksInView: 3),
                  ),
                  SizedBox(
                    // autogrouplvq5LGZ (5yRusJ1CywSb72TB1aLVQ5)
                    width: double.infinity,
                    // height: 615 * fem,
                    child: Column(
                      children: [
                        Positioned(
                          // autogroupshrrpSd (5yRsvMFQBhCvZCemBksHrR)
                          left: 241 * fem,
                          top: 0 * fem,
                          child: SizedBox(
                            width: 144 * fem,
                            height: 13 * fem,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // rectangle53SU1 (112:559)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 6 * fem, 1 * fem),
                                  width: 10 * fem,
                                  height: 10 * fem,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(2 * fem),
                                    color: const Color(0xffcc7075),
                                  ),
                                ),
                                Container(
                                  // occupiedvPB (112:561)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 15 * fem, 0 * fem),
                                  child: Text(
                                    'Occupied',
                                    style: SafeGoogleFont(
                                      'Montserrat',
                                      fontSize: 10 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2175 * ffem / fem,
                                      color: const Color(0xffcc7075),
                                    ),
                                  ),
                                ),
                                Container(
                                  // rectangle54Cbb (112:560)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 6 * fem, 1 * fem),
                                  width: 10 * fem,
                                  height: 10 * fem,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(2 * fem),
                                    color: const Color(0xff7bcc70),
                                  ),
                                ),
                                Text(
                                  // availabletDX (112:562)
                                  'Available',
                                  style: SafeGoogleFont(
                                    'Montserrat',
                                    fontSize: 10 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2175 * ffem / fem,
                                    color: const Color(0xff7bcc70),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Positioned(
                            // selecttimeZaZ (112:614)
                            left: 45 * fem,
                            top: 239 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 123 * fem,
                                height: 25 * fem,
                                child: Text(
                                  'Select Time',
                                  style: SafeGoogleFont(
                                    'Montserrat',
                                    fontSize: 20 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2175 * ffem / fem,
                                    color: const Color(0xff7bcc70),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Positioned(
                            // autogroupbyxt6wb (5yRtABBhHsLF3jZvS5bYXT)
                            left: 70 * fem,
                            top: 275 * fem,
                            child: SizedBox(
                              width: 291 * fem,
                              height: 26 * fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () => setState(() {
                                      isFullTime = true;
                                    }),
                                    child: Container(
                                      // autogroupxev5LL9 (5yRtKvQTVZK7U3AbSjxEv5)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 111 * fem, 0 * fem),
                                      width: 90 * fem,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        color: (isFullTime == false)
                                            ? const Color(0xffffffff)
                                            : const Color(0xff7bcc70),
                                        borderRadius:
                                            BorderRadius.circular(2 * fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: const Color(0x3f000000),
                                            offset: Offset(0 * fem, 1 * fem),
                                            blurRadius: 1 * fem,
                                          ),
                                        ],
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Full-Time',
                                          style: SafeGoogleFont(
                                            'Montserrat',
                                            fontSize: 10 * ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.2175 * ffem / fem,
                                            color: (isFullTime)
                                                ? const Color(0xffffffff)
                                                : const Color(0xff7bcc70),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () => setState(() {
                                      isFullTime = false;
                                    }),
                                    child: Container(
                                      // autogroupyqjmeVF (5yRtPW8phHmTynp898yQJm)
                                      width: 90 * fem,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        color: (isFullTime)
                                            ? const Color(0xffffffff)
                                            : const Color(0xff7bcc70),
                                        borderRadius:
                                            BorderRadius.circular(2 * fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: const Color(0x3f000000),
                                            offset: Offset(0 * fem, 1 * fem),
                                            blurRadius: 1 * fem,
                                          ),
                                        ],
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Select time',
                                          style: SafeGoogleFont(
                                            'Montserrat',
                                            fontSize: 10 * ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.2175 * ffem / fem,
                                            color: (isFullTime == false)
                                                ? const Color(0xffffffff)
                                                : const Color(0xff7bcc70),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        (isFullTime)
                            ? Container(
                                height: 0,
                              )
                            : Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Positioned(
                                  // autogroupn7ysb37 (5yRtXAaioWNGZmn95CN7ys)
                                  left: 45 * fem,
                                  top: 320 * fem,
                                  child: SizedBox(
                                    width: 340 * fem,
                                    height: 56 * fem,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        GestureDetector(
                                          onTap: () => selectStartTime(context),
                                          child: Container(
                                            // autogrouppkmwdEh (5yRtnjy6sKQvWyYehwpkmw)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 30 * fem, 0 * fem),
                                            width: 155 * fem,
                                            height: double.infinity,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  // rectangle56ty (112:622)
                                                  left: 0 * fem,
                                                  top: 11 * fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 155 * fem,
                                                      height: 45 * fem,
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10 * fem),
                                                          border: Border.all(
                                                              color: const Color(
                                                                  0xff009900)),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  // rectangle6Ma1 (112:623)
                                                  left: 14 * fem,
                                                  top: 3 * fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 88 * fem,
                                                      height: 15 * fem,
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5 * fem),
                                                          color: const Color(
                                                              0xffecf1fa),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  // starttimemdj (112:624)
                                                  left: 27 * fem,
                                                  top: 0 * fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 62 * fem,
                                                      height: 18 * fem,
                                                      child: Text(
                                                        'Start Time',
                                                        style: SafeGoogleFont(
                                                          'Poppins',
                                                          fontSize: 12 * ffem,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          height:
                                                              1.5 * ffem / fem,
                                                          color: const Color(
                                                              0xb2000000),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  // amCj3 (112:625)
                                                  left: 58 * fem,
                                                  top: 26 * fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 53 * fem,
                                                      height: 18 * fem,
                                                      child: Text(
                                                        startTime
                                                            .format(context),
                                                        style: SafeGoogleFont(
                                                          'Poppins',
                                                          fontSize: 12 * ffem,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          height:
                                                              1.5 * ffem / fem,
                                                          color: const Color(
                                                              0xb2000000),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  // clockbmB (112:627)
                                                  left: 27 * fem,
                                                  top: 27 * fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 15 * fem,
                                                      height: 15 * fem,
                                                      child: Image.asset(
                                                        'assets/page-2/images/clock.png',
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
                                          onTap: () => selectEndTime(context),
                                          child: SizedBox(
                                            // autogroupmsbf3NH (5yRtvVFCFzdQhNTVZYmsbf)
                                            width: 155 * fem,
                                            height: double.infinity,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  // rectangle55uQV (112:628)
                                                  left: 0 * fem,
                                                  top: 11 * fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 155 * fem,
                                                      height: 45 * fem,
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10 * fem),
                                                          border: Border.all(
                                                              color: const Color(
                                                                  0xff009900)),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  // rectangle56MGV (112:629)
                                                  left: 14 * fem,
                                                  top: 3 * fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 88 * fem,
                                                      height: 15 * fem,
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5 * fem),
                                                          color: const Color(
                                                              0xffecf1fa),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  // endtimeQEm (112:630)
                                                  left: 27 * fem,
                                                  top: 0 * fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 56 * fem,
                                                      height: 18 * fem,
                                                      child: Text(
                                                        'End Time',
                                                        style: SafeGoogleFont(
                                                          'Poppins',
                                                          fontSize: 12 * ffem,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          height:
                                                              1.5 * ffem / fem,
                                                          color: const Color(
                                                              0xb2000000),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  // pmJzM (112:631)
                                                  left: 58 * fem,
                                                  top: 26 * fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 51 * fem,
                                                      height: 18 * fem,
                                                      child: Text(
                                                        endTime.format(context),
                                                        style: SafeGoogleFont(
                                                          'Poppins',
                                                          fontSize: 12 * ffem,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          height:
                                                              1.5 * ffem / fem,
                                                          color: const Color(
                                                              0xb2000000),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  // clock7wo (112:632)
                                                  left: 27 * fem,
                                                  top: 27 * fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 15 * fem,
                                                      height: 15 * fem,
                                                      child: Image.asset(
                                                        'assets/page-2/images/clock-13w.png',
                                                        fit: BoxFit.contain,
                                                      ),
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
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Positioned(
                            // autogroupt7w1nHF (5yRuBZeQd3yy66Z3f2t7W1)
                            left: 25 * fem,
                            top: 393 * fem,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(
                                  10 * fem, 10 * fem, 52 * fem, 11 * fem),
                              width: 380 * fem,
                              height: 46 * fem,
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
                                    // infogmw (112:635)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 11 * fem, 0 * fem),
                                    width: 15 * fem,
                                    height: 15 * fem,
                                    child: Image.asset(
                                      'assets/page-2/images/info-qLV.png',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Container(
                                    // timewillbeassignedtoallselecte (112:636)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                    child: Text(
                                      'Time will be assigned to all selected days',
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
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Positioned(
                            // yourdatesselectednyP (112:601)
                            left: 46 * fem,
                            top: 487 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 211 * fem,
                                height: 25 * fem,
                                child: Text(
                                  'Your Dates Selected',
                                  style: SafeGoogleFont(
                                    'Montserrat',
                                    fontSize: 20 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2175 * ffem / fem,
                                    color: const Color(0xff7bcc70),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        (selectedDates.isNotEmpty)
                            ? Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Positioned(
                                  // autogroupponqyY5 (5yRuN9B7fL7fSXbyu8poNq)
                                  left: 45 * fem,
                                  top: 532 * fem,
                                  child: SizedBox(
                                    width: 340 * fem,
                                    height: 35 * fem,
                                    child: ListView.separated(
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemCount: selectedDates.length,
                                      itemBuilder: (context, index) =>
                                          buildDateCard(
                                              fem, ffem, selectedDates[index]),
                                      separatorBuilder: (context, index) =>
                                          const SizedBox(
                                        width: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            : Container(
                                height: 0,
                              ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Positioned(
                            // autogroupsrf7gcq (5yRueYsSZjK9KrpkmKsRf7)
                            left: 70 * fem,
                            top: 573 * fem,
                            child: GestureDetector(
                              onTap: () {
                                bookedDates.addAll(
                                    selectedDates.map((e) => e.toString()));
                                AppointmentModel appointmentModel =
                                    AppointmentModel(
                                  isCompleted: false,
                                  appointmentId: uuid.v1(),
                                  bookedById: loggedinUser!.uid,
                                  bookedByName: loggedinUser!.firstName! +
                                      loggedinUser!.firstName!,
                                  bookedDoctorName:
                                      widget.careProviderModel.firstName! +
                                          widget.careProviderModel.lastName!,
                                  bookedDoctorId: widget.careProviderModel.uid,
                                  startTime: startTime.toString(),
                                  endTime: startTime.toString(),
                                  isFullTime: isFullTime,
                                  isAccepted: false,
                                  phoneNo: loggedinUser!.phoneNo ?? '',
                                  address: loggedinUser!.phoneNo ?? '',
                                  latitude: '',
                                  longitude: '',
                                  cardNumber: '',
                                  cardExpiry: '',
                                  cardCvc: '',
                                  totalCost: widget.careProviderModel.charges,
                                  bookedDates: bookedDates,
                                );
                                navigate(
                                  context,
                                  AppointmentRequest(
                                    careProviderModel: widget.careProviderModel,
                                    appointmentModel: appointmentModel,
                                  ),
                                );
                              },
                              child: Container(
                                width: 290 * fem,
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
                                    'Confirm',
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
      ),
      bottomNavigationBar: bottomBar(fem, ffem, context, 0),
    );
  }

  Container buildDateCard(double fem, double ffem, DateTime date) {
    return Container(
      // autogrouprxjqe8R (5yRuVPU3MFe44SqsDURXJq)
      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
      width: 135 * fem,
      height: double.infinity,
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
      child: Center(
        child: Text(
          DateFormat('d-MMM-yyyy').format(date),
          style: SafeGoogleFont(
            'Montserrat',
            fontSize: 15 * ffem,
            fontWeight: FontWeight.w700,
            height: 1.2175 * ffem / fem,
            color: const Color(0xb2000000),
          ),
        ),
      ),
    );
  }

  Future<void> selectStartTime(BuildContext context) async {
    picked = await showTimePicker(
      context: context,
      initialTime: startTime,
    );
    setState(() {
      if (picked != null) {
        startTime = picked!;
      }
    });
  }

  Future<void> selectEndTime(BuildContext context) async {
    picked = await showTimePicker(
      context: context,
      initialTime: endTime,
    );
    setState(() {
      if (picked != null) {
        if ((picked!.hour + picked!.minute / 60.0) >
            (startTime.hour + startTime.minute / 60.0)) {
          endTime = picked!;
        } else {
          showCustomSnackbar(
              content: 'End-Time cannot be past Start-Time', context: context);
          endTime = startTime;
        }
      }
    });
  }
}

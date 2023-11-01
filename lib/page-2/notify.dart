import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:myapp/models/notification_model.dart';
import 'package:myapp/page-2/rate.dart';
import 'package:myapp/utils.dart';

import '../main.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  void initState() {
    uploadNotifications();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      backgroundColor: Color(0xffecf1fa),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Container(
              // notifypQ1 (146:667)
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xffecf1fa),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupdgghwjX (5yQo3Erjaaf1dkfF9eDGgH)
                    padding: EdgeInsets.fromLTRB(
                        25 * fem, 15 * fem, 137 * fem, 16 * fem),
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
                            // backrLh (146:674)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 87 * fem, 0 * fem),
                            width: 35 * fem,
                            height: 35 * fem,
                            child: Image.asset(
                              'assets/page-2/images/back-4Bb.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Container(
                          // notificationsyRK (146:819)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 2 * fem, 0 * fem),
                          child: Text(
                            'Notifications',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 20 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2175 * ffem / fem,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                        Container(
                          // 4xZ (146:854)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 0 * fem),
                          child: Text(
                            '19',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 8 * ffem,
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
                    // autogroupywy1PE9 (5yQpvSDncBCxUzvURyYWY1)
                    padding: EdgeInsets.fromLTRB(
                        46 * fem, 26 * fem, 45 * fem, 16 * fem),
                    width: double.infinity,
                    child: StreamBuilder<Object>(
                        stream: FirebaseFirestore.instance
                            .collection("notifications")
                            // .where('uid', isEqualTo: )
                            .snapshots(),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.active) {
                            if (snapshot.hasData) {
                              QuerySnapshot doctorsSnapshot =
                                  snapshot.data as QuerySnapshot;

                              return ListView.separated(
                                shrinkWrap: true,
                                itemCount: doctorsSnapshot.docs.length,
                                itemBuilder: (BuildContext context, int index) {
                                  NotificationModel notificationModel =
                                      NotificationModel.fromMap(
                                          doctorsSnapshot.docs[index].data()
                                              as Map<String, dynamic>);
                                  return buildNotificationCard(
                                      fem, ffem, notificationModel);
                                },
                                separatorBuilder:
                                    (BuildContext context, int index) {
                                  return const SizedBox(
                                    height: 10,
                                  );
                                },
                              );
                            } else if (snapshot.hasError) {
                              return Center(
                                child: Text(snapshot.error.toString()),
                              );
                            } else {
                              return Column(
                                children: [
                                  Center(
                                    child: Text(
                                      "No Notifications",
                                      style: SafeGoogleFont(
                                        'Montserrat',
                                        fontSize: 8 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2175 * ffem / fem,
                                        color: primaryColorLight,
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            }
                          } else {
                            return Center(
                              child: Text(
                                "No Notifications",
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 8 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2175 * ffem / fem,
                                  color: primaryColorLight,
                                ),
                              ),
                            );
                          }
                        }),
                  ),
                  // SizedBox(
                  //   // autogroupbzmpw9b (5yQoAuJdgoFpDjdG5hbzMP)
                  //   width: double.infinity,
                  //   height: 124 * fem,
                  //   child: Stack(
                  //     children: [
                  //       Positioned(
                  //         // mesasgecardHDT (146:964)
                  //         left: 46 * fem,
                  //         top: 0 * fem,
                  //         child: Container(
                  //           padding: EdgeInsets.fromLTRB(
                  //               20 * fem, 5 * fem, 12 * fem, 8 * fem),
                  //           width: 339 * fem,
                  //           height: 124 * fem,
                  //           decoration: BoxDecoration(
                  //             color: const Color(0xffffffff),
                  //             borderRadius: BorderRadius.circular(5 * fem),
                  //             boxShadow: [
                  //               BoxShadow(
                  //                 color: const Color(0x3f000000),
                  //                 offset: Offset(1 * fem, 1 * fem),
                  //                 blurRadius: 1.5 * fem,
                  //               ),
                  //             ],
                  //           ),
                  //           child: Column(
                  //             crossAxisAlignment: CrossAxisAlignment.center,
                  //             children: [
                  //               Container(
                  //                 // autogrouprsz5Kvq (5yQoQ9RZom5MZNvdsDRSz5)
                  //                 margin: EdgeInsets.fromLTRB(
                  //                     0 * fem, 0 * fem, 24 * fem, 6 * fem),
                  //                 width: double.infinity,
                  //                 child: Row(
                  //                   crossAxisAlignment: CrossAxisAlignment.end,
                  //                   children: [
                  //                     Container(
                  //                       // messagerfs (146:966)
                  //                       margin: EdgeInsets.fromLTRB(
                  //                           0 * fem, 0 * fem, 171 * fem, 2 * fem),
                  //                       child: Text(
                  //                         'Message',
                  //                         style: SafeGoogleFont(
                  //                           'Montserrat',
                  //                           fontSize: 20 * ffem,
                  //                           fontWeight: FontWeight.w700,
                  //                           height: 1.2175 * ffem / fem,
                  //                           color: const Color(0xb2000000),
                  //                         ),
                  //                       ),
                  //                     ),
                  //                     Container(
                  //                       // autogroupsnhfAwT (5yQoWUaMNdqEekmS2ZsnHF)
                  //                       margin: EdgeInsets.fromLTRB(
                  //                           0 * fem, 7 * fem, 0 * fem, 0 * fem),
                  //                       padding: EdgeInsets.fromLTRB(
                  //                           2 * fem, 2 * fem, 3 * fem, 3 * fem),
                  //                       decoration: BoxDecoration(
                  //                         color: const Color(0xffecf1fa),
                  //                         borderRadius:
                  //                             BorderRadius.circular(2 * fem),
                  //                         boxShadow: [
                  //                           BoxShadow(
                  //                             color: const Color(0x3f000000),
                  //                             offset: Offset(0 * fem, 0 * fem),
                  //                             blurRadius: 0.5 * fem,
                  //                           ),
                  //                         ],
                  //                       ),
                  //                       child: Center(
                  //                         // addbookmark4X3 (146:971)
                  //                         child: SizedBox(
                  //                           width: 15 * fem,
                  //                           height: 15 * fem,
                  //                           child: Image.asset(
                  //                             'assets/page-2/images/add-bookmark-pjK.png',
                  //                             fit: BoxFit.contain,
                  //                           ),
                  //                         ),
                  //                       ),
                  //                     ),
                  //                   ],
                  //                 ),
                  //               ),
                  //               Container(
                  //                 // loremipsumdolorsitametconsecte (146:967)
                  //                 margin: EdgeInsets.fromLTRB(
                  //                     0 * fem, 0 * fem, 0 * fem, 9 * fem),
                  //                 constraints: BoxConstraints(
                  //                   maxWidth: 307 * fem,
                  //                 ),
                  //                 child: RichText(
                  //                   text: TextSpan(
                  //                     style: SafeGoogleFont(
                  //                       'Montserrat',
                  //                       fontSize: 10 * ffem,
                  //                       fontWeight: FontWeight.w600,
                  //                       height: 1.2175 * ffem / fem,
                  //                       color: const Color(0xb2000000),
                  //                     ),
                  //                     children: [
                  //                       const TextSpan(
                  //                         text:
                  //                             'Lorem ipsum dolor sit amet consectetur. Nunc suspendisse\nac sollicitudin cursus. Diam id vestibulum nulla est. Arcu in\nerat volutpat sagittis. Pharetra bibendum urna diam phasel\nlus faucibus consequat ridiculus sed risus.... ',
                  //                       ),
                  //                       TextSpan(
                  //                         text: 'more',
                  //                         style: SafeGoogleFont(
                  //                           'Montserrat',
                  //                           fontSize: 10 * ffem,
                  //                           fontWeight: FontWeight.w600,
                  //                           height: 1.2175 * ffem / fem,
                  //                           color: const Color(0xff7bcc70),
                  //                         ),
                  //                       ),
                  //                     ],
                  //                   ),
                  //                 ),
                  //               ),
                  //               SizedBox(
                  //                 // autogroup6wywi7j (5yQocUQMog8PNUpvVk6Wyw)
                  //                 width: double.infinity,
                  //                 height: 20 * fem,
                  //                 child: Row(
                  //                   crossAxisAlignment: CrossAxisAlignment.center,
                  //                   children: [
                  //                     Container(
                  //                       // autogroupvqzxeXB (5yQontGgH32iY5zCtkvQZX)
                  //                       margin: EdgeInsets.fromLTRB(
                  //                           0 * fem, 0 * fem, 51 * fem, 0 * fem),
                  //                       padding: EdgeInsets.fromLTRB(
                  //                           6 * fem, 5 * fem, 6 * fem, 5 * fem),
                  //                       height: double.infinity,
                  //                       decoration: BoxDecoration(
                  //                         color: const Color(0xffecf1fa),
                  //                         borderRadius:
                  //                             BorderRadius.circular(5 * fem),
                  //                         boxShadow: [
                  //                           BoxShadow(
                  //                             color: const Color(0x3f000000),
                  //                             offset: Offset(0 * fem, 1 * fem),
                  //                             blurRadius: 1 * fem,
                  //                           ),
                  //                         ],
                  //                       ),
                  //                       child: Row(
                  //                         crossAxisAlignment:
                  //                             CrossAxisAlignment.center,
                  //                         children: [
                  //                           Container(
                  //                             // markreadX5B (146:974)
                  //                             margin: EdgeInsets.fromLTRB(0 * fem,
                  //                                 0 * fem, 9 * fem, 0 * fem),
                  //                             child: Text(
                  //                               'Mark Read',
                  //                               style: SafeGoogleFont(
                  //                                 'Montserrat',
                  //                                 fontSize: 8 * ffem,
                  //                                 fontWeight: FontWeight.w500,
                  //                                 height: 1.2175 * ffem / fem,
                  //                                 color: const Color(0xff7bcc70),
                  //                               ),
                  //                             ),
                  //                           ),
                  //                           SizedBox(
                  //                             // openenvelopeST3 (146:976)
                  //                             width: 10 * fem,
                  //                             height: 10 * fem,
                  //                             child: Image.asset(
                  //                               'assets/page-2/images/open-envelope-eZo.png',
                  //                               fit: BoxFit.contain,
                  //                             ),
                  //                           ),
                  //                         ],
                  //                       ),
                  //                     ),
                  //                     Container(
                  //                       // autogroupz9n1PNH (5yQot3njsVB3KgbS8VZ9n1)
                  //                       margin: EdgeInsets.fromLTRB(
                  //                           0 * fem, 3 * fem, 40 * fem, 2 * fem),
                  //                       width: 70 * fem,
                  //                       height: double.infinity,
                  //                       decoration: BoxDecoration(
                  //                         border: Border.all(
                  //                             color: const Color(0xff7bcc70)),
                  //                         borderRadius:
                  //                             BorderRadius.circular(2 * fem),
                  //                       ),
                  //                       child: Center(
                  //                         child: Text(
                  //                           'See details',
                  //                           style: SafeGoogleFont(
                  //                             'Montserrat',
                  //                             fontSize: 8 * ffem,
                  //                             fontWeight: FontWeight.w600,
                  //                             height: 1.2175 * ffem / fem,
                  //                             color: const Color(0xff7bcc70),
                  //                           ),
                  //                         ),
                  //                       ),
                  //                     ),
                  //                     Container(
                  //                       // autogroupqw6m3hj (5yQoxiKdmBdGYoXhpxqW6m)
                  //                       padding: EdgeInsets.fromLTRB(
                  //                           13 * fem, 5 * fem, 12 * fem, 5 * fem),
                  //                       height: double.infinity,
                  //                       decoration: BoxDecoration(
                  //                         color: const Color(0xffecf1fa),
                  //                         borderRadius:
                  //                             BorderRadius.circular(5 * fem),
                  //                         boxShadow: [
                  //                           BoxShadow(
                  //                             color: const Color(0x3f000000),
                  //                             offset: Offset(0 * fem, 1 * fem),
                  //                             blurRadius: 1 * fem,
                  //                           ),
                  //                         ],
                  //                       ),
                  //                       child: Row(
                  //                         crossAxisAlignment:
                  //                             CrossAxisAlignment.center,
                  //                         children: [
                  //                           Container(
                  //                             // deleteY8h (146:975)
                  //                             margin: EdgeInsets.fromLTRB(0 * fem,
                  //                                 0 * fem, 9 * fem, 0 * fem),
                  //                             child: Text(
                  //                               'Delete',
                  //                               style: SafeGoogleFont(
                  //                                 'Montserrat',
                  //                                 fontSize: 8 * ffem,
                  //                                 fontWeight: FontWeight.w500,
                  //                                 height: 1.2175 * ffem / fem,
                  //                                 color: const Color(0xffeb3223),
                  //                               ),
                  //                             ),
                  //                           ),
                  //                           SizedBox(
                  //                             // deleteFYu (146:977)
                  //                             width: 10 * fem,
                  //                             height: 10 * fem,
                  //                             child: Image.asset(
                  //                               'assets/page-2/images/delete-sbF.png',
                  //                               fit: BoxFit.contain,
                  //                             ),
                  //                           ),
                  //                         ],
                  //                       ),
                  //                     ),
                  //                   ],
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: (isClient)
          ? bottomBar(fem, ffem, context, 1)
          : bottomBarCareProvider(fem, ffem, context, 1),
    );
  }

  StatefulBuilder buildNotificationCard(
      double fem, double ffem, NotificationModel notificationModel) {
    bool isExpanded = false;
    String normalText =
        'Lorem ipsum dolor sit amet consectetur. Nunc suspendisse\nac sollicitudin cursus. Diam id vestibulum nulla est. Arcu in\nerat volutpat sagittis. Pharetra bibendum urna diam phasel\nlus faucibus consequat ridiculus sed risus.... ';

    String expandedText =
        'Lorem ipsum dolor sit amet consectetur. Nunc suspendisse\nac sollicitudin cursus. Diam id vestibulum nulla est. Arcu in\nerat volutpat sagittis. Pharetra bibendum urna diam phasel\nlus faucibus consequat ridiculus sed risusLorem ipsum dolor sit amet consectetur. Nunc suspendisse\nac sollicitudin cursus. Diam id vestibulum nulla est. Arcu in\nerat volutpat sagittis. Pharetra bibendum urna diam phasel\nlus faucibus consequat ridiculus sed risusLorem ipsum dolor sit amet consectetur. Nunc suspendisse\nac sollicitudin cursus. Diam id vestibulum nulla est. Arcu in\nerat volutpat sagittis. Pharetra bibendum urna diam phasel\nlus faucibus consequat ridiculus sed risusLorem ipsum dolor sit amet consectetur. Nunc suspendisse\nac sollicitudin cursus. Diam id vestibulum nulla est. Arcu in\nerat volutpat sagittis. Pharetra bibendum urna diam phasel\nlus faucibus consequat ridiculus sed risus';
    return StatefulBuilder(builder: (context, state) {
      return GestureDetector(
        onTap: () => navigate(context, const RateUser()),
        child: Container(
          // mesasgecardVY5 (146:907)
          padding: EdgeInsets.fromLTRB(20 * fem, 5 * fem, 12 * fem, 8 * fem),
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
                // autogroup5vlqmEh (5yQqEG3RLNs3TMDHzR5vLq)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 24 * fem, 6 * fem),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      // messagetaD (146:840)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 171 * fem, 2 * fem),
                      child: Text(
                        'Message',
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
                      // autogroupxg9ooBP (5yQqKktG4fU6cbbpvKxG9o)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 7 * fem, 0 * fem, 0 * fem),
                      padding: EdgeInsets.fromLTRB(
                          2 * fem, 2 * fem, 3 * fem, 3 * fem),
                      decoration: BoxDecoration(
                        color: const Color(0xffecf1fa),
                        borderRadius: BorderRadius.circular(2 * fem),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x3f000000),
                            offset: Offset(0 * fem, 0 * fem),
                            blurRadius: 0.5 * fem,
                          ),
                        ],
                      ),
                      child: Center(
                        // addbookmarkgW5 (146:853)
                        child: SizedBox(
                          width: 15 * fem,
                          height: 15 * fem,
                          child: Image.asset(
                            'assets/page-2/images/add-bookmark-Dgm.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // loremipsumdolorsitametconsecte (146:841)
                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 9 * fem),
                constraints: BoxConstraints(
                  maxWidth: 307 * fem,
                ),
                child: RichText(
                  text: TextSpan(
                    style: SafeGoogleFont(
                      'Montserrat',
                      fontSize: 12 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2175 * ffem / fem,
                      color: const Color(0xb2000000),
                    ),
                    children: [
                      TextSpan(text: (isExpanded) ? expandedText : normalText),
                      TextSpan(
                        text: (isExpanded) ? '' : 'more',
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
              SizedBox(
                // autogroupp17p77X (5yQqRLZJ5QgqNFwBmnP17P)
                width: double.infinity,
                height: 20 * fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroup1knyt1o (5yQqZLKyKTkNKtgWQ21KNy)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 51 * fem, 0 * fem),
                      padding: EdgeInsets.fromLTRB(
                          6 * fem, 5 * fem, 6 * fem, 5 * fem),
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
                            // markreadvz5 (146:903)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 9 * fem, 0 * fem),
                            child: Text(
                              'Mark Read',
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
                            // openenvelopeShX (146:897)
                            width: 10 * fem,
                            height: 10 * fem,
                            child: Image.asset(
                              'assets/page-2/images/open-envelope-gVP.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () => state(() {
                        isExpanded = !isExpanded;
                      }),
                      child: Container(
                        // autogroupkrthaoj (5yQqefWRUq84JKBPUqkrth)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 3 * fem, 40 * fem, 2 * fem),
                        width: 70 * fem,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xff7bcc70)),
                          borderRadius: BorderRadius.circular(2 * fem),
                        ),
                        child: Center(
                          child: Text(
                            (isExpanded) ? 'See less' : 'See details',
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
                    ),
                    Container(
                      // autogrouplrs1Tcd (5yQqiL4yy2C6QUmk6nLRS1)
                      padding: EdgeInsets.fromLTRB(
                          13 * fem, 5 * fem, 12 * fem, 5 * fem),
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
                            // deletek5w (146:905)
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
                            // deletefTo (146:896)
                            width: 10 * fem,
                            height: 10 * fem,
                            child: Image.asset(
                              'assets/page-2/images/delete-6YH.png',
                              fit: BoxFit.contain,
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
      );
    });
  }

  Future<void> uploadNotifications() async {
    for (var notification in NotificationModel.pastNotifications) {
      await FirebaseFirestore.instance
          .collection("notifications")
          .doc(notification.id)
          .set(notification.toMap());
    }
  }
}

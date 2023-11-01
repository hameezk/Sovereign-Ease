// ignore_for_file: use_build_context_synchronously

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:myapp/main.dart';
import 'package:myapp/models/care_provider_model.dart';
import 'package:myapp/models/user_model.dart';
import 'package:myapp/page-2/create_account_care_provider1.dart';
import 'package:myapp/page-2/create_account_client.dart';
import 'package:myapp/page-2/main-screen-pTj.dart';
import 'package:myapp/page-2/main-screen.dart';
import 'package:myapp/page-2/reset_password.dart';
import 'package:myapp/page-2/verify-email.dart';
import 'package:myapp/utils.dart';

import '../helpers/ui_helper.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GoogleSignIn _googleSignIn =
      GoogleSignIn(scopes: ['https://www.googleapis.com/auth/cloud-platform']);
  bool showPass = true;
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
            // signinJED (19:74)
            padding:
                EdgeInsets.fromLTRB(25 * fem, 41 * fem, 37.87 * fem, 146 * fem),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xffecf1fa),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    // downbuttonaxR (19:92)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 332.13 * fem, 37.87 * fem),
                    width: 35 * fem,
                    height: 35 * fem,
                    child: Image.asset(
                      'assets/images/backButton.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Container(
                  // autogroupmsahJNd (5yPZNDT3iBjxNqfMSTmsaH)
                  margin:
                      EdgeInsets.fromLTRB(18 * fem, 0 * fem, 0 * fem, 15 * fem),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // heyloginheredQu (19:94)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 7.13 * fem, 36.87 * fem, 0 * fem),
                        constraints: BoxConstraints(
                          maxWidth: 208 * fem,
                        ),
                        child: Text(
                          'Discover\nour offerings',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 36 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.5 * ffem / fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                      SizedBox(
                        // image3vQ1 (19:96)
                        width: 104.26 * fem,
                        height: 104.26 * fem,
                        child: Image.asset(
                          'assets/page-2/images/image-3.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // newherecreateaccountFhB (19:97)
                  margin: EdgeInsets.fromLTRB(
                      0 * fem, 0 * fem, 130.13 * fem, 45 * fem),
                  child: RichText(
                    text: TextSpan(
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.5 * ffem / fem,
                        color: const Color(0xff000000),
                      ),
                      children: [
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => navigate(
                                context,
                                (isClient)
                                    ? const CreateAccountClient()
                                    : const CreateAccountCareProvider1()),
                          text: 'Register',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 14 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.5 * ffem / fem,
                            color: const Color(0xff009900),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  // autogroupjytdTaH (5yPZWo35wT7GVN2TXWJytD)
                  margin: EdgeInsets.fromLTRB(
                      20 * fem, 0 * fem, 7.13 * fem, 31 * fem),
                  width: double.infinity,
                  height: 56 * fem,
                  child: Stack(
                    children: [
                      Positioned(
                        // rectangle5BFP (19:98)
                        left: 0 * fem,
                        top: 11 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 340 * fem,
                            height: 45 * fem,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10 * fem),
                                border:
                                    Border.all(color: const Color(0xff009900)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // rectangle6Gnd (19:99)
                        left: 14 * fem,
                        top: 3 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 60 * fem,
                            height: 15 * fem,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5 * fem),
                                color: const Color(0xffecf1fa),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // emailAt1 (19:100)
                        left: 27 * fem,
                        top: 0 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 34 * fem,
                            height: 18 * fem,
                            child: Text(
                              'Email',
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
                        // sovereigngmailcomrF3 (19:103)
                        left: 27 * fem,
                        top: 25 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 320 * fem,
                            height: 18 * fem,
                            child: TextField(
                                controller: emailController,
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
                StatefulBuilder(builder: (context, state) {
                  return Container(
                    // autogroupsgxjjZj (5yPZg86sir1iwbtzvSsgXj)
                    margin: EdgeInsets.fromLTRB(
                        20 * fem, 0 * fem, 7.13 * fem, 20 * fem),
                    width: double.infinity,
                    height: 56 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // rectangle7fTP (19:104)
                          left: 0 * fem,
                          top: 11 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 340 * fem,
                              height: 45 * fem,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10 * fem),
                                  border: Border.all(
                                      color: const Color(0xff009900)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle8mmK (19:105)
                          left: 14 * fem,
                          top: 3 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 83 * fem,
                              height: 15 * fem,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5 * fem),
                                  color: const Color(0xffecf1fa),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // passwordh9B (19:106)
                          left: 27 * fem,
                          top: 0 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 75 * fem,
                              height: 18 * fem,
                              child: Text(
                                'Password',
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
                          // bVT (19:107)
                          left: 27 * fem,
                          top: 18 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 300 * fem,
                              height: 25 * fem,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextField(
                                        controller: passwordController,
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 12 * ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.5 * ffem / fem,
                                          color: const Color(0xff000000),
                                        ),
                                        obscureText: showPass,
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: GestureDetector(
                                      onTap: () => state(() {
                                        showPass = !showPass;
                                      }),
                                      child: Icon(
                                        (showPass == false)
                                            ? Icons.visibility_off
                                            : Icons.visibility,
                                        size: 20,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
                GestureDetector(
                  onTap: () => navigate(context, const ResetPassword()),
                  child: Container(
                    // forgotpasswordJPs (19:108)
                    margin: EdgeInsets.fromLTRB(
                        227.87 * fem, 0 * fem, 0 * fem, 56 * fem),
                    child: Text(
                      'Forgot Password?',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.5 * ffem / fem,
                        color: const Color(0xff009900),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => checkValues(context),
                  // navigate(
                  //     context,
                  //     (isClient)
                  //         ? const HomePage()
                  //         : const MainScreenCareProvider()),
                  child: Container(
                    // buttonDWq (19:113)
                    margin: EdgeInsets.fromLTRB(
                        45 * fem, 0 * fem, 32.13 * fem, 65 * fem),
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
                        'Login',
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
                Container(
                  // autogroupv1k7fNq (5yPZoHZc8JvRy7C4KEv1K7)
                  margin: EdgeInsets.fromLTRB(
                      90 * fem, 0 * fem, 77.13 * fem, 65 * fem),
                  width: double.infinity,
                  height: 21 * fem,
                  child: Stack(
                    children: [
                      Positioned(
                        // rectangle9No3 (19:118)
                        left: 84 * fem,
                        top: 3 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 32 * fem,
                            height: 15 * fem,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5 * fem),
                                color: const Color(0xffecf1fa),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // orry7 (19:119)
                        left: 90 * fem,
                        top: 0 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 21 * fem,
                            height: 21 * fem,
                            child: Text(
                              'OR',
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.5 * ffem / fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // autogrouph9arm4V (5yPZuNDoqoqGHFCNhxh9AR)
                  margin: EdgeInsets.fromLTRB(
                      130 * fem, 0 * fem, 116.13 * fem, 0 * fem),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // image4H2q (19:121)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 21 * fem, 0 * fem),
                        width: 50 * fem,
                        height: 50 * fem,
                        child: Image.asset(
                          'assets/page-2/images/image-4.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => signInWithGoogle(context),
                        child: SizedBox(
                          // image5oWy (19:123)
                          width: 50 * fem,
                          height: 50 * fem,
                          child: Image.asset(
                            'assets/page-2/images/image-5.png',
                            fit: BoxFit.cover,
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
    );
  }

  void checkValues(context) {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    if (email.isEmpty || password.isEmpty) {
      showCustomSnackbar(
          context: context, content: 'please fill all The fields');
    } else {
      login(email, password, context);
    }
  }

  login(email, password, context) async {
    UserCredential? credentials;
    bool isVerified = false;
    showLoadingDialog(context, 'Logging in...');
    try {
      print('logging in');
      credentials = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (ex) {
      print('login exception: ${ex.message}');
      showCustomSnackbar(
        context: context,
        content: ex.code.toString(),
      );
      Navigator.pop(context);
    }

    if (credentials != null) {
      String uid = credentials.user!.uid;

      if (isClient == false) {
        DocumentSnapshot userData = await FirebaseFirestore.instance
            .collection('staffMembers')
            .doc(uid)
            .get();
        CareProviderModel userModel =
            CareProviderModel.fromMap(userData.data() as Map<String, dynamic>);

        loggedinUserCareProvider = userModel;
        isVerified = userModel.isEmailVerified ?? false;
      } else {
        DocumentSnapshot userData =
            await FirebaseFirestore.instance.collection('users').doc(uid).get();
        UserModel userModel =
            UserModel.fromMap(userData.data() as Map<String, dynamic>);
        isVerified = userModel.isEmailVerified ?? false;

        loggedinUser = userModel;
      }

      showCustomSnackbar(
        context: context,
        content: 'Login Sucessful!',
      );
      Navigator.popUntil(context, (route) => route.isFirst);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return (isVerified)
                ? (isClient)
                    ? const HomePage()
                    : const MainScreenCareProvider()
                : VerifyEmail(
                    email: email,
                  );
          },
        ),
      );
    }
    void resetPass(email, context) async {
      try {
        await FirebaseAuth.instance
            .sendPasswordResetEmail(email: emailController.text.trim())
            .then(
          (value) {
            showCustomSnackbar(
                content: "Reset link sent on ${emailController.text.trim()}!",
                context: context);
            Navigator.popUntil(context, (route) => route.isFirst);
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const LoginScreen();
                },
              ),
            );
          },
        );
      } on FirebaseAuthException catch (ex) {
        showCustomSnackbar(content: ex.message.toString(), context: context);
      }
    }
  }

  Future<UserCredential> signInWithGoogle(BuildContext context) async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth =
        await googleUser!.authentication;

    // Create a new credential
    final OAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    // Sign in to Firebase using the credential
    final UserCredential userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);
    setState(() {
      // isGoogleLoading = true;
    });
    // Check if the user is new (i.e., if this is their first sign-in)
    // if (userCredential.additionalUserInfo!.isNewUser) {
    // showLoaderDialog(context);
    if (true) {
      // If the user is new, obtain their user information from Google and add it to Firestore
      final GoogleSignInAccount currentUser = _googleSignIn.currentUser!;
      print("Email " + currentUser.email);

      if (isClient) {
        UserModel googleUserModel = UserModel(
          uid: userCredential.user!.uid,
          firstName: currentUser.displayName,
          email: currentUser.email,
          profilePic: currentUser.photoUrl,
          lastName: '',
          dateOfBirth: '',
          phoneNo: '',
          isEmailVerified: false,
          isphoneVerified: false,
          address: '',
          emergencyContact: '',
        );

        await FirebaseFirestore.instance
            .collection("users")
            .doc(googleUserModel.uid)
            .set(googleUserModel.toMap())
            .then(
          (value) {
            loggedinUser = googleUserModel;
            Navigator.pop(context);
            showCustomSnackbar(context: context, content: 'New user created!');
            loggedinUser = googleUserModel;
            Navigator.popUntil(context, (route) => route.isFirst);
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return VerifyEmail(
                    email: googleUserModel.email ?? '',
                  );
                },
              ),
            );
          },
        );
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            duration: Duration(seconds: 1),
            content: Text("Logged in with Google!"),
          ),
        );

        loggedinUser = googleUserModel;
      } else {
        CareProviderModel googleUserModel = CareProviderModel(
          uid: userCredential.user!.uid,
          firstName: currentUser.displayName,
          email: currentUser.email,
          profilePic: currentUser.photoUrl,
          lastName: '',
          dateOfBirth: '',
          phoneNo: '',
          isEmailVerified: false,
          address: '',
          emergencyContact: '',
          ssn: '',
          licenseNumber: '',
          licenseExpiry: '',
          workExperience: '',
          jobTitle: '',
          jobRole: '',
          prefferedShifft: '',
          availablity: '',
          reference: '',
          serviceCategory: '',
          typeOfService: '',
          charges: '',
          bookedDates: [],
          ratings: [],
        );

        await FirebaseFirestore.instance
            .collection("staffMembers")
            .doc(googleUserModel.uid)
            .set(googleUserModel.toMap())
            .then(
          (value) {
            loggedinUserCareProvider = googleUserModel;
            Navigator.pop(context);
            showCustomSnackbar(context: context, content: 'User updated!');
            loggedinUserCareProvider = googleUserModel;
            navigate(
              context,
              VerifyEmail(email: googleUserModel.email ?? ''),
            );
          },
        );

        loggedinUserCareProvider = googleUserModel;

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            duration: Duration(seconds: 1),
            content: Text("Logged in with Google!"),
          ),
        );
      }
    }

    print("Signed in successfully");
    return userCredential;
  }
}

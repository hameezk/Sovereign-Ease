import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp/models/care_provider_model.dart';
import 'package:myapp/models/user_model.dart';
// import 'package:myapp/page-2/main-screen-pTj.dart';
// import 'package:myapp/page-2/main-screen.dart';
import 'package:myapp/page-2/splash-screen.dart';
import 'package:firebase_core/firebase_core.dart';

bool isClient = false;
UserModel? loggedinUser;
CareProviderModel? loggedinUserCareProvider;

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // to ensure initialized WidgetsFlutterBinding
  await Firebase
      .initializeApp(); // to wait for firebase to initialize the app from console.firebase.google.com

  // User? currentUser = FirebaseAuth.instance
  //     .currentUser; // to store info about logged in user (if any) i.e. email/password

  // if (currentUser != null) {
  //   UserModel? thisUserModel =
  //       await FirebaseHelper.getUserModelById(currentUser.uid);
  //   loggedinUser = thisUserModel;
  //   if (thisUserModel != null) {
  //     runApp(
  //         MyAppLoggedIn(userModel: thisUserModel, firebaseUser: currentUser));
  //   }
  // } else {
  //   runApp(const MyApp());
  // }
  runApp(const MyApp());
}

class MyAppLoggedIn extends StatelessWidget {
  final UserModel userModel;
  final User firebaseUser;

  const MyAppLoggedIn(
      {Key? key, required this.userModel, required this.firebaseUser})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: SplashScreen()),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: SplashScreen()),
    );
  }
}

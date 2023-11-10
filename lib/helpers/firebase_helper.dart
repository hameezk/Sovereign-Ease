import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:myapp/models/care_provider_model.dart';

import '../models/user_model.dart';

class FirebaseHelper {
  static Future<UserModel?> getUserModelById(String uid) async {
    UserModel? userModel;
    DocumentSnapshot docsnap =
        await FirebaseFirestore.instance.collection("users").doc(uid).get();

    if (docsnap.data() != null) {
      userModel = UserModel.fromMap(docsnap.data() as Map<String, dynamic>);
    }
    return userModel;
  }

  static Future<CareProviderModel?> getCareProviderModelById(String uid) async {
    CareProviderModel? userModel;
    DocumentSnapshot docsnap =
        await FirebaseFirestore.instance.collection("staffMembers").doc(uid).get();

    if (docsnap.data() != null) {
      userModel = CareProviderModel.fromMap(docsnap.data() as Map<String, dynamic>);
    }
    return userModel;
  }
}

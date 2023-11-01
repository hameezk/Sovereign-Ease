class UserModel {
  String? uid;
  String? firstName;
  String? email;
  String? profilePic;
  String? lastName;
  String? dateOfBirth;
  String? address;
  String? emergencyContact;
  String? phoneNo;
  bool? isEmailVerified;
  bool? isphoneVerified;

  UserModel({
    required this.uid,
    required this.firstName,
    required this.email,
    required this.profilePic,
    required this.lastName,
    required this.dateOfBirth,
    required this.phoneNo,
    required this.isEmailVerified,
    required this.isphoneVerified,
    required this.address,
    required this.emergencyContact,
  });

  UserModel.fromMap(Map<String, dynamic> map) {
    uid = map["uid"];
    firstName = map["firstName"];
    email = map["email"];
    profilePic = map["profilePic"];
    lastName = map["lastName"];
    dateOfBirth = map["dateOfBirth"];
    phoneNo = map["phoneNo"];
    isEmailVerified = map["isEmailVerified"];
    isphoneVerified = map["isphoneVerified"];
    address = map["address"];
    emergencyContact = map["emergencyContact"];
  }

  Map<String, dynamic> toMap() {
    return {
      "uid": uid,
      "firstName": firstName,
      "email": email,
      "profilePic": profilePic,
      "lastName": lastName,
      "dateOfBirth": dateOfBirth,
      "phoneNo": phoneNo,
      "isEmailVerified": isEmailVerified,
      "isphoneVerified": isphoneVerified,
      "address": address,
      "emergencyContact": emergencyContact,
    };
  }

}

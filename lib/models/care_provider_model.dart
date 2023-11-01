class CareProviderModel {
  String? uid;
  String? firstName;
  String? email;
  String? profilePic;
  String? lastName;
  String? dateOfBirth;
  String? phoneNo;
  String? address;
  String? emergencyContact;
  String? ssn;
  String? licenseNumber;
  String? licenseExpiry;
  String? workExperience;
  String? jobTitle;
  String? jobRole;
  String? prefferedShifft;
  String? availablity;
  String? reference;
  String? serviceCategory;
  String? typeOfService;
  String? charges;
  bool? isEmailVerified;
  List? bookedDates;
  List? ratings;

  CareProviderModel({
    required this.uid,
    required this.firstName,
    required this.email,
    required this.profilePic,
    required this.lastName,
    required this.dateOfBirth,
    required this.phoneNo,
    required this.address,
    required this.emergencyContact,
    required this.ssn,
    required this.licenseNumber,
    required this.licenseExpiry,
    required this.workExperience,
    required this.jobTitle,
    required this.jobRole,
    required this.prefferedShifft,
    required this.availablity,
    required this.reference,
    required this.serviceCategory,
    required this.typeOfService,
    required this.charges,
    required this.isEmailVerified,
    required this.bookedDates,
    required this.ratings,
  });

  CareProviderModel.fromMap(Map<String, dynamic> map) {
    uid = map["uid"];
    firstName = map["firstName"];
    email = map["email"];
    profilePic = map["profilePic"];
    lastName = map["lastName"];
    dateOfBirth = map["dateOfBirth"];
    phoneNo = map["phoneNo"];
    address = map["address"];
    emergencyContact = map["emergencyContact"];
    ssn = map["ssn"];
    licenseNumber = map["licenseNumber"];
    licenseExpiry = map["licenseExpiry"];
    workExperience = map["workExperience"];
    jobTitle = map["jobTitle"];
    jobRole = map["jobRole"];
    prefferedShifft = map["prefferedShifft"];
    availablity = map["availablity"];
    reference = map["reference"];
    serviceCategory = map["serviceCategory"];
    typeOfService = map["typeOfService"];
    charges = map["charges"];
    isEmailVerified = map["isEmailVerified"];
    bookedDates = map["bookedDates"];
    ratings = map["ratings"] ?? [];
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
      "address": address,
      "emergencyContact": emergencyContact,
      "ssn": ssn,
      "licenseNumber": licenseNumber,
      "licenseExpiry": licenseExpiry,
      "workExperience": workExperience,
      "jobTitle": jobTitle,
      "jobRole": jobRole,
      "prefferedShifft": prefferedShifft,
      "availablity": availablity,
      "reference": reference,
      "serviceCategory": serviceCategory,
      "typeOfService": typeOfService,
      "charges": charges,
      "isEmailVerified": isEmailVerified,
      "bookedDates": bookedDates,
      "ratings": ratings,
    };
  }
}

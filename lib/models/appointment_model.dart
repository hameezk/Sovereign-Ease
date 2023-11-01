class AppointmentModel {
  String? appointmentId;
  String? bookedById;
  String? bookedByName;
  String? bookedDoctorName;
  String? bookedDoctorId;
  String? startTime;
  String? endTime;
  bool? isFullTime;
  bool? isAccepted;
  bool? isCompleted;
  String? phoneNo;
  String? address;
  String? cardNumber;
  String? cardExpiry;
  String? cardCvc;
  String? totalCost;
  String? longitude;
  String? latitude;
  List? bookedDates; 

  AppointmentModel({
    required this.appointmentId,
    required this.bookedById,
    required this.bookedByName,
    required this.bookedDoctorName,
    required this.bookedDoctorId,
    required this.startTime,
    required this.endTime,
    required this.isFullTime,
    required this.isAccepted,
    required this.phoneNo,
    required this.address,
    required this.cardNumber,
    required this.cardExpiry,
    required this.cardCvc,
    required this.totalCost,
    required this.bookedDates,
    required this.longitude,
    required this.latitude,
    required this.isCompleted,
  });

  AppointmentModel.fromMap(Map<String, dynamic> map) {
    appointmentId = map["appointmentId"];
    bookedById = map["bookedById"];
    bookedByName = map["bookedByName"];
    bookedDoctorName = map["bookedDoctorName"];
    bookedDoctorId = map["bookedDoctorId"];
    startTime = map["startTime"];
    endTime = map["endTime"];
    isFullTime = map["isFullTime"];
    isAccepted = map["isAccepted"];
    phoneNo = map["phoneNo"];
    address = map["address"];
    cardNumber = map["cardNumber"];
    cardExpiry = map["cardExpiry"];
    cardCvc = map["cardCvc"];
    totalCost = map["totalCost"];
    bookedDates = map["bookedDates"];
    longitude = map["longitude"];
    latitude = map["latitude"];
    isCompleted = map["isCompleted"]??false;
  }

  Map<String, dynamic> toMap() {
    return {
      "appointmentId": appointmentId,
      "bookedById": bookedById,
      "bookedByName": bookedByName,
      "bookedDoctorName": bookedDoctorName,
      "bookedDoctorId": bookedDoctorId,
      "startTime": startTime,
      "endTime": endTime,
      "isFullTime": isFullTime,
      "isAccepted": isAccepted,
      "phoneNo": phoneNo,
      "address": address,
      "cardNumber": cardNumber,
      "cardExpiry": cardExpiry,
      "cardCvc": cardCvc,
      "totalCost": totalCost,
      "bookedDates": bookedDates,
      "longitude": longitude,
      "latitude": latitude,
      "isCompleted": isCompleted,
    };
  }
}

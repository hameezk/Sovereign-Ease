

class NotificationModel {
  String? id;
  String? title;
  String? body;
  String? payload;
  String? image;
  // NotificationDetails? notificationDetails;
  String? timeStamp;

  NotificationModel({
    this.id,
    this.title,
    this.body,
    this.payload,
    this.image,
    // this.notificationDetails,
    this.timeStamp,
  });

  NotificationModel.fromMap(Map<String, dynamic> map) {
    id = map["id"];
    title = map["title"];
    body = map["body"];
    payload = map["payload"];
    image = map["image"];
    timeStamp = map["timeStamp"];
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id ?? '',
      "title": title ?? '',
      "body": body ?? '',
      "payload": payload ?? '',
      "image": image ?? '',
      "timeStamp": timeStamp ?? '',
    };
  }

  static List<NotificationModel> pastNotifications = [
    NotificationModel(
      id: '1',
      title: 'Demo Notification',
      body: 'This is a demo Notification',
      timeStamp: DateTime.now().toString(),
    ),
    NotificationModel(
      id: '2',
      title: 'Demo Notification',
      body: 'This is a demo Notification',
      timeStamp: DateTime.now().toString(),
    ),
    NotificationModel(
      id: '3',
      title: 'Demo Notification',
      body: 'This is a demo Notification',
      timeStamp: DateTime.now().toString(),
    ),
    NotificationModel(
      id: '4',
      title: 'Demo Notification',
      body: 'This is a demo Notification',
      timeStamp: DateTime.now().toString(),
    ),
  ];
}

class ChatUser {
  ChatUser({
    required this.image,
    required this.name,
    required this.about,
    required this.createdAt,
    required this.lastActive,
    required this.id,
    required this.isOline,
    required this.email,
    required this.pushToken,
  });
  late  String image;
  late  String name;
  late  String about;
  late  String createdAt;
  late  String lastActive;
  late  String id;
  late  bool isOline;
  late  String email;
  late  String pushToken;

  ChatUser.fromJson(Map<String, dynamic> json){
    image = json['image'] ?? '';
    name = json['name'] ?? '';
    about = json['about'] ?? '';
    createdAt = json['created_at'] ?? '';
    lastActive = json['last_active'] ?? '';
    id = json['id'] ?? '';
    isOline = json['is_oline'] ?? '';
    email = json['email'] ?? '';
    pushToken = json['push_token'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['image'] = image;
    data['name'] = name;
    data['about'] = about;
    data['created_at'] = createdAt;
    data['last_active'] = lastActive;
    data['id'] = id;
    data['is_oline'] = isOline;
    data['email'] = email;
    data['push_token'] = pushToken;
    return data;
  }
}

// class ChatUser {
//   ChatUser({
//     required this.image,
//     required this.about,
//     required this.name,
//     required this.createdAt,
//     required this.isOnline,
//     required this.id,
//     required this.lastActive,
//     required this.email,
//     required this.pushToken,
//   });
//   late String image;
//   late String about;
//   late String name;
//   late String createdAt;
//   late bool isOnline;
//   late String id;
//   late String lastActive;
//   late String email;
//   late String pushToken;
//
//   ChatUser.fromJson(Map<String, dynamic> json) {
//     image = json['image'] ?? '';
//     about = json['about'] ?? '';
//     name = json['name'] ?? '';
//     createdAt = json['created_at'] ?? '';
//     isOnline = json['is_online'] ?? '';
//     id = json['id'] ?? '';
//     lastActive = json['last_active'] ?? '';
//     email = json['email'] ?? '';
//     pushToken = json['push_token'] ?? '';
//   }
//
//   Map<String, dynamic> toJson() {
//     final data = <String, dynamic>{};
//     data['image'] = image;
//     data['about'] = about;
//     data['name'] = name;
//     data['created_at'] = createdAt;
//     data['is_online'] = isOnline;
//     data['id'] = id;
//     data['last_active'] = lastActive;
//     data['email'] = email;
//     data['push_token'] = pushToken;
//     return data;
//   }
// }

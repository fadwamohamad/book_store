class UserModel {
  String? id;
  String? name;
  String? email;
  String? phone;
  bool? isEmailVerified;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.isEmailVerified,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    isEmailVerified = json['isEmailVerified'];
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'phone': phone,
      'isEmailVerified': isEmailVerified
    };
  }
}
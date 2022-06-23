class User {
  String? id;
  String? name;
  String? email;
  String? password;
  int? phone;
  String? address;

  User(
      {this.id,
      this.name,
      this.email,
      this.password,
      this.phone,
      this.address});

  User.fromJson(Map<String, dynamic> json) {
    id = json['user_id'];
    name = json['user_name'];
    email = json['user_email'];
    password = json['user_pass'];
    phone = json['user_phone'];
    address = json['user_address'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['user_id'] = id;
    data['user_name'] = name;
    data['user_email'] = email;
    data['user_pass'] = password;
    data['user_phone'] = phone;
    data['user_address'] = address;
    return data;
  }
}

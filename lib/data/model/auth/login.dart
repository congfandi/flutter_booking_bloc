class Login {
  Login({
    this.token,
  });

  Login.fromJson(dynamic json) {
    token = json['token'];
  }

  String? token;

  Login copyWith({
    String? token,
  }) =>
      Login(
        token: token ?? this.token,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['token'] = token;
    return map;
  }
}

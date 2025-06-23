class AuthenticationRequestModel {
  String token;
  AuthenticationRequestModel({
    required this.token,
  });
  factory AuthenticationRequestModel.fromJson(Map<String, dynamic> json) {
    return AuthenticationRequestModel(
      token: json['token'],
    );
  }
  Map<String, dynamic> toJson() => {
        "token": token,
      };
}

class OrderRegistrationModel {
  int id;
  OrderRegistrationModel({
    required this.id,
  });
  factory OrderRegistrationModel.fromJson(Map<String, dynamic> json) {
    return OrderRegistrationModel(
      id: json['id'],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
      };
}

class PaymentRequestModel {
  String token;
  PaymentRequestModel({
    required this.token,
  });

  factory PaymentRequestModel.fromJson(Map<String, dynamic> json) {
    return PaymentRequestModel(
      token: json['token'],
    );
  }
  Map<String, dynamic> toJson() => {
        "token": token,
      };
}

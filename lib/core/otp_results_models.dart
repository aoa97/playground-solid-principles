abstract interface class IOTPResult {
  final String status;
  final String message;

  IOTPResult({required this.status, required this.message});
}

class OTPForgotPasswordResult implements IOTPResult {
  @override
  final String status;
  @override
  final String message;

  OTPForgotPasswordResult({required this.status, required this.message});

  factory OTPForgotPasswordResult.fromMap(Map<String, dynamic> map) {
    return OTPForgotPasswordResult(status: map['status'], message: map['message']);
  }
}

class OTPChangePasswordResult implements IOTPResult {
  @override
  final String status;
  @override
  final String message;

  OTPChangePasswordResult({required this.status, required this.message});

  factory OTPChangePasswordResult.fromMap(Map<String, dynamic> map) {
    return OTPChangePasswordResult(status: map['status'], message: map['message']);
  }
}

class OTPChangePhoneResult implements IOTPResult {
  @override
  final String status;
  @override
  final String message;

  OTPChangePhoneResult({required this.status, required this.message});

  factory OTPChangePhoneResult.fromMap(Map<String, dynamic> map) {
    return OTPChangePhoneResult(status: map['status'], message: map['message']);
  }
}

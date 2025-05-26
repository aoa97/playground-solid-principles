import 'package:playground_solid_principles/core/otp_results_models.dart';

Future<Map<String, dynamic>> simulatePostRequest(String endpoint) {
  return Future.value({'status': 'success', 'message': 'OTP sent'});
}

void navToForgotScreen(OTPForgotPasswordResult result) {
  print("Navigated to forgot password screen with result: $result");
}

void navToChangePasswordScreen(OTPChangePasswordResult result) {
  print("Navigated to change password screen with result: $result");
}

void navToChangePhoneScreen(OTPChangePhoneResult result) {
  print("Navigated to change phone screen with result: $result");
}

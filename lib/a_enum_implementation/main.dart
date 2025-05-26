import 'package:playground_solid_principles/core/helpers.dart';
import 'package:playground_solid_principles/core/otp_results_models.dart';
import 'package:playground_solid_principles/open_closed_principle/a_enum_implementation/src/otp_reason.dart';

main() {
  onTap();
}

/* 
  - This implementation violates OCP 
  - It's actually opened for modification
  - To add a new reason (verifyPhone for example), we will need to modify the render method
    [The class should allow to add new reasons without modifying the existing code]
*/

void onTap() async {
  final reason = OTPReasonEnum.changePassword;

  switch (reason) {
    case OTPReasonEnum.forgotPassword:
      final response = await simulatePostRequest('/forgot-password');
      final result = OTPForgotPasswordResult.fromMap(response);
      print("navToForgotPassword($result)");
      break;
    case OTPReasonEnum.changePassword:
      final response = await simulatePostRequest('/change-password');
      final result = OTPChangePasswordResult.fromMap(response);
      print("navToChangePassword($result)");
      break;
    case OTPReasonEnum.changePhone:
      final response = await simulatePostRequest('/change-phone');
      final result = OTPChangePhoneResult.fromMap(response);
      print("navToChangePhone($result)");
      break;
  }
}

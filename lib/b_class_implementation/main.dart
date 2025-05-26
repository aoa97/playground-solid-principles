import 'package:playground_solid_principles/core/helpers.dart';
import 'package:playground_solid_principles/core/otp_results_models.dart';
import 'package:playground_solid_principles/open_closed_principle/b_class_implementation/src/otp_reason.dart';

main() {
  onTap();
}

/* 
  - This implementation adheres to OCP 
  - Problem1 -> Creation headache -> I've to remember the same code every time I use the same reason
  - Problem2 -> Types:
    a- If I replaced resultBuilder with (map) => OTPChangePasswordResult.fromMap(map), nothing will pause me
    b- I've to do type casting (result as OTPForgotPasswordResult)
*/

void onTap() async {
  final reason = OtpReason(
    endpoint: '/forgot-password',
    resultBuilder: (map) => OTPChangePasswordResult.fromMap(map),
    onSuccessCallback: (result) => navToForgotScreen(result as OTPForgotPasswordResult),
  );

  final response = await simulatePostRequest(reason.endpoint);
  final result = reason.resultBuilder(response);
  reason.onSuccessCallback(result);
}

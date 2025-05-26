import 'package:playground_solid_principles/core/otp_results_models.dart';

class OtpReason {
  final String endpoint;
  final IOTPResult Function(Map<String, dynamic>) resultBuilder;
  final void Function(IOTPResult result) onSuccessCallback;

  OtpReason({
    required this.endpoint,
    required this.resultBuilder,
    required this.onSuccessCallback,
  });
}

import 'package:ncl_coding_assessment/core/api/api_failure.dart';

class ApplicationEntity {
  ApiFailure? apiFailure;
  ApplicationEntity({this.apiFailure});

  bool hasErrors() {
    return apiFailure != null;
  }
}

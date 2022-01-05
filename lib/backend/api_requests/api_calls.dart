import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class GetCategoriesOfTestsInFRCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Categories of Tests in FR',
      apiUrl: 'https://code.j2hbgroup.com/api/Mobile/Categories/tests/fr',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class GetCategoriesTestsInARCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Get categories Tests in AR',
      apiUrl: 'https://code.j2hbgroup.com/api/Mobile/Categories/tests/ar',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

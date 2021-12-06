import 'api_manager.dart';

Future<dynamic> getCategoriesOfTestsInFRCall() {
  return ApiManager.instance.makeApiCall(
    callName: 'Get Categories of Tests in FR',
    apiUrl: 'https://code.j2hbgroup.com/api/Mobile/Categories/tests/fr',
    callType: ApiCallType.GET,
    headers: {},
    params: {},
    returnResponse: true,
  );
}

Future<dynamic> getCategoriesTestsInARCall() {
  return ApiManager.instance.makeApiCall(
    callName: 'Get categories Tests in AR',
    apiUrl: 'https://code.j2hbgroup.com/api/Mobile/Categories/tests/ar',
    callType: ApiCallType.GET,
    headers: {},
    params: {},
    returnResponse: true,
  );
}

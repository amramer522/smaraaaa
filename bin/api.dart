import 'package:dio/dio.dart';

/*
Status Code
422   validation error
404   endpoint not found
200   success
 */

void main() async {
  Dio dio = Dio();
  try {
    final response = await dio.get(
      "https://thimar.amr.aait-d.com/api/products",
    );
    print(response.data);
    print(response.statusCode);
  } on DioError catch (ex) {
    print(ex.response!.data);
    print(ex.response!.statusCode);
  }

//https://thimar.amr.aait-d.com/api/login
/*
base url

    "Accept": "application/json",
    "Accept-Language": CacheHelper.getLang(),


    body: {
        "phone": "966${phoneNumberController.text.trim()}",
        "password": passwordController.text.trim(),
        "device_token": CacheHelper.getDeviceToken(),
        "type": Platform.isAndroid ? "android" : "ios",
        "user_type": "client",
      },

 */
}

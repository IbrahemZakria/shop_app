import 'package:dio/dio.dart';

class Api {
  Future<dynamic> getData(String url) async {
    Dio dio = Dio();
    try {
      Response response = await dio.get(url);
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception('Failed to load data: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to load data: $e');
    }
  }

  //////////////////////////////////////////////////////////////////////////////
  Future<dynamic> postData(String url, Map<String, dynamic> data) async {
    Dio dio = Dio();
    dio.post(
      url,
      data: data,
      options: Options(
        headers: {
          'Content-Type': 'x-www-form-urlencoded',
          'Accept': 'application/json',
        },
      ),
    );
  }
}

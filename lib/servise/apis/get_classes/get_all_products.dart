import 'package:dio/dio.dart';
import 'package:shop_app/Constant.dart';
import 'package:shop_app/helper/api.dart';
import 'package:shop_app/models/all_Product_model.dart';

class GetAllProducts {
  Dio dio = Dio();
  Api api = Api();

  Future<List<GetAllProductModel>> getAllProducts() async {
    dynamic data = await api.getData("$KbaseUrl/products");
    List<GetAllProductModel> products = [];

    for (int i = 0; i < data.length; i++) {
      products.add(
        GetAllProductModel.fromJson(data[i] as Map<String, dynamic>),
      );
    }
    return products;
  }
}

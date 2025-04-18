import 'package:shop_app/Constant.dart';
import 'package:shop_app/helper/api.dart';
import 'package:shop_app/models/all_product_model.dart';

class AddProuct {
  Api api = Api();
  Future<ProductModel> addProduct({
    required String title,
    required String price,
    required String description,
    required String category,
    required String image,
  }) async {
    Map<String, dynamic> data = await api.postData(
      url: "$KbaseUrl/products",
      data: {
        'title': title,
        'price': price,
        'description': description,
        'category': category,
        'image': image,
      },
    );
    ProductModel responseData = ProductModel.fromJson(data);
    return responseData;
  }
}

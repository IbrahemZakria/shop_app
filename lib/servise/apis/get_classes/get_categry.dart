import 'package:shop_app/Constant.dart';
import 'package:shop_app/helper/api.dart';
import 'package:shop_app/models/all_Product_model.dart';

class GetCategory {
  Api api = Api();
  Future<List<GetAllProductModel>> getcategory({
    required String CategorySearch,
  }) async {
    dynamic data = await api.getData(
      "$baseUrl/products/category/$CategorySearch",
    );
    List<GetAllProductModel> products = [];

    for (int i = 0; i < data.length; i++) {
      products.add(
        GetAllProductModel.fromJson(data[i] as Map<String, dynamic>),
      );
    }
    return products; // Return the list of products
  }
}

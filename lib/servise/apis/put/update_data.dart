import 'package:shop_app/Constant.dart';
import 'package:shop_app/helper/api.dart';
import 'package:shop_app/models/all_product_model.dart';

class UpdateData {
  Api api = Api();
  Future<GetAllProductModel> updateData({
    required String id,
    required String title,
    required String price,
    required String description,
    required String category,
    required String image,
    String? token,
  }) async {
    Map<String, dynamic> updatedData = await api.updatetData(
      url: "$KbaseUrl/products/$id",
      data: {
        'title': title,
        'price': price,
        'description': description,
        'category': category,
        'image': image,
      },
      token: token,
    );
    return GetAllProductModel.fromJson(updatedData);
  }
}

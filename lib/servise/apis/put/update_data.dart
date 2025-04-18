import 'package:flutter/material.dart';
import 'package:shop_app/Constant.dart';
import 'package:shop_app/helper/api.dart';
import 'package:shop_app/helper/component/UserMessage.dart';
import 'package:shop_app/models/all_product_model.dart';
import 'package:shop_app/models/updated_model.dart';

class UpdateData {
  Api api = Api();
  Future<dynamic> updateData({
    required dynamic id,
    required String title,
    required String price,
    required String description,
    required String category,
    required String image,
    String? token,
  }) async {
    dynamic updatedData = await api.updatetData(
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

    return UpdatedModel.fromJson(updatedData);
  }
}

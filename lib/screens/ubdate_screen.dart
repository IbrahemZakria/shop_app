import 'package:flutter/material.dart';
import 'package:shop_app/component/custome_button.dart';
import 'package:shop_app/component/custome_text_form_field.dart';
import 'package:shop_app/helper/api.dart';
import 'package:shop_app/models/all_product_model.dart';
import 'package:shop_app/servise/apis/put/update_data.dart';

class UbdateScreen extends StatelessWidget {
  UbdateScreen({super.key});
  static const String id = 'ubdate_screen';
  String? title;
  String? image;
  String? price;
  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Update Product',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          CustomeTextFormField.CustomeTextformField(
            onSaved: (data) {
              title = data;
            },
            hintText: 'Title',
            textColor: Colors.black,
            bordercolor: Colors.black,
            controller: TextEditingController(),
          ),
          CustomeTextFormField.CustomeTextformField(
            onSaved: (data) {
              image = data;
            },
            hintText: 'image',
            textColor: Colors.black,
            bordercolor: Colors.black,
            controller: TextEditingController(),
          ),
          CustomeTextFormField.CustomeTextformField(
            onSaved: (data) {
              price = data;
            },
            hintText: 'price',
            textColor: Colors.black,
            bordercolor: Colors.black,
            controller: TextEditingController(),
          ),
          CustomeButton(
            textbutton: "Update data",
            onPressed: () {
              print(product);
              print(product.id);
              print(product.title);
              print(product.price);
              print(product.description);
              print(product.category);
              print(product.image);
              // Api().updatetData(
              //   url: "https://fakestoreapi.com/products/${product.id}",
              //   data: {
              //     'title': title ?? product.title,
              //     'image': image ?? product.image,

              //     'price': price ?? product.price,
              //     'description': product.description,
              //     'category': product.category,
              //   },
              // );
              UpdateData().updateData(
                id: product.id,
                title: title ?? product.title,
                price: price ?? product.price,
                description: product.description,
                category: product.category,
                image: image ?? product.image,
              );
            },
          ),
        ],
      ),
    );
  }
}

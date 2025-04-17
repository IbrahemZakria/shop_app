import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shop_app/component/custom_shop_card.dart';
import 'package:shop_app/models/all_product_model.dart';
import 'package:shop_app/servise/apis/get_classes/get_all_products.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});
  static const String id = 'shop_screen';
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'New Trend',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(FontAwesomeIcons.cartPlus, color: Colors.black),
          ),
        ],
      ),
      body: FutureBuilder(
        future: GetAllProducts().getAllProducts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.data!.isEmpty) {
            return const Center(child: Text('No products available.'));
          } else {
            List<GetAllProductModel> products =
                snapshot.data! as List<GetAllProductModel>;
            return Padding(
              padding: EdgeInsets.only(top: height * .04, left: 10, right: 10),
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: products.length,
                clipBehavior: Clip.none,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1.2,
                ),
                itemBuilder: (context, index) {
                  return CustomShopCard(updatedModel: products[index]);
                },
              ),
            );
          }
        },
      ),
    );
  }
}

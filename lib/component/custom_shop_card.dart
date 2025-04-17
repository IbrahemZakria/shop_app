import 'package:flutter/material.dart';
import 'package:shop_app/models/all_product_model.dart';

// ignore: must_be_immutable
class CustomShopCard extends StatelessWidget {
  CustomShopCard({required this.updatedModel, Key? key}) : super(key: key);
  GetAllProductModel updatedModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          'product_details_screen',
          arguments: {
            'id': updatedModel.id,
            'title': updatedModel.title,
            'price': updatedModel.price,
            'description': updatedModel.description,
            'category': updatedModel.category,
            'image': updatedModel.image,
          },
        );
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10.0,

                  offset: Offset(10.0, 10.0),
                ),
              ],
            ),

            child: Card(
              color: Colors.white,
              elevation: 5,
              shadowColor: Colors.grey.withValues(alpha: 0.2),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        updatedModel.description.substring(0, 10) + "...",
                        style: const TextStyle(color: Colors.grey),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$${updatedModel.price}",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          IconButton(
                            onPressed: () {
                              // Add your action here
                            },
                            icon: const Icon(Icons.favorite),
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: MediaQuery.of(context).size.height * -.04,
            child: Image.network(updatedModel.image, width: 90, height: 100),
          ),
        ],
      ),
    );
  }
}

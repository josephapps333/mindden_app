import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mindden_app/models/product_model.dart';

class ProductDetailScreen extends StatelessWidget {
  final ProductModel product;
  const ProductDetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Detail"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Text("Product Name: ${product.displayName}"),
                  Text("Product Type: ${product.type}"),
                  Text("Product Description: ${product.description}"),
                  Text("Fiber Technology: ${product.fiberTechnology}"),
                  Text("Download Megas: ${product.fiberDownloadMegas}"),
                  Text("Upload Megas: ${product.fiberUploadMegas}"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

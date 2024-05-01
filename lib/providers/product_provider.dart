import 'package:flutter/material.dart';
import 'package:mindden_app/models/product_model.dart';
import 'package:mindden_app/services/finetwork_service.dart';

class ProductProvider extends ChangeNotifier {
  List<ProductModel> productModels = [];
  FinetworkService finetworkService = FinetworkService();

  List<ProductModel> get products => productModels;

  Future<void> getProductList() async {
    productModels = await finetworkService.fetchProducts();
    print("we have fetched the products ");
    print(productModels);
    notifyListeners();
  }
}

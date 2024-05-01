import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mindden_app/models/product_model.dart';

class FinetworkService {
  //fetch products from api
  Future<List<ProductModel>> fetchProducts() async {
    const url =
        'https://gateway.finetwork.com/product/offering/products?page=1&size=20';
    try {
      final response = await http.get(Uri.parse(url));
      //you get the string result of calling api
      if (response.statusCode == 200) {
        // you convert the string to a map<String, dynamic>
        var jsonData = jsonDecode(response.body);

        //you access the list of products inside the map
        var productListData = jsonData['_embedded']['products'];

        List<ProductModel> products = [];

        if (productListData is List) {
          products = productListData
              .map((productData) => ProductModel.fromJson(productData))
              .toList();
        }

        return products;
      } else {
        //return empty list
        print("empty List 1");
        List<ProductModel> l = [];
        return l;
      }
    } catch (error) {
      print("empty List 2");
      List<ProductModel> l = [];
      return l;
    }

    //final response = await http.get(Uri.parse(url));
  }
} //class

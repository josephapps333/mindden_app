import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mindden_app/providers/product_provider.dart';
import 'package:provider/provider.dart';

import 'product_detail_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    Provider.of<ProductProvider>(context).getProductList();
    return Consumer<ProductProvider>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: const Text("Finetwork"),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: value.productModels.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductDetailScreen(
                                product: value.products[index]),
                          ));
                    },
                    title: Text(value.products[index].displayName),
                    subtitle: Text(value.products[index].type),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

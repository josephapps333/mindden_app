import 'package:flutter/material.dart';
import 'package:mindden_app/app.dart';
import 'package:mindden_app/providers/product_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ProductProvider(),
      child: const MainApp(),
    ),
  );
}

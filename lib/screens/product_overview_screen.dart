import 'package:flutter/material.dart';
import 'package:shop_app/widgets/product_item.dart';
import 'package:shop_app/widgets/products_grid.dart';

import '../models/product.dart';

class ProductOverView extends StatelessWidget {
  const ProductOverView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: const Text("My Shop "),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: const ProductsGrid());
  }
}

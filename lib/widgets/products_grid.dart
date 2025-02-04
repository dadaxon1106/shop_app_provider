import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/products.dart';
import '../widgets/product_item.dart';

class ProductsGrid extends StatelessWidget {
  const ProductsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);

    final products = productsData.items;
    return GridView.builder(
        itemCount: products.length,
        padding: const EdgeInsets.all(10.0),
        itemBuilder: (ctx, i) => Card(
              child: ProductItem(
                id: products[i].id,
                title: products[i].title,
                imageUrl: products[i].imageUrl,
              ),
            ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 3 / 2));
  }
}

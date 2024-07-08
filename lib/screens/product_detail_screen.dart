import 'package:flutter/material.dart';
import '../providers/products.dart';
import 'package:provider/provider.dart';

class ProductDetailScreen extends StatelessWidget {
  static const nameRoute = "/products_detail";
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments as String;

    final providerId = Provider.of<Products>(context).findId(productId);
    return Scaffold(
      appBar: AppBar(
        title: Text(providerId.title),
      ),
    );
  }
}

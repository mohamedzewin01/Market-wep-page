import 'package:fadaalhalij/features/products/presentation/widgets/product_details.dart';
import 'package:fadaalhalij/features/products/presentation/widgets/products_items.dart';
import 'package:flutter/cupertino.dart';

import '../../domain/products_entities/products_entities.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
    required this.productsList,
  });

  final List<ProductsEntity> productsList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 0,
            crossAxisSpacing: 0,
            childAspectRatio: 8 / 9),
        itemCount: productsList.length,
        itemBuilder: (context, index) {
          return CustomProductsItem(
            product: productsList[index],
            onTap: () => Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) =>
                    ProductDetails(product: productsList[index]),
              ),
            ),
          );
        },
      ),
    );
  }
}

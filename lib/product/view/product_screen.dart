import 'package:actual_two/common/component/pagination_list_view.dart';
import 'package:actual_two/product/component/product_card.dart';
import 'package:actual_two/product/model/product_model.dart';
import 'package:actual_two/product/provider/product_provider.dart';
import 'package:actual_two/restaurant/view/restaurant_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PaginationListView<ProductModel>(
      provider: productProvider,
      itemBuilder: <ProductModel>(_, index, model) {
        return GestureDetector(
          onTap: () {
            context.goNamed(RestaurantDetailScreen.routeName, params: {
              'rid': model.restaurant.id,
            });
          },
          child: ProductCard.fromProductModel(
            model: model,
          ),
        );
      },
    );
  }
}
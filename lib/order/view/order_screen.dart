import 'package:actual_two/common/component/pagination_list_view.dart';
import 'package:actual_two/order/component/order_card.dart';
import 'package:actual_two/order/model/order_model.dart';
import 'package:actual_two/order/provider/order_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OrderScreen extends ConsumerWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PaginationListView<OrderModel>(
      provider: orderProvider,
      itemBuilder: <OrderModel>(BuildContext context, int index, model) {
        return OrderCard.fromModel(
          model: model,
        );
      },
    );
  }
}

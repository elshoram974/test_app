import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/controller/order_controller.dart';
import 'package:test_app/core/config/locale/generated/l10n.dart';
import 'package:test_app/core/shared/responsive/constrained_box.dart';
import 'package:test_app/core/utils/constants/app_constants.dart';

class MetricsScreen extends StatelessWidget {
  const MetricsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextStyle? style =
        context.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold);
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).metricsScreen)),
      body: ResConstrainedBoxAlign(
        child: Padding(
          padding: const EdgeInsets.all(AppConst.defaultPadding),
          child: GetBuilder<OrderController>(builder: (controller) {
            return Column(
              spacing: 2 * AppConst.defaultPadding,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  S.of(context).totalOrdersNo(controller.orders.length),
                  style: style,
                ),
                Text(
                  S
                      .of(context)
                      .averageOrderPrice(controller.averageOrdersPrice.toStringAsFixed(2)),
                  style: style,
                ),
                Text(
                  S
                      .of(context)
                      .returnedOrders(controller.returnedOrders.length),
                  style: style,
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}

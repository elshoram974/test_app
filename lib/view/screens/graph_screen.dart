import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:test_app/core/config/locale/generated/l10n.dart';
import 'package:test_app/core/shared/responsive/constrained_box.dart';
import 'package:test_app/core/utils/constants/app_constants.dart';
import 'package:test_app/model/chart_data.dart';

import '../../controller/order_controller.dart';

class GraphScreen extends StatelessWidget {
  const GraphScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).graphScreen)),
      body: ResConstrainedBoxAlign(
        child: Padding(
          padding: const EdgeInsets.all(AppConst.defaultPadding),
          child: AspectRatio(
            aspectRatio: 1,
            child: GetBuilder<OrderController>(builder: (controller) {
              return SfCartesianChart(
                primaryXAxis: const DateTimeAxis(),
                tooltipBehavior: TooltipBehavior(enable: true),
                zoomPanBehavior: ZoomPanBehavior(
                  enablePinching: true,
                  enablePanning: true,
                  enableMouseWheelZooming: true,
                  enableDoubleTapZooming: true,
                  zoomMode: ZoomMode.xy,
                ),
                series: [
                  LineSeries<ChartData, dynamic>(
                    dataSource: controller.dataCurve,
                    name: "Orders",
                    xValueMapper: (datum, index) => datum.date,
                    yValueMapper: (datum, index) => datum.orders,
                  )
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}

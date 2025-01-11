import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:test_app/core/config/locale/generated/l10n.dart';
import 'package:test_app/core/shared/responsive/constrained_box.dart';
import 'package:test_app/core/utils/constants/app_constants.dart';
import 'package:test_app/model/order/order.dart';

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
            child: LineChart(
              LineChartData(
                gridData: const FlGridData(show: true),
                titlesData: const FlTitlesData(show: true),
                borderData: FlBorderData(show: true),
                lineBarsData: [
                  LineChartBarData(
                    spots: [
                      ...List.generate(
                        [].length,
                        (i) {
                          final Order order = [][i];
                          return FlSpot(order.price ?? 0, [].length.toDouble());
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

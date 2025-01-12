import 'dart:convert';
import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:test_app/model/order.dart';

import '../core/utils/constants/app_constants.dart';
import '../model/chart_data.dart';

abstract class OrderController extends GetxController {
  List<Order> get orders;
  List<Order> get returnedOrders;
  double get averageOrdersPrice;
  Future<void> loadOrders();
  List<ChartData> get dataCurve;
}

class OrderControllerImp extends OrderController {
  final List<Order> _orders = [];
  final List<ChartData> _dataCurve = [];

  @override
  List<ChartData> get dataCurve => _dataCurve;

  @override
  List<Order> get orders => _orders;

  @override
  List<Order> get returnedOrders =>
      _orders.where((o) => o.status == "RETURNED").toList();

  @override
  double get averageOrdersPrice {
    if (_orders.isEmpty) return 0;
    double sum = 0;
    for (Order o in _orders) {
      sum += o.price;
    }
    return sum / _orders.length;
  }

  @override
  void onInit() {
    super.onInit();
    loadOrders();
  }

  @override
  Future<void> loadOrders() async {
    _orders.clear();

    final String data = await rootBundle.loadString(AppConst.orderJson);
    final List ordersJson = json.decode(data);

    final List<Order> loadedOrders =
        ordersJson.map((e) => Order.fromMap(e)).toList();

    _orders.addAll(loadedOrders);

    _setData();
    update();
  }

  void _setData() {
    _dataCurve.clear();
    final Map<DateTime, int> groupedData = {};
    for (Order order in _orders) {
      final DateTime date = order.date.toLocal();
      final DateTime onlyDate = DateTime(date.year, date.month);

      groupedData[onlyDate] = (groupedData[onlyDate] ?? 0) + 1;
    }

    groupedData.forEach((key, value) => _dataCurve.add(ChartData(key, value)));

    _dataCurve.sort((a, b) => a.date.compareTo(b.date));
    log(_dataCurve.toString());
  }
}

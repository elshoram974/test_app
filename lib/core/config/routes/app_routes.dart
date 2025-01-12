import 'package:get/get.dart';
import 'package:test_app/controller/order_controller.dart';

import '../../../view/screens/graph_screen.dart';
import '../../../view/screens/home_screen.dart';
import '../../../view/screens/metrics_screen.dart';

class AppRoutes {
  static const String home = '/';
  static const String metrics = '/metrics';
  static const String graph = '/graph';

  static List<GetPage> get pages => [
        GetPage(
          name: home,
          page: () => const HomeScreen(),
          binding: HomeBinding(),
        ),
        GetPage(name: metrics, page: () => const MetricsScreen()),
        GetPage(name: graph, page: () => const GraphScreen()),
      ];
}

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<OrderController>(OrderControllerImp());
  }
}

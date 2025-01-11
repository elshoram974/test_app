import 'package:get/get.dart';

import '../../../view/screens/graph_screen.dart';
import '../../../view/screens/home_screen.dart';
import '../../../view/screens/metrics_screen.dart';

class AppRoutes {
  static const String home = '/';
  static const String metrics = '/metrics';
  static const String graph = '/graph';

  static List<GetPage> get pages => [
        GetPage(name: home, page: () => const HomeScreen()),
        GetPage(name: metrics, page: () => const MetricsScreen()),
        GetPage(name: graph, page: () => const GraphScreen()),
      ];
}

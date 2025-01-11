import 'package:get/get.dart';

import '../../../view/screens/home_screen.dart';

class AppRoutes {
  static const String home = '/';
  static const String metrics = '/metrics';
  static const String graph = '/graph';

  static List<GetPage> get pages => [
        GetPage(name: home, page: () => HomeScreen()),
      ];
}

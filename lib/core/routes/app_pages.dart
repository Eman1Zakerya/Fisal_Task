import 'package:fisal_task/presentation/screens/layout_screen.dart';
import 'package:get/get.dart';
import '../bindings/layout_binding.dart';
import 'app_routes.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.LAYOUT,
      page: () => LayoutScreen(),
      binding: layoutBinding(),
    ),
  ];
}

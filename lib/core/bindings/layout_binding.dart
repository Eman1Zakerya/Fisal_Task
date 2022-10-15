import 'package:get/get.dart';
import '../../controller/cart_controller.dart';
import '../../controller/favorits_controoler.dart';
import '../../controller/home_controller.dart';
import '../../controller/layout_controller.dart';

class layoutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LayoutController>(() => LayoutController());
     Get.lazyPut<HomeController>(() => HomeController());
     Get.lazyPut<FavoritController>(() => FavoritController());
     Get.lazyPut<CartController>(() => CartController());
  }
}



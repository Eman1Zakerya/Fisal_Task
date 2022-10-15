import 'package:flutter/material.dart';

import '../../controller/cart_controller.dart';
import '../../controller/favorits_controoler.dart';
import '../../core/components.dart';
import '../widgets/custom_cart.dart';
import 'package:get/get.dart';
class FavoritsScreen extends GetView<FavoritController> {
  final FavoritController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {

    return
       Scaffold(
         body: Padding(
          padding: const EdgeInsets.only(top: 70,left: 30,right: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAddress(text: 'Oxford Street',),
              SizedBox(height: 40,),
              Text('Cart',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500
              ),),
              SizedBox(height: 40,),
              Obx(
                    () => ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    ...List.generate(
                      controller.foritItems.length,
                          (index) => CartItem(
                        cartModel: controller.foritItems[index],
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
      ),
       );

  }
}

import 'package:flutter/material.dart';

import '../../controller/cart_controller.dart';
import '../../core/components.dart';
import '../widgets/custom_cart.dart';
import 'package:get/get.dart';
class CartScreen extends GetView<CartController> {
  final cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {

    return
       Scaffold(
         body: SingleChildScrollView(
           child: Padding(
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
                        controller.cartItems.length,
                            (index) => CartItem(
                          cartModel: controller.cartItems[index],
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
      ),
         ),
       );

  }
}

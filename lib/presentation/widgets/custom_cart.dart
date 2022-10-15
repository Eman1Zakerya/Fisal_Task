import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/cart_controller.dart';
import '../../data/model.dart';

class CartItem extends GetView<CartController>  {
  CartModel cartModel;

  CartItem({required this.cartModel});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0,bottom: 20),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.purple[100],
                borderRadius: BorderRadius.circular(10)
            ),
          ),
          SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(cartModel.productName,
                style: TextStyle(
                  fontSize: 16
              ),),
              SizedBox(height: 5,),
              Text('peices ${cartModel.quantity}'.toString(),
                style: TextStyle(
                  color: Colors.grey
              ),),
              SizedBox(height: 5,),
              Text('\$ ${cartModel.productPrice}',style: TextStyle(
                  fontSize: 20,
                  color: Colors.red[900]
              ),),
            ],
          ),
          Spacer(),

          SizedBox(
            child: Row(
              children: [
                InkWell(
                  onTap:() => controller.removeItem(),
                  child: Container(
                    width: 37,
                    height: 37,
                    decoration: BoxDecoration(
                        color: Colors.blue.shade100,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(
                      child: Container(
                          height: 2,
                          width: 20,
                          color: Colors.blue
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Obx(
                      () => Text(controller.cartCounter.toString(),style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                      ),),
                ),
                SizedBox(width: 10,),
                InkWell(
                  onTap: () => controller.addItem(),
                  child: Container(
                    width: 37,
                    height: 37,
                    decoration: BoxDecoration(
                        color: Colors.blue.shade100,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(
                        child: Text('+',
                          style: TextStyle(
                              fontSize: 33,
                              color: Colors.blue
                          ),

                        )
                    ),
                  ),
                ),
              ],
            ),
          )

        ],
      ),
    );
  }
}

import 'dart:convert';
import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../data/model.dart';
import '../presentation/widgets/custom_cart.dart';


class CartController extends GetxController {
  RxList cartItems = [].obs;
 RxInt cartCounter = 0.obs;
  late CartModel cartModel;

  @override
  void onInit() {
    getCartItems();
    super.onInit();
  }

  Future<void> getCartItems() async {
    final String response = await rootBundle.loadString('assets/cart.json');
    List data = json.decode(response)['cart'];
    cartItems.addAll(data.map((e) => CartModel.fromJson(e)).toList());
  }

  addItem() {
    // CartItem itemSelected =
    // cartItems.firstWhere((e)=>e.id == id);
    // itemSelected.cartModel.cartCounter++;

     cartCounter++;
  }

  removeItem() {
    // CartItem itemSelected =
    // cartItems.firstWhere((e)=>e.id == id);
    // itemSelected.cartModel.cartCounter--;

    cartCounter > 0 ? cartCounter-- : null;
  }
}

import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../data/model.dart';


class FavoritController extends GetxController {
  RxList foritItems = [].obs;
  RxInt cartCounter = 0.obs;
  bool favorite = false;

  @override
  void onInit() {
    getFavoriteItems();
    super.onInit();
  }

  Future<void> getFavoriteItems() async {
    final String response = await rootBundle.loadString('assets/cart.json');
    List data = json.decode(response)['Cart'];
    foritItems.addAll(data.map((e) => CartModel.fromJson(e)).toList());
  }

  addItem() {
    cartCounter++;
  }

  removeItem() {
    cartCounter > 0 ? cartCounter-- : null;
  }
 insertFavorit(bool favorits){
   favorits = favorite;

 }


}
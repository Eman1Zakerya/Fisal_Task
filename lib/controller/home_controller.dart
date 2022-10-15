
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'dart:developer';
import '../data/model.dart';

class HomeController extends GetxController {
  RxList categoryItems = [].obs;
  RxList dealItems = [].obs;
  bool isFavorite = false;
  late FavorteModel favoritesModel;


  @override
  void onInit() {
    getCategoryItems();
    getDealItems();
    super.onInit();
  }

  Future<void> getCategoryItems() async {
    final String response = await rootBundle.loadString('assets/cart.json');
    List data = json.decode(response)['categories'];
    categoryItems.addAll(data.map((e) => CategoryModel.fromJson(e)).toList());

  }

  Future<void> getDealItems() async {
    final String response = await rootBundle.loadString('assets/cart.json');
    List data = json.decode(response)['deals'];
    dealItems.addAll(data.map((e) => DealsModel.fromJson(e)).toList());
  }
  insertFavorit(bool favorit){
     favorit = isFavorite;

  }



  


}

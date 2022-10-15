import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/home_controller.dart';
import '../../data/model.dart';

class CustomCategory extends GetView<HomeController>  {
   CategoryModel categoryModel;
//late String categoryName;

  CustomCategory({required this.categoryModel});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: Column(children: [
        Container(
          width: 60,
          height: 60,

          decoration: BoxDecoration(
              color: Colors.orange[100],
              borderRadius: BorderRadius.circular(10)
          ),
        ),
        Text(categoryModel.name,
          style:TextStyle(
              fontSize: 14
          ) ,
        ),
      ],),
    );
  }
}

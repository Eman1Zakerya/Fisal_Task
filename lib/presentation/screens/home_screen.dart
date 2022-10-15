import 'dart:convert';
import 'package:fisal_task/controller/home_controller.dart';
import 'package:flutter/material.dart';
import '../../core/components.dart';
import 'dart:developer';
import 'package:get/get.dart';
import '../widgets/custom_category.dart';
import '../widgets/custom_deals.dart';

class HomeScreen extends GetView<HomeController> {
  // final controller = Get.find<HomeController>();
  var searchController = TextEditingController();
  final homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {

    // List data = json.decode(response)['cart'];
    return
       Scaffold(
         body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 70,left: 15,right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAddress(text: 'Mostafa St..',),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: defaultFormField(
                        controller: searchController,
                        type: TextInputType.text,
                        lable: 'Search in thousand of products',
                        prefix: Icons.search
                    ),
                  ),
                ),
                SizedBox(height: 20,),
               SizedBox (
                 height: 55,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 180,
                            height: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                               border: Border.all(width: 1,color: Colors.grey)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 4.0,left: 8),
                              child: Row(
                                children: [
                                  Container(
                                    width: 38,
                                    height: 38,
                                    decoration: BoxDecoration(
                                      color: Colors.brown[100],
                                        borderRadius: BorderRadius.circular(7)
                                    ),
                                  ),
                                  SizedBox(width: 15,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Turkish Steek',style: TextStyle(
                                          fontSize: 12,
                                        fontWeight: FontWeight.bold
                                      ),),
                                      //SizedBox(height: 1,),
                                      Text('173 grams',style: TextStyle(
                                          color: Colors.grey
                                      ),),
                                      //SizedBox(height: 1,),
                                      Text('\$ 25',style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.brown
                                      ),),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 15,),
                          Container(
                            width: 180,
                            height: 55,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(width: 1,color: Colors.grey)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 4.0,left: 8),
                              child: Row(
                                children: [
                                  Container(
                                    width: 38,
                                    height: 38,
                                    decoration: BoxDecoration(
                                        color: Colors.brown[100],
                                        borderRadius: BorderRadius.circular(7)
                                    ),
                                  ),
                                  SizedBox(width: 15,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Turkish Steek',style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold
                                      ),),
                                      //SizedBox(height: 1,),
                                      Text('173 grams',style: TextStyle(
                                          color: Colors.grey
                                      ),),
                                      //SizedBox(height: 1,),
                                      Text('\$ 25',style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.brown
                                      ),),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text('Explore by Category',
                      style:TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                      ) ,
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Text('See All(36)',
                        style:TextStyle(
                            color: Colors.grey,
                            fontSize: 14
                        ) ,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 120,
                  child:
                  Obx(
                        () =>ListView(
                    scrollDirection: Axis.horizontal,

                    children: [
                      ...List.generate(
                        controller.categoryItems.length,
                            (index) => CustomCategory(
                          categoryModel: controller.categoryItems[index],
                        ),
                      ),
                      //CustomCategory(categoryModel: null,),
                      // SizedBox(width: 10,),
                      // Column(
                      //   children: [
                      //     Container(
                      //       width: 60,
                      //       height: 60,
                      //       decoration: BoxDecoration(
                      //           color: Colors.orange[100],
                      //           borderRadius: BorderRadius.circular(10)
                      //       ),
                      //     ),
                      //     Text('Vegetables',
                      //       style:TextStyle(
                      //           fontSize: 14
                      //       ) ,
                      //     ),
                      //
                      //   ],
                      // ),
                      // SizedBox(width: 10,),
                      // Column(
                      //   children: [
                      //     Container(
                      //       width: 60,
                      //       height: 60,
                      //       decoration: BoxDecoration(
                      //           color: Colors.orange[100],
                      //           borderRadius: BorderRadius.circular(10)
                      //       ),
                      //     ),
                      //     Text('Beverages',
                      //       style:TextStyle(
                      //           fontSize: 14
                      //       ) ,
                      //     ),
                      //
                      //   ],
                      // ),
                      // SizedBox(width: 10,),
                      // Column(
                      //   children: [
                      //     Container(
                      //       width: 60,
                      //       height: 60,
                      //       decoration: BoxDecoration(
                      //           color: Colors.orange[100],
                      //           borderRadius: BorderRadius.circular(10)
                      //       ),
                      //     ),
                      //     Text('fish',
                      //       style:TextStyle(
                      //           fontSize: 14
                      //       ) ,
                      //     ),
                      //
                      //   ],
                      // ),
                      // SizedBox(width: 10,),
                      // Column(
                      //   children: [
                      //     Container(
                      //       width: 60,
                      //       height: 60,
                      //       decoration: BoxDecoration(
                      //           color: Colors.orange[100],
                      //           borderRadius: BorderRadius.circular(10)
                      //       ),
                      //     ),
                      //     Text('Juice',
                      //       style:TextStyle(
                      //           fontSize: 14
                      //       ) ,
                      //     ),
                      //
                      //   ],
                      // ),
                      // SizedBox(width: 10,),
                      // //////////
                      // Column(
                      //   children: [
                      //     Container(
                      //       width: 60,
                      //       height: 60,
                      //       decoration: BoxDecoration(
                      //           color: Colors.orange[100],
                      //           borderRadius: BorderRadius.circular(10)
                      //       ),
                      //     ),
                      //     Text('ٍSteak',
                      //       style:TextStyle(
                      //           fontSize: 14
                      //       ) ,
                      //     ),
                      //
                      //   ],
                      // ),
                      // SizedBox(width: 10,),
                      // Column(
                      //   children: [
                      //     Container(
                      //       width: 60,
                      //       height: 60,
                      //       decoration: BoxDecoration(
                      //           color: Colors.orange[100],
                      //           borderRadius: BorderRadius.circular(10)
                      //       ),
                      //     ),
                      //     Text('Vegetables',
                      //       style:TextStyle(
                      //           fontSize: 14
                      //       ) ,
                      //     ),
                      //
                      //   ],
                      // ),
                      // SizedBox(width: 10,),
                      // Column(
                      //   children: [
                      //     Container(
                      //       width: 60,
                      //       height: 60,
                      //       decoration: BoxDecoration(
                      //           color: Colors.orange[100],
                      //           borderRadius: BorderRadius.circular(10)
                      //       ),
                      //     ),
                      //     Text('Beverages',
                      //       style:TextStyle(
                      //           fontSize: 14
                      //       ) ,
                      //     ),
                      //
                      //   ],
                      // ),
                      // SizedBox(width: 10,),
                      // Column(
                      //   children: [
                      //     Container(
                      //       width: 60,
                      //       height: 60,
                      //       decoration: BoxDecoration(
                      //           color: Colors.orange[100],
                      //           borderRadius: BorderRadius.circular(10)
                      //       ),
                      //     ),
                      //     Text('fish',
                      //       style:TextStyle(
                      //           fontSize: 14
                      //       ) ,
                      //     ),
                      //
                      //   ],
                      // ),
                      // SizedBox(width: 10,),
                      // Column(
                      //   children: [
                      //     Container(
                      //       width: 60,
                      //       height: 60,
                      //       decoration: BoxDecoration(
                      //           color: Colors.orange[100],
                      //           borderRadius: BorderRadius.circular(10)
                      //       ),
                      //     ),
                      //     Text('Juice',
                      //       style:TextStyle(
                      //           fontSize: 14
                      //       ) ,
                      //     ),
                      //
                      //   ],
                      // ),
                      // SizedBox(width: 10,),

                    ],
                  ),
                )),
                Text('Deals of the Day',
                  style: TextStyle(
                    fontSize: 16
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 100,
                  child:
                  Obx(
                        () =>ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ...List.generate(
                        controller.dealItems.length,
                            (index) => CustomDeals(
                           dealsModel: controller.dealItems[index],
                        ),
                      ),

                      // Row(
                      //   children: [
                      //     Stack(
                      //       children: [
                      //         Container(
                      //           width: 105,
                      //           height: 105,
                      //           decoration: BoxDecoration(
                      //               color: Colors.red[200],
                      //               borderRadius: BorderRadius.circular(15)
                      //           ),
                      //         ),
                      //         CircleAvatar(
                      //           radius: 12,
                      //           backgroundColor: Colors.white,
                      //           child: Icon(Icons.favorite_border,size: 15,)
                      //         )
                      //       ],
                      //     ),
                      //     SizedBox(width: 15,),
                      //     Column(
                      //       crossAxisAlignment: CrossAxisAlignment.start,
                      //       children: [
                      //         Text('Summer Sun Ice Creem Pack',style: TextStyle(
                      //             fontSize: 16,
                      //             fontWeight: FontWeight.bold
                      //         ),),
                      //         SizedBox(height: 5,),
                      //         Text('Price 5',style: TextStyle(
                      //             color: Colors.grey
                      //         ),),
                      //         SizedBox(height: 5,),
                      //         Row(
                      //           children: [
                      //             Icon(Icons.location_on_outlined,
                      //               color: Colors.grey,size: 15,),
                      //             Text('15 Munites Awway',style: TextStyle(
                      //                 color: Colors.grey
                      //             ),),
                      //           ],
                      //         ),
                      //         SizedBox(height: 5,),
                      //         Text('\$  12',style: TextStyle(
                      //             fontSize: 16,
                      //             color: Colors.brown
                      //         ),),
                      //       ],
                      //     ),
                      //
                      //   ],
                      // ),
                      // SizedBox(width: 30,),
                      // Row(
                      //   children: [
                      //     Stack(
                      //       children: [
                      //         Container(
                      //           width: 105,
                      //           height: 105,
                      //           decoration: BoxDecoration(
                      //               color: Colors.red[200],
                      //               borderRadius: BorderRadius.circular(15)
                      //           ),
                      //         ),
                      //         CircleAvatar(
                      //             radius: 12,
                      //             backgroundColor: Colors.white,
                      //             child: Icon(Icons.favorite_border,size: 15,)
                      //         )
                      //       ],
                      //     ),
                      //     SizedBox(width: 15,),
                      //     Column(
                      //       crossAxisAlignment: CrossAxisAlignment.start,
                      //       children: [
                      //         Text('Summer Sun Ice Creem Pack',style: TextStyle(
                      //             fontSize: 16,
                      //             fontWeight: FontWeight.bold
                      //         ),),
                      //         SizedBox(height: 5,),
                      //         Text('Price 5',style: TextStyle(
                      //             color: Colors.grey
                      //         ),),
                      //         SizedBox(height: 5,),
                      //         Row(
                      //           children: [
                      //             Icon(Icons.location_on_outlined,
                      //               color: Colors.grey,size: 15,),
                      //             Text('15 Munites Awway',style: TextStyle(
                      //                 color: Colors.grey
                      //             ),),
                      //           ],
                      //         ),
                      //         SizedBox(height: 5,),
                      //         Text('\$  12',style: TextStyle(
                      //             fontSize: 16,
                      //             color: Colors.brown
                      //         ),),
                      //       ],
                      //     ),
                      //
                      //   ],
                      // ),

                    ],
                  ),
                )),
                SizedBox(height: 10,),
                Container(
                    height: 150,
                 width : double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.red[100],
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 150,
                        width: 160,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Mega',style: TextStyle(
                                fontSize: 13,
                               color: Colors.red[900]
                            ),),
                            Text.rich(
                              TextSpan(text: "WHOPP",
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.black,
                                    fontWeight: FontWeight.bold
                                  ),
                                  children: [
                                    TextSpan(text: "E",
                                      style: TextStyle(
                                          fontSize: 30,
                                          color: Colors.red[900],
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    TextSpan(text: "R",
                                      style: TextStyle(
                                          fontSize: 30,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ]
                              ),
                            ),

                            SizedBox(height: 10,),
                            Row(

                              children: [
                                Text('\$ 17',style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.red[900]
                                ),),
                                SizedBox(width: 40,),
                                Text('\$ 32',style: TextStyle(
                                    color: Colors.white,
                                    decoration: TextDecoration.lineThrough,
                                    decorationThickness:2
                                ),),
                              ],
                            ),
                            SizedBox(height: 15,),
                            Text('available untill december 2020',style: TextStyle(
                                fontSize: 14,
                                color: Colors.white
                            ),),
                          ],
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

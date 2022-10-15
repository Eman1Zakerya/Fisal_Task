import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/home_controller.dart';
import '../../data/model.dart';
 class CustomDeals extends GetView<HomeController> {
   CustomDeals({required this.dealsModel}) ;
   DealsModel dealsModel;
   @override
   Widget build(BuildContext context) {
     return Padding(
       padding: const EdgeInsets.only(right: 30.0),
       child: Row(
         children: [
           Stack(
             children: [
               Container(
                 width: 105,
                 height: 105,
                 decoration: BoxDecoration(
                     color: Colors.red[200],
                     borderRadius: BorderRadius.circular(15)
                 ),
               ),
               CircleAvatar(
                   radius: 12,
                   backgroundColor: Colors.white,
                   child: InkWell(
                     onTap: (){
                       controller.insertFavorit;
                     },
                       child:
                           Icon(Icons.favorite_border,size: 15,
                             color:  controller.isFavorite != false
                                 ? Colors.redAccent
                                 : Colors.grey,
                           )
                   )
               )
             ],
           ),
           SizedBox(width: 15,),
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text(dealsModel.productName,
                 style: TextStyle(
                   fontSize: 16,
                   fontWeight: FontWeight.bold
               ),),
               SizedBox(height: 5,),
               Text('Peices ${dealsModel.quantity}',style: TextStyle(
                   color: Colors.grey
               ),),
               SizedBox(height: 5,),
               Row(
                 children: [
                   Icon(Icons.location_on_outlined,
                     color: Colors.grey,size: 15,),
                   Text(dealsModel.location,
                     style: TextStyle(
                       color: Colors.grey
                   ),),
                 ],
               ),
               SizedBox(height: 5,),
               Row(
                 children: [
                   Text('\$  ${dealsModel.initialPrice}',style: TextStyle(
                       fontSize: 16,
                       color: Colors.brown
                   ),),
                   SizedBox(width: 20,),
                   Text('\$  ${dealsModel.productPrice}',style: TextStyle(
                       fontSize: 12,
                       color: Colors.grey,
                       decoration: TextDecoration.lineThrough,
                       decorationThickness:2
                   ),),
                 ],
               ),
             ],
           ),

         ],
       ),
     );
   }
 }


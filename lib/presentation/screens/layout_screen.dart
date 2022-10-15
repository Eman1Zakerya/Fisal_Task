import 'package:fisal_task/controller/layout_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'cart_screen.dart';
import 'favorits_screen.dart';
import 'home_screen.dart';
class LayoutScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LayoutController>(
        builder: (controller){
          return Scaffold(
            body: SafeArea(
                child: IndexedStack(
                  index: controller.tabIndex.toInt(),
                  children: [
                    HomeScreen(),
                    CartScreen(),
                    CartScreen(),
                    CartScreen(),
                    CartScreen(),
                    //FavoritsScreen()
                  ],
                )
            ),
            bottomNavigationBar: BottomNavigationBar(
              onTap: controller.changeTabIndex,
              currentIndex: controller.tabIndex,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.red[900],
              items: [
                bottonNavigationBarItems(icon: Icons.home, label: 'Home'),
                bottonNavigationBarItems(icon: Icons.notification_important_sharp,
                   label: 'notification'),
                bottonNavigationBarItems(icon: Icons.favorite_border, label: 'favorites'),
                bottonNavigationBarItems(icon: Icons.calendar_today_outlined, label: 'Cart')
              ],
            ),
          );
        }
    );

  }
  bottonNavigationBarItems({required IconData icon,required String label}){
    return BottomNavigationBarItem(
        icon:Icon(icon),label: label);
  }
}

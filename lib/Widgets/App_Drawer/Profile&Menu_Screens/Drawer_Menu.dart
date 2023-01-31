

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tehseel_mobile_app/Home/Home_view.dart';
import 'package:tehseel_mobile_app/Home/components/images.dart';
import 'package:tehseel_mobile_app/Sign_In/SignIn_View.dart';
import 'package:tehseel_mobile_app/Utils/Colors/App_Colors.dart';
import 'package:tehseel_mobile_app/Widgets/AppText.dart';

import '../../../Controllers/Drawer_ThemeController.dart';
import '../../../Drawer_Pages/User_page/User_view.dart';
import '../../../Drawer_Pages/Wallet_Details_page/WalletDetails_view.dart';
import '../../../Drawer_Pages/dashboard_page/dashboard_view.dart';
import '../../Black_Containor.dart';
import '../../NormalAppText.dart';
import '../../../Utils/Images/Drawer_Images.dart';

class Drawer_Menu extends StatefulWidget {
  const Drawer_Menu({Key? key}) : super(key: key);

  @override
  State<Drawer_Menu> createState() => _Drawer_MenuState();
}

class _Drawer_MenuState extends State<Drawer_Menu> {
  final ThemeController controller = Get.put(ThemeController());


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Image.asset(DrawerImage.DrawerHome),
            title: NormalAppText(text: 'Home',),
            onTap: () {
              Get.to(Home_View());
            },
          ),
          ListTile(
            leading: Image.asset(DrawerImage.DrawerDashboard),
            title: NormalAppText(text: 'Dashboard',),
            onTap: () {
              Get.to(dashboard_view());
            },
          ),
          ListTile(
            leading: Image.asset(DrawerImage.DrawerInvoice),
            title: NormalAppText(text: 'Invoices',),
            onTap: () {},
          ),
          ListTile(
            leading: Image.asset(DrawerImage.DrawerUsers),
            title: NormalAppText(text: 'Users',),
            onTap: () {
              Get.to(User_view());
            },
          ),
          ListTile(
            leading: Image.asset(DrawerImage.DrawerWallet),
            title: NormalAppText(text: 'Wallet',),
            onTap: () {
              Get.to(WalletDetails_view());
            },
          ),
          ListTile(
            leading: Image.asset(DrawerImage.DrawerTransaction),
            title: NormalAppText(text: 'Transactions',),
            onTap: () {},
          ),
          ListTile(
            leading: Image.asset(DrawerImage.DrawerSettings),
            title: NormalAppText(text: 'Invoice Settings',),
            onTap: () {},
          ),
          ListTile(
            leading: Image.asset(DrawerImage.DrawerBusiness),
            title: NormalAppText(text: 'Business info',),
            onTap: () {},
          ),
          ListTile(
            leading: Image.asset(DrawerImage.DrawerBank),
            title: NormalAppText(text: 'Bank info',),
            onTap: () {},
          ),
          SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 25),
            child: blackContainor(
                ht: 34,
                wd: 212,
                rd: 5,
                widget:Row(
                  children: [
                    SizedBox(width: 20,),
                    AppText(text: 'language'),
                    SizedBox(width: 40,),

                    GetBuilder<ThemeController>(builder: (controller){
                      return SizedBox(width: 80,
                        child: DropdownButton(
                          dropdownColor: AppColors.kDark,
                          underline: Divider(),
                          borderRadius: BorderRadius.circular(10),
                          iconSize: 25,
                          isExpanded: true,
                          value: controller.dropdownvalue,
                          iconDisabledColor: AppColors.kRed,
                          iconEnabledColor: AppColors.kRed,
                          items: controller.items.map((String items) {
                            return DropdownMenuItem(
                              enabled: true,
                              value: items,
                              child: Text(items,
                                style: TextStyle(color: AppColors.kBackground),),
                            );
                          }).toList(),
                          onChanged: <int>(newvalue) {
                            setState(() {
                              controller.dropdownvalue=newvalue;
                            });
                          },
                        ),
                      );
                    }),
                  ],
                )),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 0),
            child: blackContainor(
                ht: 34,
                wd: 212,
                rd: 5,
                widget:Row(
                  children: [
                    SizedBox(width: 20,),
                    AppText(text: 'Logout'),
                    SizedBox(width: 110,),
                    InkWell(
                        onTap: (){
                          Get.to(SignIn_View());
                        },
                        child: Image.asset(DrawerImage.DrawerLogout)),
                  ],
                )),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:tehseel_mobile_app/Home/components/white_containor.dart';
import 'package:tehseel_mobile_app/Widgets/NormalAppText.dart';

import '../../Utils/Colors/App_Colors.dart';
import '../../Widgets/App_Drawer/Profile&Menu_Screens/Drawer_Menu.dart';
import '../../Widgets/App_Drawer/Profile&Menu_Screens/Drawer_profile.dart';
import '../../Widgets/Black_Containor.dart';
import 'components/Stack/Stack_user.dart';

class User_view extends StatefulWidget {
  const User_view({Key? key}) : super(key: key);

  @override
  State<User_view> createState() => _User_viewState();
}

class _User_viewState extends State<User_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackground,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.kBackground,
        leading: Builder(
          builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.only(left: 20),
              child: IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                  size: 30, // Changing Drawer Icon Size
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              ),
            );
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.refresh,color: AppColors.kDark,size: 25,),
          ),
    Padding(
    padding: EdgeInsets.only(right: 15),
    child: Image.asset('assets/images/AddCircle.png')),
    Padding(
    padding: EdgeInsets.only(right: 10),
    child:Icon(Icons.filter_list_alt,color: AppColors.kDark,size: 27,)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 25,top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Users",style: TextStyle(color: AppColors.kDark,fontSize: 22,fontWeight: FontWeight.w700),),
              SizedBox(height: 20,),
              Stack_user(UserName: 'Muhammad Maaz'),
              SizedBox(height: 24,),
              Stack_user(UserName: 'Waleed Nawaz'),
              SizedBox(height: 24,),
              Stack_user(UserName: 'Sajjad Ali'),
              SizedBox(height: 24,),
              Stack_user(UserName: 'Sajjad Ali'),

            ],
          ),
        ),
      ),
        drawer: Drawer(
          width: 264,
          child: Column(
            children: [
              SizedBox(
                height: 340,
                child: DrawerHeader(
                    decoration: BoxDecoration(
                      color: AppColors.kBackground,
                    ),
                    child: Drawer_profile()),
              ),
              Expanded(
                  child: ListView.builder(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      itemCount: 1,
                      itemBuilder: (BuildContext context, int index) {
                        return Drawer_Menu();
                      }))
            ],
          ),
        ),
    );
  }
}

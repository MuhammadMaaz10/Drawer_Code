import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tehseel_mobile_app/Utils/Colors/App_Colors.dart';

import '../../Widgets/App_Drawer/Profile&Menu_Screens/Drawer_Menu.dart';
import '../../Widgets/App_Drawer/Profile&Menu_Screens/Drawer_profile.dart';
import 'Civil_Id/Civil_Id.dart';
import 'Personal_page/Persnal_page.dart';
import 'Profile_pic/Profile_pic.dart';

class profile_page extends StatefulWidget {
  const profile_page({Key? key}) : super(key: key);

  @override
  State<profile_page> createState() => _profile_pageState();
}

class _profile_pageState extends State<profile_page> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
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
              bottom: TabBar(
                indicatorColor: AppColors.kRed,
                labelStyle: TextStyle(
                    color: AppColors.kDark,
                    fontSize: 15,
                    fontWeight: FontWeight.w700),
                labelColor: AppColors.kDark,
                tabs: const [
                  Tab(text: 'Personal'),
                  Tab(
                    text: 'Profile Pic',
                  ),
                  Tab(text: 'Civil ID'),
                ],
              ),
              title: Text(
                'My Profile',
                style: TextStyle(
                    color: AppColors.kDark,
                    fontSize: 22,
                    fontWeight: FontWeight.w800),
              ),
             actions: [
               Padding(
                 padding: const EdgeInsets.only(right: 20),
                 child: Icon(Icons.notifications_none_rounded,color: AppColors.kDark,size: 30,),
               )
             ], 
            ),
            body: TabBarView(
              children: [
                Persnol_page(),
                Profile_pic(),
                Civil_Id(),
              ],
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
            )));
  }
}

import 'package:flutter/material.dart';

import '../../Home/components/white_containor.dart';
import '../../Utils/Colors/App_Colors.dart';
import '../../Widgets/App_Drawer/Profile&Menu_Screens/Drawer_Menu.dart';
import '../../Widgets/App_Drawer/Profile&Menu_Screens/Drawer_profile.dart';
import 'components/dash_containor.dart';

class dashboard_view extends StatefulWidget {
  const dashboard_view({Key? key}) : super(key: key);

  @override
  State<dashboard_view> createState() => _dashboard_viewState();
}

class _dashboard_viewState extends State<dashboard_view> {
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
            padding: const EdgeInsets.only(right: 20),
            child: Image.asset("assets/images/notificationIcon.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(Icons.more_vert,color: AppColors.kDark,size: 25,),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Padding(
                 padding: const EdgeInsets.only(left: 15),
                 child: Text(
                  'Dashboard',
                  style: TextStyle(
                      color: AppColors.kDark,
                      fontSize: 22,
                      fontWeight: FontWeight.w800),
              ),
               ),
              SizedBox(height: 34,),
              SizedBox(
                height: 321,
                  width: 342,
                  child: Image.asset('assets/images/DashChart.png')),
              Row(
                children: [
                  SizedBox(
                    width: 161,
                      height: 174,
                      child: Image.asset('assets/images/DashCircle.png')),
                  SizedBox(width: 18),
                  SizedBox(
                      width: 161,
                      height: 174,
                      child: Image.asset('assets/images/DashSquare.png')),
                ],
              ),
              SizedBox(
                  width: 345,
                  height: 169,
                  child: Image.asset('assets/images/DashLine.png')),



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
        ));
  }
}

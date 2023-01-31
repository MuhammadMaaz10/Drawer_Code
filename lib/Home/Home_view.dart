import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tehseel_mobile_app/Home/components/images.dart';
import 'package:tehseel_mobile_app/Utils/Colors/App_Colors.dart';

import '../Controllers/Drawer_ThemeController.dart';
import '../Widgets/App_Drawer/Profile&Menu_Screens/Drawer_Menu.dart';
import '../Widgets/App_Drawer/Profile&Menu_Screens/Drawer_profile.dart';
import 'components/Home_Text.dart';
import 'components/redContainor.dart';
import 'components/white_containor.dart';

class Home_View extends StatefulWidget {
  const Home_View({Key? key}) : super(key: key);

  @override
  State<Home_View> createState() => _Home_ViewState();
}

class _Home_ViewState extends State<Home_View> {
  final ThemeController controller = Get.put(ThemeController());

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
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 30),
            child: Icon(
              Icons.notifications,
              size: 25,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 32, right: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 34,
                    ),
                    WhiteContainor(
                      ht: 87,
                      wd: 327,
                      widget: ListTile(
                        leading: Image.asset('assets/images/User1.png'),
                        title: CustomText(text: 'Muhammad Maaz'),
                        subtitle: Text(
                          'maaz@gmail.com',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 34,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Image.asset('assets/images/wallet.png'),
                          SizedBox(
                            width: 14,
                          ),
                          CustomText(
                            text: 'Wallet',
                          ),
                          SizedBox(
                            width: 35,
                          ),
                          RedContainor(),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        WhiteContainor(
                            widget: Padding(
                              padding: const EdgeInsets.only(top: 18.0),
                              child: Column(
                                children: [
                                  Image.asset(Homeimage.quick),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'Quick Invoice',
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                            ),
                            ht: 91,
                            wd: 97),
                        SizedBox(
                          width: 15,
                        ),
                        WhiteContainor(
                            widget: Padding(
                              padding: const EdgeInsets.only(top: 18.0),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Image.asset(Homeimage.standard),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'Standard Invoice',
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                            ),
                            ht: 91,
                            wd: 97),
                        SizedBox(
                          width: 15,
                        ),
                        WhiteContainor(
                            widget: Padding(
                              padding: const EdgeInsets.only(top: 18.0),
                              child: Column(
                                children: [
                                  Image.asset(Homeimage.oimp),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'OIMP Invoice',
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                            ),
                            ht: 91,
                            wd: 97)
                      ],
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Row(
                      children: [
                        WhiteContainor(
                            widget: Padding(
                              padding: const EdgeInsets.only(top: 18.0),
                              child: Column(
                                children: [
                                  Image.asset(Homeimage.recuring),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Recuring',
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                            ),
                            ht: 91,
                            wd: 97),
                        SizedBox(
                          width: 15,
                        ),
                        WhiteContainor(
                            widget: Padding(
                              padding: const EdgeInsets.only(top: 18.0),
                              child: Column(
                                children: [
                                  Image.asset(Homeimage.rent),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Rent Contract',
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                            ),
                            ht: 91,
                            wd: 97),
                        SizedBox(
                          width: 15,
                        ),
                        WhiteContainor(
                            widget: Padding(
                              padding: const EdgeInsets.only(top: 18.0),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Image.asset(Homeimage.split),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'Split Invoice',
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                            ),
                            ht: 91,
                            wd: 97)
                      ],
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 57),
                      child: Row(
                        children: [
                          WhiteContainor(
                              widget: Padding(
                                padding: const EdgeInsets.only(top: 18.0),
                                child: Column(
                                  children: [
                                    Image.asset(Homeimage.review),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Text(
                                      'Review Now',
                                      style: TextStyle(fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                              ht: 91,
                              wd: 97),
                          SizedBox(
                            width: 15,
                          ),
                          WhiteContainor(
                              widget: Padding(
                                padding: const EdgeInsets.only(top: 18.0),
                                child: Column(
                                  children: [
                                    Image.asset(Homeimage.sitting),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      'Sittings',
                                      style: TextStyle(fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                              ht: 91,
                              wd: 97),
                        ],
                      ),
                    ),
                    SizedBox(height: 60),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Text(
                            'Need Help?',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            width: 121,
                          ),
                          Image.asset(Homeimage.messageIcon),
                          SizedBox(
                            width: 20,
                          ),
                          Image.asset(Homeimage.whatsappIcon),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 21),
              WhiteContainor(
                ht: 44,
                wd: 400,
                widget: Row(
                  children: [
                    SizedBox(
                      width: 47,
                    ),
                    Image.asset(Homeimage.Thawte_logo),
                    SizedBox(
                      width: 25,
                    ),
                    Image.asset(Homeimage.Knet),
                    SizedBox(
                      width: 25,
                    ),
                    Image.asset(Homeimage.mastercard),
                    SizedBox(
                      width: 25,
                    ),
                    Image.asset(Homeimage.visa_logo),
                    SizedBox(
                      width: 25,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
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
                    padding: EdgeInsets.only(left: 10,right: 10),
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) {
                      return
                        Drawer_Menu();
                    })
            )],
        ),
      ),
    );
  }
}

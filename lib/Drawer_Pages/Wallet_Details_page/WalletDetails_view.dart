import 'dart:core';

import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:tehseel_mobile_app/Home/components/white_containor.dart';

import '../../Sign_In/SignIn_View.dart';
import '../../Utils/Colors/App_Colors.dart';
import '../../Widgets/App_Drawer/Profile&Menu_Screens/Drawer_Menu.dart';
import '../../Widgets/App_Drawer/Profile&Menu_Screens/Drawer_profile.dart';

class WalletDetails_view extends StatefulWidget {
  const WalletDetails_view({Key? key}) : super(key: key);

  @override
  State<WalletDetails_view> createState() => _WalletDetails_viewState();
}

class _WalletDetails_viewState extends State<WalletDetails_view> {
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
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Invoice",style: TextStyle(color: AppColors.kDark,fontSize: 22,fontWeight: FontWeight.w700),),
                SizedBox(height: 20,),
                ExpansionTileCard(

                  animateTrailing: true,
                  elevation: 5,
                  baseColor: AppColors.Tclr,
                  expandedColor: Colors.white,
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Text( 'MON: ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: AppColors.kRed),),
                              SizedBox(width: 1,),
                              Text( '30-jan-2023',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: AppColors.kDark),),
                              SizedBox(width: 2,),
                              Text( '4:45:55 ',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: AppColors.kDark),),

                            ],
                          )
                      ),
                      SizedBox(height: 15,),
                      Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Text( 'Amount:',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: AppColors.kDark),),
                              SizedBox(width: 15,),
                              Text( 'KWD 3,000',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: AppColors.kDark),),

                            ],
                          )
                      ),
                      SizedBox(height: 15,),
                      Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Text( 'Created by:',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: AppColors.kDark),),
                              SizedBox(width: 10,),
                              Text( 'Fahad',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: AppColors.kDark),),
                            ],
                          )
                      ),
                    ],),
                  // trailing: Column(
                  //   children: [
                  //     Text("Paid",style: TextStyle(color: Colors.green,fontSize: 15,fontWeight: FontWeight.w700),),
                  //     Spacer(),
                  //     Icon(Icons.arrow_drop_down_sharp,size: 30,color: AppColors.kRed,),
                  //   ],
                  // ),
                  children:  <Widget>[
                    Divider(
                      thickness: 1.0,
                      height: 1.0,
                    ),
                  Image.asset('assets/images/InvoiceExpend.png')],
                ),
                SizedBox(height: 20,),
                ExpansionTileCard(
                  elevation: 5,
                  baseColor: AppColors.Tclr,
                  expandedColor: Colors.white,
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Text( 'MON: ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: AppColors.kRed),),
                              SizedBox(width: 1,),
                              Text( '30-jan-2023',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: AppColors.kDark),),
                              SizedBox(width: 2,),
                              Text( '4:45:55 ',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: AppColors.kDark),),

                            ],
                          )
                      ),
                      SizedBox(height: 15,),
                      Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Text( 'Amount:',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: AppColors.kDark),),
                              SizedBox(width: 15,),
                              Text( 'KWD 3,000',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: AppColors.kDark),),

                            ],
                          )
                      ),
                      SizedBox(height: 15,),
                      Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Text( 'Created by:',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: AppColors.kDark),),
                              SizedBox(width: 10,),
                              Text( 'Fahad',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: AppColors.kDark),),
                            ],
                          )
                      ),
                    ],),
                  trailing: Column(
                    children: [
                      Text("Paid",style: TextStyle(color: Colors.green,fontSize: 15,fontWeight: FontWeight.w700),),
                      Spacer(),
                      Icon(Icons.arrow_drop_down_sharp,size: 30,color: AppColors.kRed,),
                    ],
                  ),
                  children: const <Widget>[
                    Divider(
                      thickness: 1.0,
                      height: 1.0,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 8.0,
                        ),
                        child: Text(
                          "FlutterDevs specializes in creating cost-effective and efficient applications with our perfectly crafted,"
                              " creative and leading-edge flutter app development solutions for customers all around the globe.",
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                ExpansionTileCard(
                  elevation: 5,
                  baseColor: AppColors.Tclr,
                  expandedColor: Colors.white,
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Text( 'MON: ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: AppColors.kRed),),
                              SizedBox(width: 1,),
                              Text( '30-jan-2023',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: AppColors.kDark),),
                              SizedBox(width: 2,),
                              Text( '4:45:55 ',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: AppColors.kDark),),

                            ],
                          )
                      ),
                      SizedBox(height: 15,),
                      Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Text( 'Amount:',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: AppColors.kDark),),
                              SizedBox(width: 15,),
                              Text( 'KWD 3,000',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: AppColors.kDark),),

                            ],
                          )
                      ),
                      SizedBox(height: 15,),
                      Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Text( 'Created by:',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: AppColors.kDark),),
                              SizedBox(width: 10,),
                              Text( 'Fahad',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: AppColors.kDark),),
                            ],
                          )
                      ),
                    ],),
                  trailing: Column(
                    children: [
                      Text("Paid",style: TextStyle(color: Colors.green,fontSize: 15,fontWeight: FontWeight.w700),),
                      Spacer(),
                      Icon(Icons.arrow_drop_down_sharp,size: 30,color: AppColors.kRed,),
                    ],
                  ),
                  children: const <Widget>[
                    Divider(
                      thickness: 1.0,
                      height: 1.0,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 8.0,
                        ),
                        child: Text(
                          "FlutterDevs specializes in creating cost-effective and efficient applications with our perfectly crafted,"
                              " creative and leading-edge flutter app development solutions for customers all around the globe.",
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                ExpansionTileCard(
                  elevation: 5,
                  baseColor: AppColors.Tclr,
                  expandedColor: Colors.white,
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Text( 'MON: ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: AppColors.kRed),),
                              SizedBox(width: 1,),
                              Text( '30-jan-2023',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: AppColors.kDark),),
                              SizedBox(width: 2,),
                              Text( '4:45:55 ',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: AppColors.kDark),),

                            ],
                          )
                      ),
                      SizedBox(height: 15,),
                      Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Text( 'Amount:',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: AppColors.kDark),),
                              SizedBox(width: 15,),
                              Text( 'KWD 3,000',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: AppColors.kDark),),

                            ],
                          )
                      ),
                      SizedBox(height: 15,),
                      Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Text( 'Created by:',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: AppColors.kDark),),
                              SizedBox(width: 10,),
                              Text( 'Fahad',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: AppColors.kDark),),
                            ],
                          )
                      ),
                    ],),
                  trailing: Column(
                    children: [
                      Text("Paid",style: TextStyle(color: Colors.green,fontSize: 15,fontWeight: FontWeight.w700),),
                      Spacer(),
                      Icon(Icons.arrow_drop_down_sharp,size: 30,color: AppColors.kRed,),
                    ],
                  ),
                  children: const <Widget>[
                    Divider(
                      thickness: 1.0,
                      height: 1.0,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 8.0,
                        ),
                        child: Text(
                          "FlutterDevs specializes in creating cost-effective and efficient applications with our perfectly crafted,"
                              " creative and leading-edge flutter app development solutions for customers all around the globe.",
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                ExpansionTileCard(
                  elevation: 5,
                  baseColor: AppColors.Tclr,
                  expandedColor: Colors.white,
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Text( 'MON: ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: AppColors.kRed),),
                              SizedBox(width: 1,),
                              Text( '30-jan-2023',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: AppColors.kDark),),
                              SizedBox(width: 2,),
                              Text( '4:45:55 ',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: AppColors.kDark),),

                            ],
                          )
                      ),
                      SizedBox(height: 15,),
                      Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Text( 'Amount:',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: AppColors.kDark),),
                              SizedBox(width: 15,),
                              Text( 'KWD 3,000',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: AppColors.kDark),),

                            ],
                          )
                      ),
                      SizedBox(height: 15,),
                      Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Text( 'Created by:',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: AppColors.kDark),),
                              SizedBox(width: 10,),
                              Text( 'Fahad',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: AppColors.kDark),),
                            ],
                          )
                      ),
                    ],),
                  trailing: Column(
                    children: [
                      Text("Paid",style: TextStyle(color: Colors.green,fontSize: 15,fontWeight: FontWeight.w700),),
                      Spacer(),
                      Icon(Icons.arrow_drop_down_sharp,size: 30,color: AppColors.kRed,),
                    ],
                  ),
                  children: const <Widget>[
                    Divider(
                      thickness: 1.0,
                      height: 1.0,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 8.0,
                        ),
                        child: Text(
                          "FlutterDevs specializes in creating cost-effective and efficient applications with our perfectly crafted,"
                              " creative and leading-edge flutter app development solutions for customers all around the globe.",
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                ExpansionTileCard(
                  elevation: 5,
                  baseColor: AppColors.Tclr,
                  expandedColor: Colors.white,
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Text( 'MON: ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: AppColors.kRed),),
                              SizedBox(width: 1,),
                              Text( '30-jan-2023',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: AppColors.kDark),),
                              SizedBox(width: 2,),
                              Text( '4:45:55 ',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: AppColors.kDark),),

                            ],
                          )
                      ),
                      SizedBox(height: 15,),
                      Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Text( 'Amount:',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: AppColors.kDark),),
                              SizedBox(width: 15,),
                              Text( 'KWD 3,000',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: AppColors.kDark),),

                            ],
                          )
                      ),
                      SizedBox(height: 15,),
                      Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Text( 'Created by:',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: AppColors.kDark),),
                              SizedBox(width: 10,),
                              Text( 'Fahad',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: AppColors.kDark),),
                            ],
                          )
                      ),
                    ],),
                  trailing: Column(
                    children: [
                      Text("Paid",style: TextStyle(color: Colors.green,fontSize: 15,fontWeight: FontWeight.w700),),
                      Spacer(),
                      Icon(Icons.arrow_drop_down_sharp,size: 30,color: AppColors.kRed,),
                    ],
                  ),
                  children: const <Widget>[
                    Divider(
                      thickness: 1.0,
                      height: 1.0,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 8.0,
                        ),
                        child: Text(
                          "FlutterDevs specializes in creating cost-effective and efficient applications with our perfectly crafted,"
                              " creative and leading-edge flutter app development solutions for customers all around the globe.",
                        ),
                      ),
                    ),
                  ],
                ),

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
    )
    );
  }
}

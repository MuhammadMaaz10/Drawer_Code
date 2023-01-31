import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/toggle/gf_toggle.dart';
import 'package:getwidget/types/gf_toggle_type.dart';
import 'package:tehseel_mobile_app/Utils/Colors/App_Colors.dart';
import 'package:tehseel_mobile_app/Widgets/NormalAppText.dart';
import 'package:fswitch_nullsafety/fswitch_nullsafety.dart';
import '../../../Controllers/Drawer_ThemeController.dart';
import '../../../Drawer_Pages/profile_page/profile_page.dart';
import '../../../Home/components/white_containor.dart';
import '../../../Utils/Images/App_Images.dart';
import '../../../Utils/Images/Drawer_Images.dart';

class Drawer_profile extends StatefulWidget {
  const Drawer_profile({Key? key}) : super(key: key);

  @override
  State<Drawer_profile> createState() => _Drawer_profileState();
}


class _Drawer_profileState extends State<Drawer_profile> {
  final ThemeController controller =Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        children: [
          SizedBox(height: 18,),
          CircleAvatar(
            backgroundColor: AppColors.kBackground,
            radius: 50,
            backgroundImage: AssetImage(Images.profilePic),
            // child: Image.asset(Images.RoundprofilePic),
          ),
          Text('Muhammad Maaz',
            style: TextStyle(fontSize: 18,
                fontWeight: FontWeight.w700,color: AppColors.kDark),),
          Text('maaz94174@gmail.com',
            style: TextStyle(fontSize: 12,
                fontWeight: FontWeight.w400,color: AppColors.kDark),),
          SizedBox(height: 5),
          InkWell(
            onTap: (){
              Get.to(profile_page());
            },
            child: WhiteContainor(
              ht: 32,
              wd: 100,
              widget: Center(
                  child: NormalAppText(
                      text: 'My Profile')),
            ),
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Fingerlock',
                style: TextStyle(fontSize: 12,
                    fontWeight: FontWeight.w400,color: AppColors.kDark),),
              SizedBox(width: 5),
              GFToggle(
                disabledThumbColor: AppColors.kRed,
                disabledTrackColor: AppColors.kRed,
                enabledTrackColor: Color(0xff7BDF91),
                enabledThumbColor: Color(0xff16C782),
                onChanged: (val){},
                value: true,
                type: GFToggleType.square,
              )

            ],),
          SizedBox(height: 5),
          GetBuilder<ThemeController>(builder: (controller){
            return FSwitch(
              sliderChild: Image.asset(DrawerImage.Icon,scale: 0.6,),
              openColor: AppColors.kRed,
              enable: true,
              color: AppColors.kRed,
              width: 70,
              height: 30,
              onChanged: (value) {
                controller.toggleDarkMode(ThemeData.light());
              },
              closeChild: Text(
                "Dark",
                style: TextStyle(
                    color: AppColors.kBackground, fontSize: 11),
              ),
              openChild: Text(
                "Light",
                style: TextStyle(
                    color: AppColors.kBackground, fontSize: 11),
              ),
            );
          }),
        ],
      ),
    );
  }
}

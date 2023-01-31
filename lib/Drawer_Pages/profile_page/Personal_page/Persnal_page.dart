import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../Controllers/Drawer_ThemeController.dart';
import '../../../Utils/Colors/App_Colors.dart';
import '../../../Widgets/TextField.dart';
import '../../../Widgets/blackButton.dart';
import '../components/P_Text.dart';

class Persnol_page extends StatefulWidget {
  const Persnol_page({Key? key}) : super(key: key);

  @override
  State<Persnol_page> createState() => _Persnol_pageState();
}

final TextEditingController Econtroller = TextEditingController();
final TextEditingController Fcontroller = TextEditingController();
final TextEditingController Mcontroller = TextEditingController();
final TextEditingController Pcontroller = TextEditingController();

class _Persnol_pageState extends State<Persnol_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackground,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                P_Text(text: 'Email Adress', size: 15),
                SizedBox(
                  height: 10,
                ),
                InputTextField(
                  title: 'maaz@gmail.com',
                  obSecure: false,
                  controller: Econtroller,
                  onChanged: (value) {},
                  keyboardType: TextInputType.text,
                ),

                SizedBox(
                  height: 10,
                ),
                P_Text(text: 'Full Name', size: 15),
                SizedBox(
                  height: 10,
                ),
                InputTextField(
                  title: 'Muhammad Maaz',
                  obSecure: false,
                  controller: Fcontroller,
                  onChanged: (value) {},
                  keyboardType: TextInputType.text,
                ),

                SizedBox(
                  height: 10,
                ),
                P_Text(text: 'Mobile Network', size: 15),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 45,
                  child: TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                          fillColor: AppColors.Tclr,
                          hintText: 'Select Network',
                          suffixIcon: GetBuilder<ThemeController>(builder: (controller){
                            return SizedBox(width: 340,
                              child: DropdownButton(
                                dropdownColor: AppColors.kBackground,
                                underline: Divider(color: Colors.white,),
                                borderRadius: BorderRadius.circular(10),
                                iconSize: 25,
                                isExpanded: true,
                                value: controller.dropdownNetworkValue,
                                iconDisabledColor: AppColors.kRed,
                                iconEnabledColor: AppColors.kRed,
                                items: controller.List.map((String List) {
                                  return DropdownMenuItem(
                                    enabled: true,
                                    value: List,
                                    child: Text(List,
                                      style: TextStyle(color: AppColors.kDark,fontSize: 16,fontWeight: FontWeight.w400),),
                                  );
                                }).toList(),
                                onChanged: <int>(newvalue) {
                                  setState(() {
                                    controller.dropdownNetworkValue=newvalue;
                                  });
                                },
                              ),
                            );
                          }),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)))),
                ),
                SizedBox(
                  height: 10,
                ),
                P_Text(text: 'Phone Number', size: 15),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 75,
                  child: IntlPhoneField(
                    textAlignVertical: TextAlignVertical.center,
                    disableLengthCheck: false,
                    dropdownIcon: Icon(
                      Icons.arrow_drop_down_outlined,
                      color: AppColors.kRed,
                      size: 30,
                    ),
                    cursorColor: Colors.black,
                    invalidNumberMessage: 'Enter 10 integers ',
                    style: TextStyle(color: AppColors.kDark),
                    flagsButtonMargin: EdgeInsets.only(left: 10),
                    dropdownIconPosition: IconPosition.trailing,
                    showDropdownIcon: true,
                    keyboardType: TextInputType.number,
                    showCountryFlag: false,
                    decoration: InputDecoration(
                      focusColor: AppColors.kRed,
                        filled: true,
                        fillColor: AppColors.Tclr,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.white),
                        ),

                        hintText: '344099055'),
                    // initialCountryCode: 'PK',
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 105, top: 50),
                  child: Text(
                    'Change Password',
                    style: TextStyle(
                        color: AppColors.kRed,
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                ),
                SizedBox(height: 160),
                black_Button(
                  ht: 46,
                  onTap: () {},
                  wd: 342,
                  rds: 10,
                  bText: 'Save changes',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

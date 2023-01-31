import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tehseel_mobile_app/Sign_In/SignIn_View.dart';
import 'package:tehseel_mobile_app/Utils/Images/App_Images.dart';

import '../Controllers/Sign_in_controller.dart';
import '../Utils/Colors/App_Colors.dart';
import '../Widgets/AppButton.dart';
import '../Widgets/AppText.dart';
import '../Widgets/Black_Containor.dart';
import '../Widgets/TextField.dart';
import 'components/signUp_containor.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

final TextEditingController NameController = TextEditingController();
final TextEditingController EmailController = TextEditingController();
final TextEditingController phoneController = TextEditingController();
final TextEditingController passwordController = TextEditingController();
final TextEditingController CpasswordController = TextEditingController();

final SignController controller = Get.put(SignController());

class _SignUpState extends State<SignUp> {
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 58, top: 45, right: 59),
              child: Image.asset(Images.logo),
            ),
             Expanded(
               child: ListView.builder(
                 padding: EdgeInsets.only(left: 10,right: 10),
                 itemCount: 1,
                   itemBuilder: (BuildContext context, int index) {
                  return Form(
                  key: _key,
                    child: blackContainor(
                      ht: Get.height *1,
                      wd: 343,
                      rd: 40,
                      widget: Padding(
                        padding:
                            const EdgeInsets.only(left: 20, top: 20, right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(text: 'Full name'),
                            SizedBox(height: 10),
                            InputTextField(
                              controller: NameController,
                              obSecure: false,
                              onChanged: (value) {},
                              keyboardType: TextInputType.text,
                              title: 'Enter Your Full Name',
                            ),

                            SizedBox(height: 10),

                            AppText(text: 'Email'),
                            SizedBox(height: 10),
                            InputTextField(
                              validator: (value) {
                                RegExp regex = RegExp(r'^([a-z\d-]+)@([a-z\d-]+)\.([a-z]{2,8})(\.[a-z]{2,8})?$');
                                if (value!.isEmpty ) {
                                  return 'Please enter some text';
                                }else if ( !regex.hasMatch(value) ){
                                  return 'Please enter correct Email';
                                }else {
                                  return null;
                                }
                              },
                              controller: EmailController,
                              obSecure: false,
                              onChanged: (value) {},
                              keyboardType: TextInputType.text,
                              title: 'Enter Your Email',
                            ),

                            SizedBox(height: 10),

                            AppText(text: 'Phone Number'),
                            SizedBox(height: 10),
                            InputTextField(
                              controller: phoneController,
                              obSecure: false,
                              onChanged: (value) {},
                              keyboardType: TextInputType.number,
                              title: 'Enter Your Phone Number',
                            ),

                            SizedBox(height: 10),

                            AppText(text: 'Password'),
                            SizedBox(height: 10),
                            InputTextField(
                              suffixIcon: Transform.scale(
                                  scale: 1,
                                  child: Icon(
                                    Icons.fingerprint,
                                    color: AppColors.kRed,
                                    size: 30,
                                  )),
                              controller: passwordController,
                              obSecure: true,
                              onChanged: (value) {},
                              keyboardType: TextInputType.text,
                              title: 'Enter Your Password',
                            ),

                            SizedBox(height: 10),

                            AppText(text: 'Confirm Password'),
                            SizedBox(height: 10),
                            InputTextField(
                              suffixIcon: Icon(
                                Icons.fingerprint,
                                color: AppColors.kRed,
                                size: 30,
                              ),
                              controller: CpasswordController,
                              obSecure: true,
                              onChanged: (value) {},
                              keyboardType: TextInputType.text,
                              title: 'Confirm Your Password',
                            ),

                            SizedBox(height: 10),

                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 47),
                                  child:
                                      AppText(text: 'Your Civil ID\n     (Front)'),
                                ),
                                SizedBox(width: 67),
                                AppText(text: 'Your Civil ID\n     (Back)'),
                              ],
                            ),

                            SizedBox(height: 10),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SignUpContainor(),
                                SizedBox(width: 22),
                                SignUpContainor(),
                              ],
                            ),

                            SizedBox(height: 25),

                            AppButton(
                              onTap: () {
                                Get.to(SignIn_View());
                              },
                              ht: 46,
                              wd: 350,
                              rds: 10,
                              bText: 'Next',
                            ),

                            SizedBox(height: 25),

                            Padding(
                              padding: const EdgeInsets.only(left: 77),
                              child: InkWell(
                                onTap: (){Get.to(SignIn_View());},
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Already have an account?',
                                        style: TextStyle(color: AppColors.Tclr),
                                      ),
                                      TextSpan(
                                          text: 'Sign in',
                                          style: TextStyle(color: AppColors.kRed)),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
             ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tehseel_mobile_app/Utils/Colors/App_Colors.dart';

class InputTextField extends StatelessWidget {
  TextEditingController controller = TextEditingController();

  final String title;
  bool obSecure;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  void Function(String?)? onChanged;
  TextInputType? keyboardType;

  // final String errortext;

  InputTextField(
      {super.key,
      this.suffixIcon,
      this.validator,
      required this.keyboardType,
      required this.controller,
        required this.onChanged,
      required this.title,
      this.obSecure = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextFormField(
        style: TextStyle(color: Theme.of(context).primaryColor),
        validator: validator,
        keyboardType: keyboardType,
        controller: controller,
        onChanged: onChanged,
        obscureText: obSecure,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.Tclr,
           hintText: title,
          //labelText: title,
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 0),
          ),
          disabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 0),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 0),
          ),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                width: 1,
              )),
          errorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(width: 0)),
          focusedErrorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(width: 0)),
          contentPadding: const EdgeInsets.all(10),
          hintStyle: TextStyle(
              // fontFamily: AppConstant.LightFont,
              color: AppColors.kDark,
              overflow: TextOverflow.ellipsis),
          isDense: true,
          suffixIcon: suffixIcon,

        ),
      ),
    );
  }
}

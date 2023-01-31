import 'package:get/get.dart';

class SignController extends GetxController {
 var checkValue = false.obs;

  void updateValue( Value) {
    checkValue.value = Value;
    update();
  }
}

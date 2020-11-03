import 'package:get/get.dart';
class SplashController {
  static SplashController get to => Get.find();
  final pindah = false.obs;

  cobaPindah()async{
    await Future.delayed(Duration(seconds: 1));
    this.pindah.value = true;
  }
}
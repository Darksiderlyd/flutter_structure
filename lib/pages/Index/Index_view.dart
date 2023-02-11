import 'package:flutter/material.dart';
import 'package:flutter_structure/global.dart';
import 'package:flutter_structure/pages/Index/Index_controller.dart';
import 'package:flutter_structure/pages/home/home_view.dart';
import 'package:flutter_structure/pages/login/login_view.dart';
import 'package:flutter_structure/pages/splash/spalsh_view.dart';
import 'package:get/get.dart';

class IndexPage extends GetView<IndexController> {
  const IndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: controller.isloadWelcomePage.isTrue
              ? SplashPage()
              : Global.isOfflineLogin
                  ? HomePage()
                  : LoginPage(),
        ));
  }
}

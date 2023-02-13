import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_structure/common/langs/translation_service.dart';
import 'package:flutter_structure/global.dart';
import 'package:flutter_structure/pages/Index/Index_view.dart';
import 'package:flutter_structure/pages/Index/index_binding.dart';
import 'package:flutter_structure/router/app_pages.dart';
import 'package:get/get.dart';

void main() => Global.init().then((e) => runApp(const MyApp()));

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter With GetX Structure',
      home: const IndexPage(),
      initialBinding: IndexBinding(),
      debugShowCheckedModeBanner: false,
      enableLog: true,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      unknownRoute: AppPages.unknownRoute,
      builder: EasyLoading.init(),
      locale: TranslationService.locale,
      fallbackLocale: TranslationService.fallbackLocale,
    );
  }
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }
    return int.parse(hexColor, radix: 16);
  }
}

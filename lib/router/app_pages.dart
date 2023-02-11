import 'package:flutter_structure/pages/Index/Index_view.dart';
import 'package:flutter_structure/pages/home/home.binding.dart';
import 'package:flutter_structure/pages/home/home_view.dart';
import 'package:flutter_structure/pages/login/login_binding.dart';
import 'package:flutter_structure/pages/login/login_view.dart';
import 'package:flutter_structure/pages/notfound/notfound_view.dart';
import 'package:flutter_structure/pages/proxy/proxy_view.dart';
import 'package:get/get.dart';
part 'app_routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.Index;

  static final routes = [
    GetPage(
      name: AppRoutes.Index,
      page: () => IndexPage(),
    ),
    GetPage(
      name: AppRoutes.Login,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.Home,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
  ];

  static final unknownRoute = GetPage(
    name: AppRoutes.NotFound,
    page: () => NotfoundPage(),
  );

  static final proxyRoute = GetPage(
    name: AppRoutes.Proxy,
    page: () => ProxyPage(),
  );
}

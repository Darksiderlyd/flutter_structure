import 'package:flutter_structure/pages/login/login_model.dart';
import 'package:flutter_structure/utils/utils.dart';

/// 用户
class UserAPI {
  /// 登录
  static Future<UserLoginResponseModel> login({
    required Map params,
  }) async {
    var response = await Request().post(
      '/login/',
      params: params,
    );
    return UserLoginResponseModel.fromJson(response['data']);
  }
}
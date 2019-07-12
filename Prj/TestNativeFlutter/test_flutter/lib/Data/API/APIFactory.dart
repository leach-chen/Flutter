import 'package:test_flutter/Bean/user_info.dart';
import 'package:test_flutter/Data/API/APIUrl.dart';
import 'package:test_flutter/commonbase/Utils/net_utils.dart';

class APIFactory
{

  // 登陆获取用户信息
  static Future<UserInfo> doLogin(Map<String, String> params) async {
    //var response = await NetUtils.post(APIUrl.DO_LOGIN, params);
    var response = await NetUtils.post(APIUrl.DO_LOGIN, params);
    print("aaaaaaaaaaa:"+response['stateCode']);
    UserInfo userInfo = UserInfo(response['stateCode'],response['stateMsg']);
    return userInfo;
  }

}
import 'package:test_flutter/Data/API/APIFactory.dart';
import 'package:test_flutter/commonbase/Base/PresenterBase/BasePresenter.dart';
import 'package:test_flutter/commonbase/Base/UIBase/BaseImpl.dart';

import 'Interfaces/IMyCenterPresenter.dart';

class MyCenterPresenter<T extends BaseFulImplState> extends BasePresenter implements IMyCenterPresenter
{
  MyCenterPresenter(T impl) : super(impl);

  @override
  void login() {
    APIFactory.doLogin({'userMail': "test@qq.com", 'userPwd': "bd8888cb9c5ab36e3356ab0aa6947fde"}).then((result){
      mImpl.showToast("请求返回:"+result.stateMsg);
    }).catchError((onError) {
      mImpl.showToast(onError.toString());
    });
  }






}
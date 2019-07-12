import 'package:flutter/material.dart';
import 'package:test_flutter/Presenter/Home/MyCenterPresenter.dart';
import 'package:test_flutter/commonbase/Base/PresenterBase/BasePresenter.dart';
import 'package:test_flutter/commonbase/Base/UIBase/BaseImpl.dart';


class MyCenterImpl extends BaseFulImpl {

  @override
  State<StatefulWidget> initPage() {
    var impl = MyCenterImplState<MyCenterPresenter>();
    MyCenterPresenter<MyCenterImplState>(impl);
    return impl;
  }

}

class MyCenterImplState<T extends BasePresenter> extends BaseFulImplState{

  @override
  Widget initWidget(){
    return Center(
        child: InkWell(
          onTap: () {
            login();
          },
          child: Container(
            margin: EdgeInsets.only(top: 60),
            alignment: Alignment.center,
            width: 150,
            height: 50,
            child: Text(
              "登录",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            decoration: new BoxDecoration(
              color: const Color(0xFF03BEFD),
              borderRadius: BorderRadius.circular(100.0),
            ),
          ),
        ),
      );
  }

  login()
  {
    (mPresenter as MyCenterPresenter).login();
  }

  showToast(String str)
  {
      final snackBar = new SnackBar(content: new Text(str));
      Scaffold.of(mContext).showSnackBar(snackBar);
  }


}



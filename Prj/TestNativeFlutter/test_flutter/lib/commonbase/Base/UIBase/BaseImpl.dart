import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_flutter/commonbase/Base/PresenterBase/BasePresenter.dart';

import 'IBaseImpl.dart';
import 'IBaseStateImpl.dart';

abstract class BaseFulImpl extends StatefulWidget  implements IBaseImpl
{
      @override
      State<StatefulWidget> createState() {
        // TODO: implement createState
        return initPage();
      }
}

abstract class BaseFulImplState<T extends BasePresenter> extends State<BaseFulImpl>  implements IBaseStateImpl{

      BuildContext mContext;
      T mPresenter;


      void setPresenter(T presenter) {
        mPresenter = presenter;
      }


      @override
      Widget build(BuildContext context) {
        // TODO: implement build
        //return initWidget();
        return Scaffold(
          body: Builder(builder: (BuildContext context){
            mContext = context;
            return Container(
              child: initWidget(),
            );
          }),
        );
      }


}
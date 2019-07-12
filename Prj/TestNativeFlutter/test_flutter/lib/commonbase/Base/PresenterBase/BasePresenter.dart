import 'package:test_flutter/commonbase/Base/UIBase/BaseImpl.dart';

import 'IBasePresenter.dart';

abstract class BasePresenter extends IBasePresenter
{

  BaseFulImplState mImpl;
  BasePresenter(BaseFulImplState impl)
  {
      this.mImpl = impl;
      impl.setPresenter(this);
  }
}
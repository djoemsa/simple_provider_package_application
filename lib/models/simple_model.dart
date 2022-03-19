import 'package:flutter/foundation.dart';

class SimpleModel1 {
  String something = "Assalamu'alaikum";

  void salam() {
    something = 'Goodbye';
  }
}

class SimpleModel2 extends ChangeNotifier {
  String something = 'hello world';

  void salam(String anotherSomething) {
    something = anotherSomething;
    notifyListeners();
  }
}

class SimpleModel3 extends ChangeNotifier {
  String something = "hello world";

  void salam() {
    something = "Assalamu'alaikum";
    notifyListeners();
  }
}

class SimpleModelProxy {
  SimpleModel2 _simpleModel2;
  SimpleModelProxy(this._simpleModel2);

  void salamJuga() {
    _simpleModel2.salam("Wa'alaikum Sallam");
  }
}

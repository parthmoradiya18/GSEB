
import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Modal
{
  String? name,image,link;

  Modal({this.name,this.image,this.link});
}
class Provider_ extends ChangeNotifier {
  List<Modal> My_websited = [
    Modal(
        image: "assets/images/gseb-logo1.png",
        name: "GSEB",
        link: "https://www.gseb.org/"),
  ];

  WebViewController? webViewController;
  int temp2 = 0;

  void initController() {
    webViewController = WebViewController();
    webViewController!.loadRequest
      (Uri.parse("${My_websited[temp2].link}"));
  }

  void changeindex(int index) {
    temp2 = index;
  }

  int temp1 = 0;

  void selectIndex(int value) {
    temp1 = value;
    notifyListeners();
  }

  static Provider_? of(BuildContext context,
      {required bool listen}) {}
}

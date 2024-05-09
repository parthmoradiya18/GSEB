import 'package:board_website/State/Provider.dart';
import 'package:board_website/View/Board_page.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Websites_Page extends StatefulWidget {
  const Websites_Page({Key? key}) : super(key: key);

  @override
  State<Websites_Page> createState() => _Websites_PageState();
}

class _Websites_PageState extends State<Websites_Page> {
  Provider_? False;
  Provider_? True;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<Provider_>(context, listen: false).initController();
  }

  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context)!.settings.arguments as int;

    False = Provider.of<Provider_>(context, listen: false);
    True = Provider.of<Provider_>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Gujarat Info Petro Limited",
            style:
            TextStyle(color: Colors.lightGreen.shade900, fontSize: 18),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          leading: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return Board_Page();
                },
              ));
            },
            child: Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(3),
                alignment: Alignment.center,
                child: Icon(
                  Icons.home,
                  color: Colors.black,
                  size: 30,
                )),
          ),
        ),
        body: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.black),
                borderRadius:
                BorderRadius.all(Radius.circular(15))),
            child: WebViewWidget(controller: True!.webViewController!)),
      ),
    );
  }
}

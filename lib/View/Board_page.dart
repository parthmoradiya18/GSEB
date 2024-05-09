import 'package:board_website/State/Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Board_Page extends StatefulWidget {
  const Board_Page({Key? key}) : super(key: key);

  @override
  State<Board_Page> createState() => _Board_PageState();
}

class _Board_PageState extends State<Board_Page> {
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
    False = Provider.of<Provider_>(context, listen: false);
    True = Provider.of<Provider_>(context, listen: true);

    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.grey.shade400,
            appBar: AppBar(
              title: Text(
                "Gujarat Info Petro Limited",
                style:
                    TextStyle(color: Colors.lightGreen.shade900, fontSize: 18),
              ),
              backgroundColor: Colors.white,
              elevation: 0,
              centerTitle: true,
            ),
            body: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              child: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'second', arguments: 0);
                    False!.changeindex(0);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.black),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Image.asset(
                                      color: Colors.lightGreen.shade900,
                                      '${True!.My_websited[0].image}',
                                      height: 100,
                                      width: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Column(
                              children: [
                                Text(
                                  "${True!.My_websited[0].name}",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Exam Result",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )));
  }
}

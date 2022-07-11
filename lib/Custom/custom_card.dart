import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';


class CustomSubcard extends StatelessWidget {
  CustomSubcard(
      {required this.imageCover,
         this.imageIcon,
        required this.instName,
        this.function});

  final String imageCover;
  final String? imageIcon;
  final String instName;
  final VoidCallback? function;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(5.0),
      child: Container(
        child: Card(
          elevation: 8.0,
          borderOnForeground: true,
          child: SizedBox(
            width: MediaQuery.of(context).size.width/100,
            height: MediaQuery.of(context).size.height/100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(imageCover, height: 200, fit: BoxFit.fill),
                  ),
                ListTile(
                  leading: Tab(
                    icon: Image.asset(imageIcon!),
                  ),
                  title: Center(
                    child: FittedBox(
                      child: AutoSizeText(instName,
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.1,
                            color: Colors.black,
                            fontFamily: 'Cabin',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 4,
                          )),
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    iconSize: 35,
                    onPressed:function!, //TODO:delete the institution => delete the admin
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

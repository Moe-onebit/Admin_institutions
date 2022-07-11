import 'package:demo_app_admin/Custom/custom_Font.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';


class customUserCard extends StatelessWidget {
  customUserCard(
      {required this.imageCover,
        required this.adminName,
       required this.function,
      required this.institution});

  final String imageCover;
  final String adminName;
  final String institution;
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
                  leading: Opacity(
                    opacity: 0.0,
                    child: Tab(
                      icon: Image.asset('images/icon.png'),
                    ),
                  ),
                  title: Center(
                    child: FittedBox(
                      child: AutoSizeText(adminName,
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.1,
                            color: Colors.black,
                            fontFamily: 'Cabin',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 4,
                          )),
                    ),
                  ),
                  subtitle: CustomFont(text: institution,fontFamily: 'Cabin',),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    iconSize: 35,
                    onPressed:function!, //TODO:: delete the Admin
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

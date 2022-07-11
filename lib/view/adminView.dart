// الواجهة العامة لإضافة الأدمن أو إزالتهم

import 'package:demo_app_admin/Custom/CustomAddAdmin.dart';
import 'package:demo_app_admin/Custom/CustomUserCard.dart';
import 'package:demo_app_admin/Custom/custom_Font.dart';
import 'package:flutter/material.dart';

class AdminsView extends StatefulWidget {

  @override
  State<AdminsView> createState() => _AdminsViewState();
}

class _AdminsViewState extends State<AdminsView> {
  final itemsFragments = [
    customUserCard(imageCover: 'images/profile1.jpg',adminName: 'Mohammad The Monkey',institution: 'The Ape Institution',function: (){},),
    customUserCard(imageCover: 'images/profile1.jpg',adminName: 'Mohammad The Monkey',institution: 'The Ape Institution',function: (){},),
    customUserCard(imageCover: 'images/profile1.jpg',adminName: 'Mohammad The Monkey',institution: 'The Ape Institution',function: (){},),
    customUserCard(imageCover: 'images/profile1.jpg',adminName: 'Mohammad The Monkey',institution: 'The Ape Institution',function: (){},),
    customUserCard(imageCover: 'images/profile1.jpg',adminName: 'Mohammad The Monkey',institution: 'The Ape Institution',function: (){},),
    CustomAddAdmin(institution: 'Institution\'s name', description: 'Description', formKey: new GlobalKey(),email: 'Admin\'s email')
  ];

  //TODO:: get the data from the database and convert it to a map

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    print(_size.width);
    return SizedBox.expand(
      child: Scaffold(
          body: Container(
            color: Colors.grey.shade50,
            child: Flex(
                direction: Axis.vertical,
                children:[
                  Flexible(
                    fit: FlexFit.loose,
                  child: LayoutBuilder(builder: (context, constraints) {
                    return GridView.builder(
                      itemCount: itemsFragments.length,
                      itemBuilder: (context,index) => itemsFragments[index],
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: _size.width < 1536.0 ? 1.1 : 1.4 ,
                        crossAxisCount: _size.width > 1171.2 ? 4: _size.width > 880.0 ? 3: _size.width > 585.6 ? 2:1,
                        // childAspectRatio: 1,
                      ),
                    );
                  })
                  ),
                ]
            ),
        ),
      ),
    );
  }
}

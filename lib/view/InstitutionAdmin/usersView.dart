import 'package:flutter/material.dart';

import '/Custom/CustomAddAdmin.dart';
import '/Custom/CustomUserCard.dart';

class UsersView extends StatefulWidget {
  @override
  _UsersViewState createState() => _UsersViewState();
}

class _UsersViewState extends State<UsersView> {

  final itemsFragments = [
    customUserCard(imageCover: 'images/profile1.jpg',adminName: 'Mohammad The Monkey',institution: 'The Ape Institution',function: (){},),
    customUserCard(imageCover: 'images/profile1.jpg',adminName: 'Mohammad The Monkey',institution: 'The Ape Institution',function: (){},),
    customUserCard(imageCover: 'images/profile1.jpg',adminName: 'Mohammad The Monkey',institution: 'The Ape Institution',function: (){},),
    customUserCard(imageCover: 'images/profile1.jpg',adminName: 'Mohammad The Monkey',institution: 'The Ape Institution',function: (){},),
    customUserCard(imageCover: 'images/profile1.jpg',adminName: 'Mohammad The Monkey',institution: 'The Ape Institution',function: (){},),
    CustomAddAdmin(institution: 'Institution\'s name', description: 'Description', formKey: new GlobalKey(),email: 'Admin\'s email')
  ];

  //TODO:: get the users data from the database and convert it to a map


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

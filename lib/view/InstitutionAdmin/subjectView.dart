import 'package:demo_app_admin/Custom/CustomAddSubject.dart';
import 'package:flutter/material.dart';
import '/Custom/CustomAddAdmin.dart';
import '/Custom/CustomUserCard.dart';

class SubjectView extends StatefulWidget {
  @override
  _SubjectViewState createState() => _SubjectViewState();
}

class _SubjectViewState extends State<SubjectView> {

  final itemsFragments = [
    customUserCard(imageCover: 'images/profile1.jpg',adminName: 'Mohammad The Monkey',institution: 'The Ape Institution',function: (){},),
    customUserCard(imageCover: 'images/profile1.jpg',adminName: 'Mohammad The Monkey',institution: 'The Ape Institution',function: (){},),
    customUserCard(imageCover: 'images/profile1.jpg',adminName: 'Mohammad The Monkey',institution: 'The Ape Institution',function: (){},),
    customUserCard(imageCover: 'images/profile1.jpg',adminName: 'Mohammad The Monkey',institution: 'The Ape Institution',function: (){},),
    customUserCard(imageCover: 'images/profile1.jpg',adminName: 'Mohammad The Monkey',institution: 'The Ape Institution',function: (){},),
    CustomAddSubject(name: 'Subject\'s name', details: 'Description', formKey: new GlobalKey(),price: 'Price',time: 'Time',teacher: 'Teacher',)
  ];

  //TODO:: get the subject data from the database and convert it to a map
  //TODO:: take me to the subject page when tapping on it

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

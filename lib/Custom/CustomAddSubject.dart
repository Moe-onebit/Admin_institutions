import 'package:flutter/material.dart';

import 'Forms/CustomSubjectForm.dart';

class CustomAddSubject extends StatelessWidget {

  final formKey ; // مفتاح الفورم
  final String details;
  final String? icon;
  final String? img;
  final String name;
  final String price;
  final String teacher;
  final String time;

  CustomAddSubject ( {this.formKey, required this.details,  this.icon, this.img,required this.name,required this.price, required this.teacher , required this.time}) ;
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        showDialog(context: context, builder: (BuildContext context){
          return CustomSubjectForm(formKey:  formKey, name: name, details: details, icon: icon, img: img, price: price, teacher: teacher, time: time,);
        });
      },
      child: Icon(
        Icons.add,
        size: 30,
      ),
    );
  }
}

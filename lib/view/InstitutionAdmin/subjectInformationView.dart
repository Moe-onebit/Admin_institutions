import 'package:demo_app_admin/Custom/CutomAddLecture.dart';
import 'package:demo_app_admin/Custom/custom_Font.dart';
import 'package:demo_app_admin/Custom/custom_Pdf.dart';
import 'package:flutter/material.dart';

class SubjectInformation extends StatefulWidget {
  @override
  _SubjectInformationState createState() => _SubjectInformationState();
}

class _SubjectInformationState extends State<SubjectInformation> {
  final itemsFragments = [
    CustomPdf(title: 'Lecture',download: (){},openPDF: (){},),
    CustomPdf(title: 'Lecture',download: (){},openPDF: (){},),
    CustomPdf(title: 'Lecture',download: (){},openPDF: (){},),
    CustomPdf(title: 'Lecture',download: (){},openPDF: (){},),
    CustomPdf(title: 'Lecture',download: (){},openPDF: (){},),
    CustomPdf(title: 'Lecture',download: (){},openPDF: (){},),
    AddLecture(addPDF: (){})
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: CustomFont(text: 'Subject name'),
        centerTitle: true,

      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(2,2,2,2),
          child: ListView.builder(
              itemCount: itemsFragments.length,
              itemBuilder: (context,index)=> itemsFragments[index]),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AddLecture extends StatelessWidget {
  final VoidCallback addPDF;
  const AddLecture({Key? key, required this.addPDF}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell( 
        onTap: addPDF,
        //TODO:: implement to open file when clicking the PDF
        child:Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: (ListTile(
                      title:Center(child:
                  Text(
                    'Add Lecture',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                )),
                ));
  }
}
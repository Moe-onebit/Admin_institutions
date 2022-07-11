import 'package:flutter/material.dart';

class CustomPdf extends StatelessWidget {
  const CustomPdf({Key? key,required String this.title, required VoidCallback this.download, required VoidCallback this.openPDF}) : super(key: key);
  final String title;
  final VoidCallback download;
  final VoidCallback openPDF;
  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
       InkWell( 
        onTap: openPDF,
        //TODO:: implement to open file when clicking the PDF
        child:Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: (ListTile(
                  leading: Icon(
                    Icons.picture_as_pdf,
                    color: Color.fromARGB(255, 207, 12, 1),
                  ),
                  trailing:InkWell(
                    //TODO:: implement downloading the PDF
                    onTap: download,
                    child:Icon(
                    Icons.download_sharp
                  )),
                  title: Center(child:
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  )),
                )),
                )),
                SizedBox(height: 10,)]
                );
  }
}
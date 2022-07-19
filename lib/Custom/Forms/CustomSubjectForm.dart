import 'package:demo_app_admin/Custom/custom_Font.dart';
import 'package:demo_app_admin/Custom/inputField.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';


import '../Custom_Raised_Bottun.dart';

class CustomSubjectForm extends StatelessWidget {
  final formKey ; // مفتاح الفورم
  final String details;
  final String? icon;
  final String? img;
  final String name;
  final String price;
  final String teacher;
  final String time;


  //TODO:: add an image input

  // الفـــــورم الـــــعام لإضــــــافــة معــهد أو أدمـــن
  CustomSubjectForm ({Key? key,  this.formKey, required this.details,  this.icon, this.img,required this.name,required this.price, required this.teacher , required this.time}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = new TextEditingController(); // مــــشان أخــد الــمــعلومات من الحــقول
    TextEditingController institutionController = new TextEditingController(); // مــــشان أخــد الــمــعلومات من الحــقول
    TextEditingController descriptionController = new TextEditingController(); // مــــشان أخــد الــمــعلومات من الحــقول

    return AlertDialog(
      content: SingleChildScrollView(
        child: Column(
        children: <Widget>[
          Form(
            key: formKey,
            child: Column(
              children: <Widget>[
                //فيلد لإدخال اسم الأدمن أو المعهد
                Padding(padding: EdgeInsets.all(8.0),
                  child: InputField(
                    //TODO:: implement the onSaved and validator
                    controller: emailController,
                    labelText: name,
                    padding: EdgeInsets.all(10),
                    borderSide: BorderSide(color: Colors.grey),
                    color: Colors.grey,
                    inputBorder: InputBorder.none,
                    obscureText: false,
                    enableSuggestion: true,
                    autoCorrect: true,
                    textInputAction: TextInputAction.next,
                  ),
                ),
                Padding(padding: EdgeInsets.all(8.0),
                  child: InputField(
                    //TODO:: implement the onSaved and validator
                    controller: institutionController,
                    labelText: details,
                    padding: EdgeInsets.all(10),
                    borderSide: BorderSide(color: Colors.grey),
                    color: Colors.grey,
                    inputBorder: InputBorder.none,
                    obscureText: false,
                    enableSuggestion: true,
                    autoCorrect: true,
                    textInputAction: TextInputAction.next,
                  ),
                ),
                //فيلد لإدخال تفاصيل الأدمن أو المعهد
                Padding(padding: EdgeInsets.all(8.0),
                  child: InputField(
                    //TODO:: implement the onSaved and validator
                    controller: institutionController,
                    labelText: teacher,
                    padding: EdgeInsets.all(10),
                    borderSide: BorderSide(color: Colors.grey),
                    color: Colors.grey,
                    inputBorder: InputBorder.none,
                    obscureText: false,
                    enableSuggestion: true,
                    autoCorrect: true,
                    textInputAction: TextInputAction.next,
                  ),
                ),

                Padding(padding: EdgeInsets.all(8.0),
                  child: InputField(
                    //TODO:: implement the onSaved and validator
                    controller: institutionController,
                    labelText: time,
                    padding: EdgeInsets.all(10),
                    borderSide: BorderSide(color: Colors.grey),
                    color: Colors.grey,
                    inputBorder: InputBorder.none,
                    obscureText: false,
                    enableSuggestion: true,
                    autoCorrect: true,
                    textInputAction: TextInputAction.next,
                  ),
                ),

                Padding(padding: EdgeInsets.all(8.0),
                  child: InputField(
                    //TODO:: implement the onSaved and validator
                    controller: institutionController,
                    labelText: price,
                    padding: EdgeInsets.all(10),
                    borderSide: BorderSide(color: Colors.grey),
                    color: Colors.grey,
                    inputBorder: InputBorder.none,
                    obscureText: false,
                    enableSuggestion: true,
                    autoCorrect: true,
                    textInputAction: TextInputAction.next,
                  ),
                ),

                SizedBox(
                  height: 20,
                ),

                CustomRaisedButton(
                    width: 200,
                    height: 50.0,
                    margin: const EdgeInsets.symmetric(horizontal: 50),
                    color: Colors.teal.shade500,
                    borderRadius: BorderRadius.circular(10),
                    text: "Cover",
                    textColor: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    function: _icon_pick_file
                ),
                
                SizedBox(
                  height: 20,
                ),
                CustomRaisedButton(
                    width: 200,
                    height: 50.0,
                    margin: const EdgeInsets.symmetric(horizontal: 50),
                    color: Colors.teal.shade500,
                    borderRadius: BorderRadius.circular(10),
                    text: "Image",
                    textColor: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    function: _img_pick_file
                ),
           
                //زر مشان ال Submit
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    
                    child: CustomFont(text: 'Submit',fontFamily: 'Cabin',),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal.shade500
                    ),
                    onPressed: () {
                      if (formKey.currentState.validate()) {
                        formKey.currentState.save();
                        Navigator.of(context).pop();

                        //TODO: Save the values to the database using the controller

                      }
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
      )
    );
  }

  void _icon_pick_file() async{
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        dialogTitle: 'Please select your profile picture',
        allowedExtensions: ['jpg', 'png', 'jpeg'],
        type: FileType.custom
    );

    if(result == null) return ;

    String? file = result.files.single.path;
  }

  void _img_pick_file() async{
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        dialogTitle: 'Please select your profile picture',
        allowedExtensions: ['jpg', 'png', 'jpeg'],
        type: FileType.custom
    );

    if(result == null) return ;

    String? file = result.files.single.path;
  }

}



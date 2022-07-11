import 'package:demo_app_admin/Custom/custom_Font.dart';
import 'package:demo_app_admin/Custom/inputField.dart';
import 'package:flutter/material.dart';

class CustomInstitutionForm extends StatelessWidget {
  final formKey ; // مفتاح الفورم
  final String institution; // الاسم سواء معهد أو أدمن
  final String description; //وصف المعهد أو تفاصيل عن الأدمن

  // الفـــــورم الـــــعام لإضــــــافــة معــهد أو أدمـــن
  CustomInstitutionForm ({Key? key,  this.formKey, required this.institution, required this.description}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TextEditingController institutionController = new TextEditingController(); // مــــشان أخــد الــمــعلومات من الحــقول
    TextEditingController descriptionController = new TextEditingController(); // مــــشان أخــد الــمــعلومات من الحــقول

    return AlertDialog(
      content: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Form(
            key: formKey,
            child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.all(8.0),
                  child: InputField(
                    controller: institutionController,
                    labelText: institution,
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
                    controller: descriptionController,
                    labelText: description,
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
                //زر مشان الSubmit
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    child: CustomFont(text: 'Submit',fontFamily: 'Cabin',),
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
    );
  }
}

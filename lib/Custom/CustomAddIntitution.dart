import 'package:demo_app_admin/Custom/Forms/CustomInstitutionForm.dart';
import 'package:flutter/material.dart';

class CustomAddInstitution extends StatelessWidget {

  final formKey ;
  String institution;
  String description;
  //TODO: create an image input

  CustomAddInstitution ( {required this.formKey, required this.institution,required this.description}) ;
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        showDialog(context: context, builder: (BuildContext context){
          return CustomInstitutionForm(formKey:  formKey, institution: institution, description: description);
        });
      },
      child: Icon(
        Icons.add,
        size: 30,
      ),
    );
  }
}

import 'package:demo_app_admin/Custom/Forms/CustomForm.dart';
import 'package:flutter/material.dart';

class CustomAddAdmin extends StatelessWidget {

   final formKey ;
   String institution;
   String description;
   String email;

  CustomAddAdmin ( {required this.formKey, required this.institution,required this.description,required this.email}) ;
  @override
  Widget build(BuildContext context) {

   return GestureDetector(
      onTap: () {
        showDialog(context: context, builder: (BuildContext context){
          return CustomForm(formKey:  formKey, institution: institution, description: description, email: email,);
        });
      },
      child: Icon(
        Icons.add,
        size: 30,
      ),
    );
  }
}

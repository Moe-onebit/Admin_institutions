import 'package:demo_app_admin/Custom/Custom_Raised_Bottun.dart';
import 'package:demo_app_admin/Custom/custom_Font.dart';
import 'package:demo_app_admin/view/InstitutionAdmin/institutionView.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:demo_app_admin/Custom//inputField.dart';


class SettingsForm extends StatefulWidget {
  @override
  _SettingsFormState createState() => _SettingsFormState();
}

class _SettingsFormState extends State<SettingsForm> {
  final _formKey = GlobalKey<FormState>();
  String? _coverPath;
  String? _profilePath;
  @override
  Widget build(BuildContext context) {

    return Form(
        key: _formKey,
        child:
        SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                    child: CustomFont(text: 'Edit Profile',fontSize: 25,fontWeight: FontWeight.bold, fontFamily: 'Cabin',)),
                InputField(
                  //TODO:: implement the onSaved and validator
                  labelText: 'Name',
                  padding: EdgeInsets.all(10),
                  borderSide: BorderSide(color: Colors.grey),
                  color: Colors.grey,
                  inputBorder: InputBorder.none,
                  obscureText: false,
                  enableSuggestion: true,
                  autoCorrect: true,
                  textInputAction: TextInputAction.next,
                ),
                InputField(
                  //TODO:: implement the onSaved and validator
                labelText: 'Description',
                  padding: EdgeInsets.all(10),
                  borderSide: BorderSide(color: Colors.grey),
                  color: Colors.grey,
                  inputBorder: InputBorder.none,
                  obscureText: false,
                  enableSuggestion: true,
                  autoCorrect: true,
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(height: 20,),

                Visibility(
                    visible: false,
                    child:
                    TextFormField(
                      //TODO:: implement the onSaved and validator
                    initialValue: _coverPath,
                    )
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
                    function: _cover_pick_file
                ),
                SizedBox(height: 20,),
                CustomRaisedButton(
                    width: 200,
                    height: 50.0,
                    margin: const EdgeInsets.symmetric(horizontal: 50),
                    color: Colors.teal.shade500,
                    borderRadius: BorderRadius.circular(10),
                    text: "Profile Picture",
                    textColor: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    function: _profile_pick_file
                ),
                Visibility(
                  //TODO:: implement the onSaved and validator
                visible: false,
                    child:
                    TextFormField(
                      initialValue: _coverPath,
                    )
                ),
                SizedBox(
                  height: 40,
                ),
                CustomRaisedButton(
                  //TODO:: Active the button and save the new data
                  width: 200 ,
                  height: 50.0,
                  margin: const EdgeInsets.symmetric(horizontal: 50),
                  color: Colors.teal.shade500,
                  borderRadius: BorderRadius.circular(10),
                  text: "Update",
                  textColor: Colors.grey.shade200,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  function: () => Navigator.pop(context),
                )
              ],
            ),
          ),
        )
    );
  }

  void _cover_pick_file() async{
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        dialogTitle: 'Please select your profile picture',
        allowedExtensions: ['jpg', 'png', 'jpeg'],
        type: FileType.custom
    );

    if(result == null) return ;

    String? file = result.files.single.path;
    setState(() {
      _coverPath = file;
    });
  }

  // To pick up a picture from File Explorer
  void _profile_pick_file() async{
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        dialogTitle: 'Please select your profile picture',
        allowedExtensions: ['jpg', 'png', 'jpeg'],
        type: FileType.custom
    );

    if(result == null) return ;

    String? file = result.files.single.path;
    setState(() {
      _profilePath = file;
    });
  }
}

import 'package:demo_app_admin/view/InstitutionAdmin/institutionDrawerView.dart';
import 'package:demo_app_admin/view/InstitutionAdmin/subjectInformationView.dart';
import 'Auth/binding.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: Binding(),
      debugShowCheckedModeBanner: false,
      home: SubjectInformation(),
    );
  }
}

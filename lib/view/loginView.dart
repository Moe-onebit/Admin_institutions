import 'package:demo_app_admin/Auth/auth_view_model.dart';
import 'package:demo_app_admin/Custom/custom_Font.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/Custom/Custom_Raised_Bottun.dart';
import '/Custom/Header.dart';
import '/Custom/inputField.dart';

class LoginView extends GetWidget<AuthViewModel> {

  final GlobalKey <FormState> _formKey = GlobalKey<FormState>();
  // final AuthViewModel controller = AuthViewModel();
 
 
  @override
  Widget build(BuildContext context) {
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Colors.teal[700]!,
            Colors.teal[200]!,
            Colors.teal[400]!
          ]),
        ),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 80,
            ),
            if (!isKeyboard)
              Header(
                padding: const EdgeInsets.all(20),
                crossAxisAlignment: CrossAxisAlignment.start,
                head: "Welcome",
                headTextStyle:
                    const TextStyle(color: Colors.white, fontSize: 40),
                sizedBoxHeight: 10,
                subtitle: "Sign In to Your Admin Account",
                subtitleTextStyle:
                    const TextStyle(color: Colors.white, fontSize: 18),
              ),
            Expanded(
                child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  )),
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: SingleChildScrollView(
                  reverse: true,
                  padding: EdgeInsets.all(32),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 40,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: <Widget>[
                              InputField(
                                labelText: 'Email',
                                padding: EdgeInsets.all(10),
                                borderSide: BorderSide(color: Colors.grey),
                                hintText: "Enter your email",
                                color: Colors.grey,
                                inputBorder: InputBorder.none,
                                obscureText: false,
                                enableSuggestion: true,
                                autoCorrect: true,
                                onSaved: (value) {},
                                // (value){controller.email = value!;},
                                validator: (value) {
                                  if (value == null) {
                                    print("ERROR");
                                  }
                                },
                              ),
                              InputField(
                                labelText: 'Password',
                                padding: EdgeInsets.all(10),
                                borderSide: BorderSide(color: Colors.grey),
                                hintText: "Enter your password",
                                color: Colors.grey,
                                inputBorder: InputBorder.none,
                                obscureText: true,
                                enableSuggestion: false,
                                autoCorrect: false,
                                onSaved: (value) {},
                                // (value){ controller.password = value!;},
                                validator: (value) {
                                  if (value == null) {
                                    print("ERROR");
                                  }
                                },
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                  
                        const SizedBox(
                          height: 40,
                        ),
                        CustomRaisedButton(
                            width: 200,
                            height: 50.0,
                            margin: const EdgeInsets.symmetric(horizontal: 50),
                            color: Colors.teal.shade500,
                            borderRadius: BorderRadius.circular(10),
                            text: "LOGIN",
                            textColor: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            function: () {}
                            // {
                            //   _formKey.currentState?.save();
                            //   if(_formKey.currentState?.validate() !=null){
                            //     controller.signInWithEmailAndPassword();
                            //   }
                            // },
                            ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }

}
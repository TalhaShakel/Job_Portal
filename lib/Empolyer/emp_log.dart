import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_portal/Empolyer/emp_home.dart';
import 'package:job_portal/main.dart';

import '../widgets/textfeilds.dart';

class Empolyer_Log extends StatelessWidget {
  const Empolyer_Log({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    final _formKey = GlobalKey<FormState>();
    TextEditingController password = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGIN"),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Empolyer"),
            textfeild(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'enter a valid eamil';
                  } else if (!value.contains("@")) {
                    return 'enter a valid eamil';
                  }
                  return null;
                },
                label: "Email",
                controler: email),
            textfeild(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please Enter Password";
                  } else if (value.length < 6) {
                    return "Password must be atleast 6 characters long";
                  } else {
                    return null;
                  }
                },
                label: "Password",
                controler: password),
            ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Get.to(Emp_Home());
                  }
                },
                style: ElevatedButton.styleFrom(minimumSize: Size(100, 40)),
                child: Text("Login")),
          ],
        ),
      ),
    );
  }
}

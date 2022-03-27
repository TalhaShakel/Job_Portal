import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_portal/Empolyer/emp_log.dart';
import 'package:job_portal/widgets/button.dart';

import '../widgets/textfeilds.dart';

class Empolyer_Sign extends StatelessWidget {
  const Empolyer_Sign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController name = TextEditingController();
    final _formKey = GlobalKey<FormState>();
    TextEditingController password = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
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
                label: "Name",
                controler: name),
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
            button(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Get.to(Empolyer_Log());
                  }
                },
                height: 40.0,
                width: 150.0,
                text: "Register")
          ],
        ),
      ),
    );
  }
}

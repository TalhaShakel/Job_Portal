import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_portal/Job%20Applicant/job_home.dart';
import 'package:job_portal/Job%20Applicant/job_sign.dart';
import 'package:job_portal/main.dart';
import 'package:job_portal/widgets/button.dart';

import '../widgets/textfeilds.dart';

class job_Log extends StatelessWidget {
  const job_Log({Key? key}) : super(key: key);

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
            Text("Job Applicant"),
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
                    Get.to(job_Home());
                  }
                },
                height: 40.0,
                width: 150.0,
                text: "Login"),
            TextButton(
                onPressed: () {
                  Get.to(Job_Sign());
                },
                child: Text("create new acoount"))
          ],
        ),
      ),
    );
  }
}

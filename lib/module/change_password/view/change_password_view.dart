import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core.dart';
import '../controller/change_password_controller.dart';

class ChangePasswordView extends StatefulWidget {
  ChangePasswordView({Key? key}) : super(key: key);

  Widget build(context, ChangePasswordController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("ChangePassword"),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              QTextField(
                label: "Old Password",
                obscure: true,
                validator: Validator.required,
                suffixIcon: Icons.password,
                onChanged: (value) {},
              ),
              QTextField(
                label: "New Password",
                obscure: true,
                validator: Validator.required,
                suffixIcon: Icons.password,
                onChanged: (value) {},
              ),
              QTextField(
                label: "Confirm New Password",
                obscure: true,
                validator: Validator.required,
                suffixIcon: Icons.password,
                onChanged: (value) {},
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: QActionButton(
        label: "Save",
        onPressed: () {},
      ),
    );
  }

  @override
  State<ChangePasswordView> createState() => ChangePasswordController();
}

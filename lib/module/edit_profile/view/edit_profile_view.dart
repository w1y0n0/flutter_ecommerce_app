import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core.dart';
import 'package:flutter_ecommerce_app/shared/widget/form/image_picker/circle_image_picker.dart';

class EditProfileView extends StatefulWidget {
  EditProfileView({Key? key}) : super(key: key);

  Widget build(context, EditProfileController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("EditProfile"),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              QCircleImagePicker(
                label: "Photo",
                validator: Validator.required,
                value: null,
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 6.0,
              ),
              H5(title: "Personal Information"),
              const SizedBox(
                height: 8.0,
              ),
              QTextField(
                label: "Full Name",
                validator: Validator.required,
                onChanged: (value) {},
              ),
              QTextField(
                label: "Last Name",
                validator: Validator.required,
                onChanged: (value) {},
              ),
              QDatePicker(
                label: "Date of Birth",
                validator: Validator.required,
                onChanged: (value) {
                  print("value: $value");
                },
              ),
              QTextField(
                label: "Email",
                validator: Validator.required,
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
  State<EditProfileView> createState() => EditProfileController();
}

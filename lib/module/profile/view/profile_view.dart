// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_ecommerce_app/core.dart';

import '../controller/profile_controller.dart';

class ProfileView extends StatefulWidget {
  ProfileView({Key? key}) : super(key: key);

  Widget build(context, ProfileController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_horiz,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 36.0,
                backgroundImage: NetworkImage(
                  "https://i.ibb.co/PGv8ZzG/me.jpg",
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                "John Doe",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                "john.doe@labsi.biz.id",
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ProfileList(
                title: "Edit Profile",
                onPressed: () => Get.to(EditProfileView()),
              ),
              Divider(),
              ProfileList(
                title: "Change Password",
                onPressed: () => Get.to(ChangePasswordView()),
              ),
              Divider(),
              ProfileList(
                title: "FAQ",
                onPressed: () => Get.to(FaqView()),
              ),
              Divider(),
              ProfileList(
                title: "Privacy Policy",
                onPressed: () => Get.to(PrivacyPolicyView()),
              ),
              Divider(),
              ProfileList(
                title: "Term of Service",
                onPressed: () => Get.to(TosView()),
              ),
              Divider(),
              ProfileList(
                title: "Logout",
                onPressed: () => controller.doLogout(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ProfileView> createState() => ProfileController();
}

class ProfileList extends StatelessWidget {
  final String title;
  final Function onPressed;
  const ProfileList({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(this.title),
      trailing: Icon(
        Icons.chevron_right,
        size: 24.0,
      ),
      onTap: () => onPressed(),
    );
  }
}

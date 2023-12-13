import 'package:flutter/cupertino.dart';
import 'package:groupproject/screen/login/login_page.dart';
import 'package:get/get.dart';

Row buildActionBar() {
  return Row(
    children: [
      const Text(
        'Canada Computers',
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      ),
      const Spacer(),
      GestureDetector(
        onTap: () => Get.to(const LoginScreen()),
        child: const Icon(
          CupertinoIcons.profile_circled,
          size: 45,
        ),
      ),
    ],
  );
}

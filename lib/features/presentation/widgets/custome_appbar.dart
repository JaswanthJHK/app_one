import 'package:flutter/material.dart';

class CustomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 100,
        width: double.infinity ,
        color: Colors.transparent,
      ),
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.maxFinite, 80);
}
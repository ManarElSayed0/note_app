import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon, this.onPressed});
  final void Function()? onPressed;
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style:const TextStyle(
            fontSize: 30
        ),),
        Spacer(),
        CustomIcon(icon: icon,
        onPressed: onPressed,
        ),
      ],

    );
  }
}

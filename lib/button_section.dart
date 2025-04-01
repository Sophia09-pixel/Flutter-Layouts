// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class ButtonSection extends StatelessWidget {

 const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
     final Color color = Theme.of(context).primaryColor;
     return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(color: color, icon: Icons.call, label: 'CALL'),
          ButtonWithText(color: color, icon: Icons.near_me, label: 'ROUTE'),
          ButtonWithText(color: color, icon: Icons.share, label: 'SHARE'),
        ],
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String label;
  
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });
 

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
  
}
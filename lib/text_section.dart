import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final String description;
  
  const TextSection({
    super.key,
    required this.description
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(32),
      child: Text(description, softWrap: true),
    );
  }
  
}
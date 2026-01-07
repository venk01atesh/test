import 'package:flutter/material.dart';

class checkboxes extends StatefulWidget {
  const checkboxes({super.key});

  @override
  State<checkboxes> createState() => _checkboxesState();
}

class _checkboxesState extends State<checkboxes> {
  bool clicked =false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(value: clicked, onChanged:
        (value){
      setState(() {
        clicked=value!;
      });
  }
    );
}
}

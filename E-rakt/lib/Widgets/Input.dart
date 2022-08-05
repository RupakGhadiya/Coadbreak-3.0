import 'package:flutter/material.dart';

class Inputs extends StatefulWidget {
  final String label;
  final bool obscureText;
  const Inputs({
    required this.label,
    required this.obscureText,
    Key? key,
  }) : super(key: key);

  @override
  State<Inputs> createState() => _InputsState();
}

class _InputsState extends State<Inputs> {
  @override
  Widget build(BuildContext context) {
    String text = "";
    // TextEditingController firstNameController = TextEditingController();
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.fromLTRB(20, 10, 20, 3),
        padding: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: Colors.white30,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            color: Color.fromARGB(255, 198, 42, 39),
            width: 0.1,
          ),
        ),
        child: TextField(
          obscureText: widget.obscureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(15.0),
            border: InputBorder.none,
            hintText: widget.label,
            hintStyle: TextStyle(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}

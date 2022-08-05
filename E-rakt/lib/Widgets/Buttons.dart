import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  final String text;
  final Function task;
  const Buttons({
    Key? key,
    required this.text,
    required this.task,
  }) : super(key: key);

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        widget.task();
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      height: 50.0,
      minWidth: 310.0,
      splashColor: Color.fromARGB(255, 235, 170, 117),
      // color: Color.fromARGB(255, 221, 119, 79),
      color: Color.fromARGB(255, 66, 128, 241),
      child: Text(
        widget.text,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}

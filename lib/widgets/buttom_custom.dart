import 'package:flutter/material.dart';

class ButtomCustom extends StatefulWidget {
  final VoidCallback onClick;
  const ButtomCustom({super.key, required this.onClick});

  @override
  State<ButtomCustom> createState() => _ButtomCustomState();
}

class _ButtomCustomState extends State<ButtomCustom> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {widget.onClick()},
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.deepOrange,
            borderRadius: BorderRadius.circular(12.0)),
        child: const Center(
            child: Text('Sign In',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18))),
      ),
    );
  }
}

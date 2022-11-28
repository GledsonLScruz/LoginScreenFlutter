import 'package:flutter/material.dart';

class EditTextCustom extends StatefulWidget {
  final String hint;
  const EditTextCustom({super.key, required this.hint});

  @override
  State<EditTextCustom> createState() => _EditTextCustomState();
}

class _EditTextCustomState extends State<EditTextCustom> {
  String _input = '';

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (enteredPassword) {
        _input = enteredPassword;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey[250],
          labelText: widget.hint,
          labelStyle: const TextStyle(color: Colors.black45),
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              borderSide: BorderSide(color: Colors.black12, width: 1.5)),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black12, width: 1.5)),
          floatingLabelBehavior: FloatingLabelBehavior.never,
          border: InputBorder.none),
    );
  }
}

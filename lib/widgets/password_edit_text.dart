import 'package:flutter/material.dart';

class PasswordEditText extends StatefulWidget {
  const PasswordEditText({super.key});

  @override
  State<PasswordEditText> createState() => _PasswordEditTextState();
}

class _PasswordEditTextState extends State<PasswordEditText> {
  bool _showPassword = false;
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: !_showPassword,
      onChanged: (enteredPassword) {
        _password = enteredPassword;
      },
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[250],
        labelText: "Password",
        labelStyle: const TextStyle(color: Colors.black45),
        enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide(color: Colors.black12, width: 1.5)),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black12, width: 1.5)),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              _showPassword = !_showPassword;
            });
          },
          child: Container(
            width: 25,
            height: 25,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            alignment: Alignment.center,
            child: _showPassword
                ? Icon(Icons.visibility_off)
                : Icon(Icons.visibility),
          ),
        ),
        border: InputBorder.none,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_login_screen/widgets/edit_text_custom.dart';
import 'package:flutter_login_screen/widgets/password_edit_text.dart';

class SingUpPage extends StatelessWidget {
  const SingUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Row(
            children: [
              GestureDetector(
                onTap: (() {
                  Navigator.pop(context);
                }),
                child: (const Icon(
                  Icons.arrow_back_ios,
                  size: 30,
                  color: Colors.black,
                )),
              )
            ],
          ),
          SizedBox(height: 20),
          const Text('Criar nova conta',
              textAlign: TextAlign.center, style: TextStyle(fontSize: 28)),
          SizedBox(height: 15),
          EditTextCustom(hint: "Nome"),
          SizedBox(height: 15),
          EditTextCustom(hint: "Email"),
          SizedBox(height: 15),
          EditTextCustom(hint: "Confirmar email"),
          SizedBox(height: 15),
          PasswordEditText(),
          SizedBox(height: 15),
          ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  )),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.lightBlue)),
              onPressed: () => {},
              child: const Padding(
                  padding: EdgeInsets.all(20), child: Text("Criar conta"))),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: const Text(
                'Ao se cadastrar você concorda com os Temos de uso e Politica de Privacidade.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.black38)),
          ),
        ]),
      ),
    ));
  }
}

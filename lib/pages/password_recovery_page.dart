import 'package:flutter/material.dart';
import 'package:flutter_login_screen/widgets/edit_text_custom.dart';

class PasswordRecoveryPage extends StatelessWidget {
  const PasswordRecoveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: (const Icon(
                      Icons.arrow_back_ios,
                      size: 30,
                      color: Colors.black,
                    )),
                  )
                ],
              ),
              const SizedBox(height: 30),
              const Text('Recuperar senha',
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 28)),
              const SizedBox(height: 15),
              const Text(
                  'Você receberá um link para redifinir a senha no email informado abaixo',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Colors.black38)),
              const SizedBox(height: 15),
              const EditTextCustom(
                hint: "Email",
              ),
              const SizedBox(height: 15),
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
                      padding: EdgeInsets.all(20),
                      child: Text("Recuperar Senha"))),
            ],
          ),
        ),
      ),
    );
  }
}

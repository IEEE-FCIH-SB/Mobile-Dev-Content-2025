import 'package:flutter/material.dart';

void main() {
  runApp(Calc());
}

class Calc extends StatefulWidget {
  const Calc({super.key});

  @override
  State<Calc> createState() => _CalcState();
  State<Calc> updateState() => _CalcState();
}

class _CalcState extends State<Calc> {
  TextEditingController emailController = TextEditingController();
  String? inputValue = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            TextField(
                controller: emailController,
                onSubmitted: (value) {
                  setState(() {
                    inputValue = emailController.text;
                  });
                },
                decoration: InputDecoration(
                  hintText: "Email",
                )),
            Text(inputValue!),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    inputValue = emailController.text;
                  });
                },
                child: Text("Display")),
          ],
        ),
      ),
    );
  }
}

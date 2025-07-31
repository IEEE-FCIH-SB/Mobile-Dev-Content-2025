import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    print("loaded");
  }

  @override
  void dispose() {
    // _controler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text("Counter: $counter"),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter += 1;
                  });
                },
                child: Text("press"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:session7/appbar.dart';

void main() {
  runApp(Notesapp());
}

class Notesapp extends StatelessWidget {
  Notesapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: Scaffold(
            floatingActionButton: FloatingActionButton(
              foregroundColor: Colors.black,
              onPressed: () {},
              child: Icon(Icons.add),
              shape: CircleBorder(),
              backgroundColor: const Color.fromARGB(255, 76, 200, 144),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Column(
                children: [
                  NoteAppBar(),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    "lib/assets/images/Notebook-bro.png",
                    height: 400,
                    width: 400,
                  ),
                  Text("Create your first note !"),
                ],
              ),
            )));
  }
}

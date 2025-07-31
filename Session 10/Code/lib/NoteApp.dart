import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp2/appbar.dart';
import 'package:notesapp2/form.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox("notes");
  runApp(Noteapp());
}

class Noteapp extends StatelessWidget {
  Noteapp({super.key});
  var notesbox = Hive.box("notes");
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: homeScreen(notesBox: notesbox),
    );
  }
}

class homeScreen extends StatelessWidget {
  const homeScreen({super.key, required this.notesBox});
  final Box notesBox;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.black,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Editor()),
          );
        },
        shape: CircleBorder(),
        backgroundColor: const Color.fromARGB(255, 76, 200, 144),
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            children: [
              NoteAppBar(),
              SizedBox(height: 100),
              ValueListenableBuilder(
                valueListenable: notesBox.listenable(),
                builder: (context, Box box, _) {
                  if (box.isEmpty) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "lib/assets/images/Notebook-bro.png",
                          height: 400,
                          width: 400,
                        ),
                        Text("Create your first note!"),
                      ],
                    );
                  } else {
                    return Expanded(
                      child: ListView.builder(
                        itemCount: box.length,
                        itemBuilder: (context, index) {
                          final note = box.getAt(index);
                          return Card(
                            color: Color.fromARGB(255, 42, 100, 44),
                            child: ListTile(
                              title: Text(note['title'] ?? ''),
                              subtitle: Text(note['content'] ?? ''),
                              trailing: IconButton(
                                onPressed: () {
                                  box.deleteAt(index);
                                },
                                icon: Icon(Icons.delete, color: Colors.red),
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

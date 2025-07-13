import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class Editor extends StatefulWidget {
  const Editor({super.key});

  @override
  State<Editor> createState() => _EditorState();
}

class _EditorState extends State<Editor> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;
  String? title, content;

  void _ShowSaveDialo() {
    showDialog(
      context: context,
      builder:
          (ctx) => AlertDialog(
            title: Text("Save Changes"),
            content: Text("Do you Want to save your Changes?"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(ctx);
                },
                child: Text(
                  "Discard",
                  style: TextStyle(color: Colors.deepOrange),
                ),
              ),
              TextButton(
                onPressed: () {
                  Hive.box("notes").add({'title': title, 'content': content});
                  Navigator.pop(ctx);
                  Navigator.pop(context);
                },
                child: Text("Save"),
              ),
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                _autovalidateMode = AutovalidateMode.always;
              });

              if (_formKey.currentState!.validate() ?? false) {
                _formKey.currentState?.save();
                print("Tiltle: $title");
                print("content: $content");
                _ShowSaveDialo();
              } else {
                print("Form is not valid");
              }
            },
            icon: Icon(Icons.save),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                onSaved: (newValue) => title = newValue,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter the Title";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  hintText: "Title",
                  border: InputBorder.none,
                  hintStyle: TextStyle(fontSize: 22),
                ),
              ),
              Expanded(
                child: TextFormField(
                  onSaved: (newValue) => content = newValue,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter the the Content";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    hintText: "Type Something..",
                    border: InputBorder.none,
                  ),
                  maxLines: null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

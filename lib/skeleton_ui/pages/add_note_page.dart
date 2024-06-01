import 'package:flutter/material.dart';

import 'package:notify_db/skeleton_ui/widgets/my_input.dart';

class AddNotePage extends StatefulWidget {
  const AddNotePage({super.key});

  @override
  State<AddNotePage> createState() => _AddNotePageState();
}

class _AddNotePageState extends State<AddNotePage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          MyInput(controller: titleController, labelText: "title", height: 50),
          const SizedBox(
            height: 10,
          ),
          MyInput(
              controller: contentController,
              labelText: "content",
              height: MediaQuery.of(context).size.height * 0.5),
          addNoteButton()
        ],
      ),
    );
  }

  Widget addNoteButton() {
    return ElevatedButton(
      style: const ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.blue),
          foregroundColor: WidgetStatePropertyAll(Colors.white)),
      onPressed: () async {
        //TODO: call database model add note, then pop context
        Navigator.pop(context);
      },
      child: const Text("Create Note"),
    );
  }
}

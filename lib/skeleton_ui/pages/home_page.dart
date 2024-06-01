import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'package:notify_db/entities/note_entity.dart';
import 'package:notify_db/skeleton_ui/widgets/note_card.dart';
import 'package:notify_db/skeleton_ui/pages/add_note_page.dart';
import 'package:notify_db/skeleton_ui/widgets/my_dialogs.dart';
import 'package:notify_db/usecase/user_usecase.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    //TODO: get user data at initState, userUsecase.getUserData()

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //TODO: delete temporary testing value
    NoteEntity noteEntity = NoteEntity(docId: "docId", title: "title", content: 'content');

    return Consumer<UserUsecase>(
      builder: (context, userUsecase, child) {
        //TODO: check if user email is empty here using ternary, if empty return LoadingText()
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            title: Row(
              children: [
                const Text(
                  "Hello! ",
                ),
                //TODO: add username here, replace placeholder
                Text(
                  userUsecase.userEntity.name,
                ),
              ],
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    MyDialogs().editNameDialog(context);
                  },
                  icon: const Icon(Icons.edit)),
              IconButton(
                  onPressed: () async {
                    //TODO: call auth model logout
                  },
                  icon: const Icon(Icons.logout))
            ],
          ),
          body: SingleChildScrollView(
              child: Column(
            children: [
              //TODO: add NoteStream widget, delete NoteCard
              NoteCard(noteEntity: noteEntity),
            ],
          )),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            child: const Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddNotePage(),
                  ));
            },
          ),
        );
      },
    );
  }
}

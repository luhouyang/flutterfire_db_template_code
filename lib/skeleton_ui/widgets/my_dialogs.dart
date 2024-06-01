import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:notify_db/usecase/user_usecase.dart';

class MyDialogs {
  Future<void> editNameDialog(BuildContext context) async {
    TextEditingController editNameController = TextEditingController();

    UserUsecase userUsecase = Provider.of<UserUsecase>(context, listen: false);

    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: const Text("Edit Username"),
          content: TextField(
            controller: editNameController,
            decoration:
                //TODO: replace placeholder text with userUsecase.userEntity.username
                InputDecoration(
              labelText: userUsecase.userEntity.name,
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text(
                "Cancel",
                style: TextStyle(color: Colors.red),
              ),
            ),
            TextButton(
              child: const Text('Update'),
              onPressed: () async {
                //TODO: call userUseCase.updateUsername to edit username, then pop context
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }
}

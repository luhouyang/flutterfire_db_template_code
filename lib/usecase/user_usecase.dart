import 'package:flutter/material.dart';
import 'package:notify_db/entities/user_entity.dart';

class UserUsecase extends ChangeNotifier {
  //TODO: create empty UserEntity instance
  UserEntity userEntity = UserEntity(name: 'user-1');

  /*TODO
  getUserData function, async
  doesn't take argument
  get Map<String, dynamic> data by calling database model getUserData
  create new UserEntity
  update userEntity
  notifyListeners()
  return void
  */

  /*TODO
  updateUsername function, async
  takes String newUsername
  set userEntity.username to newUsername
  call database model updateUsername
  notifyListeners()
  return void
  */
}

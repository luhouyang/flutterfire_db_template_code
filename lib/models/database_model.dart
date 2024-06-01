class DatabaseModel {
  //TODO: get currentUser uid

  //TODO: get firestore instance

  /*TODO
  getUserData function, async
  doesn't take argument
  get document from Firestore using uid
  return Map<String,dynamic>
  encapsulate in try, catch
  */

  /*TODO
  updateUsername function, async
  takes UserEntity newUserEntity
  set to "users" collection
  return void
  catch error using "then" and "onError"
  */

  /*TODO
  createUser function
  takes String newUid, String email, String name
  create new UserEntity
  using "set" method
  catch error using "then" and "onError"
  */

  /*TODO
  addNote function
  takes String title, String content
  get unique id from firestore, using ".doc().id"
  create a new NoteEntity
  using "set" method
  catch error using "then" and "onError"
  */

  /*TODO
  updateNote function
  takes NoteEntity noteEntity
  using "set" method
  catch error using "then" and "onError"
  */

  /*TODO
  deleteNote function
  takes String docId
  using "delete" method
  catch error using "then" and "onError"
  */
}

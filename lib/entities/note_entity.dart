class NoteEntity {
  String docId;
  String title;
  String content;
  //TODO: change DateTime to Timestamp

  NoteEntity(
      {required this.docId,
      required this.title,
      required this.content,
      });

  factory NoteEntity.fromMap(Map<String, dynamic> map) {
    return NoteEntity(
        docId: map['docId'],
        title: map['title'],
        content: map['content'],
        );
  }

  toMap() {
    return {
      'docId': docId,
      'title': title,
      'content': content,
    };
  }
}
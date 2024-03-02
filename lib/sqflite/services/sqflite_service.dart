import 'package:batch2/sqflite/models/note_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
class SqliteService {

  //init database
  Future<Database> initDB() async {
    String path = await getDatabasesPath();
    return openDatabase(
      join(path, 'database.db'),
      onCreate: (db, version) async {
        await db.execute('CREATE TABLE Notes(id INTERGER PRIMARY KEY, description TEXT)');
      },
      version: 1
    );
  }

  //insert 

  Future addNote(Note note) async {
    final Database db = await initDB();

    var data = await db.insert('Notes', note.toMap());

    return data;
  }

  //get data
  Future<List<Note>> getNotes() async {
    final Database db = await initDB();

    List<Map<String, Object?>> data = await db.query('Notes');

    return data.map((e) => Note.fromMap(e)).toList();
  }

  //update data
  Future<void> updateNote(Note note) async {
    final Database db = await initDB();

    db.update('Notes', note.toMap(),
    where: 'id = ?',
    whereArgs: [note.id]
    );
  }

  //dete data
  Future<void> deleteNote(int id) async {
    final Database db = await initDB();

    db.delete('Notes',
    where: 'id = ?',
    whereArgs: [id]
    );
  }


}

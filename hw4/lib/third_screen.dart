import 'package:flutter/material.dart';
import 'package:helloworld/database_helper.dart';
import 'package:helloworld/user.dart';

class ThirdScreen extends StatefulWidget {
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  late DatabaseHelper dbHelper;
  List<User> usersFromDB = [];

  @override
  void initState() {
    super.initState();
    dbHelper = DatabaseHelper();
    getUsersFromDB();
  }

  Future<void> getUsersFromDB() async {
    final db = await dbHelper.database;
    final List<Map<String, dynamic>> usersMapList = await db!.query('users');
    setState(() {
      usersFromDB = usersMapList.map((e) => User.fromMap(e)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Screen'),
      ),
      body: ListView.builder(
        itemCount: usersFromDB.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(usersFromDB[index].fullName),
            subtitle: Text(usersFromDB[index].email),
          );
        },
      ),
    );
  }
}

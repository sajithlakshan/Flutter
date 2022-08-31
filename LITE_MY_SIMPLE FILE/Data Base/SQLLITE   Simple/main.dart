import 'package:flutter/material.dart';
import 'Sc.dart';

void main() {
  runApp(MaterialApp(
    home: HOME(),
  ));
}

class HOME extends StatefulWidget {
  @override
  State<HOME> createState() => _HOMEState();
}

class _HOMEState extends State<HOME> {
  SqlDb sqlOB = SqlDb();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen1'),
        centerTitle: true,
      ),
      body: Column(children: <Widget>[
        ElevatedButton(
          onPressed: () async {
            int responce = await sqlOB.insertData(
                "INSERT INTO 'notes' ('notes') VALUES ('note one') ");
            print(responce);
          },
          child: const Text('Insert'),
        ),
        ElevatedButton(
          //Display all Query
          onPressed: () async {
            List<Map> response = await sqlOB.readData("SELECT * FROM 'notes'");
            print('$response');
          },
          child: const Text('query'),
        ),
        ElevatedButton(
          //Update Data
          onPressed: () async {
            int res = await sqlOB.updateData(
                "UPDATE 'notes' SET 'notes'='note six' WHERE id = 2");
            print('$res');
          },
          child: const Text('Update'),
        ),
        ElevatedButton(
          //Delete Data
          onPressed: () async {
            int respo =
                await sqlOB.deleteData("DELETE FROM 'notes' WHERE id=2");
            print(respo);
          },
          child: const Text('delete'),
        )
      ]),
    );
  }
}

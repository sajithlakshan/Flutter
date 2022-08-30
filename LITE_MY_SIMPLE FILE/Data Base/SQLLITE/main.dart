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
            //Insert Data
            int i = await DatabaseHelper.instance
                .Insert({DatabaseHelper.columnName: 'Sajith'});
            print('The insert ID is: $i');
          },
          child: const Text('Insert'),
        ),
        ElevatedButton(
          //Display all Query
          onPressed: () async {
            List<Map<String, dynamic>> queryRows =
                await DatabaseHelper.instance.queryAll();
            print(queryRows);
          },
          child: const Text('query'),
        ),
        ElevatedButton(
          //Update Data
          onPressed: () async {
            int updated = await DatabaseHelper.instance.Update({
              DatabaseHelper.columnId: 2,
              DatabaseHelper.columnName: 'Sakibara'
            });
            print(updated);
          },
          child: const Text('Update'),
        ),
        ElevatedButton(
          //Delete Data
          onPressed: () async {
            int rowsEffect = await DatabaseHelper.instance.delete(2);
            print(rowsEffect);
          },
          child: const Text('delete'),
        )
      ]),
    );
  }
}

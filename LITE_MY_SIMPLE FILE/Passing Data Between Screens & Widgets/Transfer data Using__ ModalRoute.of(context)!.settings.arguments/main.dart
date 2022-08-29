import 'package:flutter/material.dart';

////////////////////////////////////////////////////////////////////////////////
class Todo {
  final String title; ////Data input structure
  final String description;

  const Todo(this.title, this.description);
}

////////////////////////////////////////////////////////////////////////////////
//-----------------------------------------------------------------------------------------
//
void main() {
  ////////////////////////////////////////////////////////////////////////////////
  List<Todo> rr = [
    Todo(
      'Sakibara Hit me',
      'Yamitheku dasai...', ////Make  Data Array
    ),
    Todo(
      'Kayodi',
      'Mular',
    )
  ];
  ////////////////////////////////////////////////////////////////////////////////
  runApp(
    MaterialApp(
      //All data Call main Screen function
      ////////////////////////////////////////////////////////////////////////////////
      home: TodosScreen(
        todos: rr,
        ////////////////////////////////////////////////////////////////////////////////
      ),
    ),
  );
}

class TodosScreen extends StatelessWidget {
  //Create argument  Input function
  ////////////////////////////////////////////////////////////////////////////////
  const TodosScreen({super.key, required this.todos});

  final List<Todo> todos;
////////////////////////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todos[0].title),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // print(todos[index]);
            ////////////////////////////////////////////////////////////////////////////////
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailScreen(),
                // Pass the arguments as part of the RouteSettings. The
                // DetailScreen reads the arguments from these settings.
                settings: RouteSettings(
                  // //Choose What data to tranfer
                  arguments: todos[1],
                ),
              ),
            );
            ////////////////////////////////////////////////////////////////////////////////
          },
          child: Text(todos[0].description),
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ////////////////////////////////////////////////////////////////////////////////
    final todo = ModalRoute.of(context)!.settings.arguments
        as Todo; //Catct transfer Data
    ////////////////////////////////////////////////////////////////////////////////
    // Use the Todo to create the UI.
    return Scaffold(
      appBar: AppBar(
        //////////////////////////////
        title: Text(todo.title), ////Call Data
        /////////////////////////////
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        /////////////////////////////////
        child: Text(todo.description), ////Call Data
        /////////////////////////////////
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_todos/representations/widgets/todo_input_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  void createTodoAction(BuildContext context) => showDialog(
        context: context,
        builder: (context) => Dialog(
          child: TodoInputWidget(),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Todos')),
      body: _emptyTodosWidget(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () => createTodoAction(context),
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _emptyTodosWidget(BuildContext context) {
    return Center(
      child: Text(
        'You haven\'t create any todo yet',
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TodoInputWidget extends StatefulWidget {
  const TodoInputWidget({Key? key}) : super(key: key);

  @override
  _TodoInputWidgetState createState() => _TodoInputWidgetState();
}

class _TodoInputWidgetState extends State<TodoInputWidget> {
  late TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  void confirmAction(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: _textEditingController,
          ),
          const SizedBox(
            height: 12,
          ),
          ElevatedButton(
            onPressed: () => confirmAction(context),
            child: Text(
              'Ok',
            ),
          ),
        ],
      ),
    );
  }
}

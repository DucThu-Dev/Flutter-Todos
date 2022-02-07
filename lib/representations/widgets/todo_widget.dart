import 'package:flutter/material.dart';

class TodoWidget extends StatelessWidget {
  const TodoWidget({
    Key? key,
    required this.title,
    required this.state,
  }) : super(key: key);

  final String title;
  final bool state;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Checkbox(
            onChanged: (value) {},
            value: state,
          ),
        ],
      ),
    );
  }
}

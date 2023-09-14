import 'package:flutter/material.dart';
import 'package:todosample/common/common.dart';
import 'package:todosample/data/memory/todo_status.dart';
import 'package:todosample/screen/main/tab/todo/w_fire.dart';

import '../../../../data/memory/vo_todo.dart';

class TodoStatusWidget extends StatelessWidget {
  final Todo todo;

  const TodoStatusWidget(this.todo, {super.key});

  @override
  Widget build(BuildContext context) {
    return Tap(
      onTap: () {
        context.holder.changeTodoStatus(todo);
      },
      child: SizedBox(
          width: 50,
          height: 50,
          child: switch (todo.status) {
            TodoStatus.complete => Checkbox(
                value: true,
                onChanged: null,
                fillColor: MaterialStateProperty.all(
                  context.appColors.checkBoxColor,
                ),
              ),
            TodoStatus.incomplete => const Checkbox(
                value: false,
                onChanged: null,
              ),
            TodoStatus.ongoing => const Fire()
          }),
    );
  }
}

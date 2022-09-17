import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/bloc/todo_bloc.dart';
import 'package:todo_app/components/add_button_component.dart';

class InputBar extends StatelessWidget {
  const InputBar({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return BlocBuilder<TodoBloc, TodoState>(
      builder: (context, state) {
        return SizedBox(
          width: screenWidth - 40,
          child: Row(
            children: [
              Expanded(
                flex: 10,
                child: SizedBox(
                  child: TextField(
                    controller: controller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 9),
                      ),
                      hintText: 'type your todo',
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ),
              ),
              const Expanded(child: SizedBox()),
              if (!state.isDisabled) const AddButton(color: Color(0xFF7DFC60)),
              if (state.isDisabled) const AddButton(color: Colors.red),
            ],
          ),
        );
      },
    );
  }
}

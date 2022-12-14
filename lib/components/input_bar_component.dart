import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/bloc/todo_bloc.dart';
import 'package:todo_app/buttons/add_button_button.dart';

class InputBar extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  InputBar({super.key});

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
                child: SizedBox(
                  child: TextField(
                    controller: controller,
                    decoration: const 
                    InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 9),
                      ),
                      hintText: 'type your todo',
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              if (!state.isDisabled)
                AddButton(
                  color: const Color(0xFF7DFC60),
                  controller: controller,
                ),
              if (state.isDisabled)
                AddButton(
                  color: Colors.red,
                  controller: controller,
                ),
            ],
          ),
        );
      },
    );
  }
}

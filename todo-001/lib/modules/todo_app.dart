import 'package:flutter/material.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Image.asset(
          "assets/user.png",
          fit: BoxFit.fill,
        ),
        title: const Text("TODO"),
        actions: [
          IconButton(
            onPressed: _showTodoInputDialog,
            icon: const Icon(
              Icons.add_comment_outlined,
            ),
          ),
          IconButton(
            onPressed: () => {_showTodoInputDialog()},
            icon: const Icon(
              Icons.add_chart_outlined,
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _showTodoInputDialog() {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("할일 등록"),
          actions: [
            TextField(
              textInputAction: TextInputAction.go,
              decoration: const InputDecoration(hintText: "할 일을 입력해 주세요"),
              onSubmitted: (value) {
                // SnackBar 를 띄우기 위해 snackBar 객체(변수)선언
                SnackBar snackBar = const SnackBar(
                  content: Text("할 일이 등록됨"),
                );
                // ScaffoldMessenger 에게 snackBar 를 표시해주라고 요청
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                // Alert Dialog 를 닫아라
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }
} // todo state end
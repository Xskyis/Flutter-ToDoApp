import 'package:first_try/model/todo.dart';
import 'package:first_try/widget/todo_item.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.menu),
            Text(
              'To Do List',
              style: TextStyle(
                  fontWeight: FontWeight.w700, fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: 30,
              width: 30,
              child: Image.asset('assets/logo2.png'),
            )
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Column(
              children: [
                SearchBar(),
                TodoItem(
                  todo: Todo(id: 1, title: "Belajar Flutter", isDone: false),
                ),
                TodoItem(
                  todo: Todo(id: 2, title: "Ngopi Heula", isDone: true),
                ),
                TodoItem(
                  todo: Todo(id: 3, title: "Ngerjain jobsheet", isDone: false),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      margin: EdgeInsets.only(bottom: 18),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30)),
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            border: InputBorder.none,
            hintText: "Search",
            hintStyle: TextStyle(fontSize: 16)),
      ),
    );
  }
}

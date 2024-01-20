import 'package:clean_arch_guide/main_view_model.dart';
import 'package:flutter/material.dart';

import 'data/todo.dart';

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  MainViewModel viewModel = MainViewModel(FakeTodoRepositoryImpl());

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {

    viewModel.getTodo().then((_) {
      setState(() {

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(viewModel.todo.toString()),
      ),
      body: Container(),
    );
  }
}



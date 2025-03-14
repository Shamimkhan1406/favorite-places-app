import 'package:flutter/material.dart';

class AddPlaceScreen extends StatefulWidget {
  AddPlaceScreen({super.key});
  final _titleController = TextEditingController();

  void dispose() {
    _titleController.dispose();
    //super.dispose();
  }
  

  @override
  State<AddPlaceScreen> createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add a new place'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
        children: [
          TextField(
            decoration: const InputDecoration(labelText: 'Title'),
            controller: widget._titleController,
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton.icon(
            onPressed: () {
              //print(widget._titleController.text);
            },
            icon: const Icon(Icons.add),
            label: const Text('Add place'),
          ),
        ],
      )),
    );
  }
}
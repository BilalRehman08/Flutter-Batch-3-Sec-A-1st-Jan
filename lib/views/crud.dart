import 'package:flutter/material.dart';

class Crud extends StatefulWidget {
  const Crud({super.key});

  @override
  State<Crud> createState() => _CrudState();
}

class _CrudState extends State<Crud> {
  addUser() {
    setState(() {
      if (nameTextController.text != '') {
        names.add(nameTextController.text);
      }
      nameTextController.clear();
    });
  }

  updateUser(abc) {
    setState(() {
      names[abc] = "value changed";
    });
  }

  deleteUser(abc) {
    setState(() {
      names.removeAt(abc);
    });
    print(names);
  }

  TextEditingController nameTextController = TextEditingController();
  List names = ["Bilal", "Owais"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: nameTextController,
        ),
        actions: [
          IconButton(
            onPressed: () {
              addUser();
            },
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: names.length,
          itemBuilder: ((context, index) {
            return ListTile(
              leading: IconButton(
                onPressed: () {
                  updateUser(index);
                },
                icon: const Icon(Icons.edit),
              ),
              title: Text(names[index]),
              trailing: IconButton(
                onPressed: () {
                  deleteUser(index);
                },
                icon: Icon(Icons.delete),
              ),
            );
          })),
    );
  }
}

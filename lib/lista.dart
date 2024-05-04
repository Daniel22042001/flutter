import 'package:flutter/material.dart';

class Lista extends StatefulWidget {
  const Lista({Key? key}) : super(key: key);

  @override
  State<Lista> createState() => _ListaState();
}

class _ListaState extends State<Lista> {
  List<Map<String, dynamic>> items = [
    {
      'name': 'John Doe',
      'email': 'johndoe@example.com',
    },
    {
      'name': 'Jane Smith',
      'email': 'janesmith@example.com',
    },
    {
      'name': 'Robert Johnson',
      'email': 'robertjohnson@example.com',
    },
    {
      'name': 'Emily Davis',
      'email': 'emilydavis@example.com',
    },
    {
      'name': 'Michael Brown',
      'email': 'michaelbrown@example.com',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            final name = items[index]['name'];
            final initials = name!.substring(0, 2).toUpperCase(); // Obtener las dos primeras letras
            return ListTile(
              leading: CircleAvatar(child: Text(initials),),
              title: Text(items[index]['name'] ?? ''),
              subtitle: Text(items[index]['email'] ?? ''),
            );
          },
        ),
      ),
    );
  }
}

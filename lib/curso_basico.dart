import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CursoBasicoPage extends StatefulWidget {
  const CursoBasicoPage({Key? key}) : super(key: key);

  @override
  State<CursoBasicoPage> createState() => _CursoBasicoPageState();
}

class _CursoBasicoPageState extends State<CursoBasicoPage> {
  List<dynamic> data = [];

  @override
  void initState() {
    super.initState();
    fetchData(); // Llama a la función fetchData() al iniciar el estado
  }

  Future<void> fetchData() async {
    final response = await http.get(Uri.parse("https://www.yanditv.com/api/curso_basico"));
    if (response.statusCode == 200) {
      setState(() {
        data = json.decode(response.body);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Curso Básico'),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          final item = data[index];
          final name = item['nombre'];
          final isSoftware = item['carrera'] == "SOFTWARE";
          final color = isSoftware ? Colors.blue : Colors.red;

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name ?? '',
                      style: const TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      'CI: ${item['cedula'] ?? ''}',
                      style: const TextStyle(color: Colors.white),
                    ),
                    Text(
                      'Correo: ${item['correo'] ?? ''}',
                      style: const TextStyle(color: Colors.white),
                    ),
                    Text(
                      'Celular: ${item['celular'] ?? ''}',
                      style: const TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      'Carrera: ${item['carrera'] ?? ''}',
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

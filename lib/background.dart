import 'package:curso_basico_flutter/BottomNavigation.dart';
import 'package:curso_basico_flutter/home.dart';
import 'package:flutter/material.dart';
import 'package:curso_basico_flutter/dashboard.dart';
import 'package:curso_basico_flutter/targetas.dart';

class BackgroundPage extends StatelessWidget {
  const BackgroundPage({super.key});

  @override
  Widget build(BuildContext context) {
    
  void _onPressedDashboard(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return const Dashboard();
      },
    ));
  }

  void _onPressedHome(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return const Home();
      },
    ));
  }

  void _onPressedBackground(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return const BackgroundPage();
      },
    ));
  }

  void _onPressedTarjetas(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return const Tarjetas();
      },
    ));
  }

    return Scaffold(
           bottomNavigationBar: BottomNavigation(),
      body: Container(
          decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              'assets/images/background.jpg'), // Ruta de la imagen de fondo
          fit: BoxFit.cover, // Ajusta la imagen al tamaño del contenedor
        ),
      )),
    );
  }
}

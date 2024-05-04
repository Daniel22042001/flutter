
import 'package:curso_basico_flutter/curso_basico.dart';
import 'package:curso_basico_flutter/lista.dart';
import 'package:curso_basico_flutter/targetas.dart';
import 'package:flutter/material.dart';
import 'background.dart';
import 'dashboard.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     void _onPressedLista() {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) {
          return const CursoBasicoPage();
        },
      ));
    }
    void _onPressedDashboard() {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) {
          return const Dashboard();
        },
      ));
    }

    void _onPressedBackground() {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) {
          return const BackgroundPage();
        },
      ));
    }

    void _onPressedTarjetas() {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) {
          return const Tarjetas();
        },
      ));
    }

    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home,  color: Colors.black38,
          size: 35.0,
),
          label: 'Home',
          
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Dashboard',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Background',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Tarjetas',
        ),
      ],
      onTap: (int index) {
        switch (index) {
          case 0:
            // Implementa la navegación para el índice 0 si es necesario
            break;
          case 1:
            _onPressedDashboard();
            break;
          case 2:
            _onPressedLista();
            break;
          case 3:
            _onPressedTarjetas();
            break;
        }
      },
    );
  }
}

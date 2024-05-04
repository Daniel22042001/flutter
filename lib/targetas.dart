import 'package:curso_basico_flutter/BottomNavigation.dart';
import 'package:curso_basico_flutter/background.dart';
import 'package:curso_basico_flutter/dashboard.dart';
import 'package:curso_basico_flutter/home.dart';
import 'package:flutter/material.dart';

class Tarjetas extends StatelessWidget {
  const Tarjetas({super.key});

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

    var ancho = MediaQuery.of(context).size.width;
    var hola = "Hola mundo";
    var alto = MediaQuery.of(context).size.height;
    TextStyle styleTitles = const TextStyle(
        color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold);

    return Scaffold(
        bottomNavigationBar:BottomNavigation(),
      appBar: AppBar(
        title: const Center(
            child: Text(
          "Tarjetas",
          style: TextStyle(color: Colors.grey, fontSize: 18),
        )),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.notifications,
              color: Colors.grey[400],
              size: 25,
            ),
          )
        ],
        leading: Icon(
          Icons.menu,
          color: Colors.grey[400],
          size: 35.0,
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(child: 
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 20.0),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(25),
              ),
              width: ancho,
              height: 150,
              child: Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.card_giftcard, color: Colors.white),
                    Text(
                      "9999 99",
                      style: styleTitles,
                      textAlign: TextAlign.left,
                    ),
                    Row(
                      children: [
                        const Text(
                          "SI=H-00054157624",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(width: 50),
                      ],
                    ),
                    Text(
                      "tarjeta 50",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(right: 20.0),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        height: 125, // Altura fija
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment
                                .center, // Alineación al centro vertical
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.rowing,
                                  color: Colors.white70, size: 75),
                              Text(
                                "Recording",
                                style: TextStyle(color: Colors.grey),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(right: 20.0),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        height: 125, // Altura fija
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment
                                .center, // Alineación al centro vertical
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.fact_check,
                                  color: Colors.white70, size: 75),
                              Text(
                                "Recording",
                                style: TextStyle(color: Colors.grey),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20), // Separación entre las dos filas
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(right: 20.0),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        height: 125, // Altura fija
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment
                                .center, // Alineación al centro vertical
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.block,
                                  color: Colors.white70, size: 75),
                              Text(
                                "Recording",
                                style: TextStyle(color: Colors.grey),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(right: 20.0),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        height: 125, // Altura fija
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment
                                .center, // Alineación al centro vertical
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.star_border,
                                  color: Colors.white70, size: 75),
                              Text(
                                "Recording",
                                style: TextStyle(color: Colors.grey),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(bottom: 20.0),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(25),
              ),
              width: ancho,
              height: 75,
              child: Container(
                margin: const EdgeInsets.only(right: 20.0),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(25),
                ),
                height: 150, // Altura fija
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    crossAxisAlignment:
                        CrossAxisAlignment.center, // Centra verticalmente
                    mainAxisAlignment:
                        MainAxisAlignment.center, // Centra horizontalmente
                    children: [
                      Icon(Icons.search_rounded, color: Colors.white),
                      SizedBox(width: 10), // Espacio entre el icono y el texto
                      Text(
                        "9999 99",
                        style: styleTitles,
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(right: 20.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(right: 20.0),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    height: 70, // Altura fija
                    width: 1000,
                    child: Row(
                      crossAxisAlignment:
                          CrossAxisAlignment.center, // Centra verticalmente
                      mainAxisAlignment:
                          MainAxisAlignment.center, // Centra horizontalmente
                      children: [
                        Icon(Icons.plus_one_rounded, color: Colors.white),
                        SizedBox(
                            width: 10), // Espacio entre el icono y el texto
                        Text(
                          hola,
                          style: styleTitles,
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
   
      ) );
  }
}

import 'package:flutter/material.dart';
import 'package:unwebsiath/drawer/lateral.dart';
import 'package:url_launcher/url_launcher.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  // final bool _iconbool = false;

  // IconData _iconLigth = Icons.wb_sunny;
  // IconData _iconLDark = Icons.nights_stay;

  // final ThemeData _LightTheme = ThemeData(
  //   primarySwatch: Colors.blue,
  //   brightness: Brightness.light,
  // );

  // final ThemeData _DarkTheme = ThemeData(
  //   primarySwatch: Colors.blue,
  //   brightness: Brightness.dark,
  // );

  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // theme: _iconbool ? _DarkTheme : _LightTheme,
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: const Color(0xfff921b21),
            elevation: 10.2,
            shadowColor: Colors.blueGrey,
            title: const Text(
              'INICIOS',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255)),
              textAlign: TextAlign.left,
            ),
            // actions: [
            //   IconButton(
            //       onPressed: () {
            //         setState(() {
            //           _iconbool ? _iconLDark : _iconLigth;
            //         });
            //       },
            //       icon: Icon(_iconbool ? _iconLDark : _iconLigth))

            //   // _iconbool = !_iconbool;
            // ],
          ),
          drawer: const DrawerWigdet(),
          body: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  siath(),
                  siath1(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      margin: const EdgeInsets.only(left: 140, right: 160),
                      padding: const EdgeInsets.only(left: 0, right: 0),
                      color: Colors.white,
                      child: TextButton(
                        style: TextButton.styleFrom(
                            elevation: 10,
                            padding: const EdgeInsets.all(1),
                            backgroundColor: const Color(0xfff921b21),
                            foregroundColor:
                                const Color.fromARGB(255, 237, 241, 246)),
                        isSemanticButton: true,
                        child: const Text(
                          'Ingresa aqui',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () async {
                          final url = Uri.parse(
                              'https://portalapp.mindefensa.gov.co:8449/siathweb-app/#/inicio');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                            print('Cliked');
                          }
                        },
                      )),
                  Container(
                      margin: const EdgeInsets.only(left: 10, right: 100),
                      padding: const EdgeInsets.only(left: 100, right: 150),
                      color: const Color.fromARGB(255, 255, 255, 255),
                      child: TextButton(
                        style: TextButton.styleFrom(
                            elevation: 5.2,
                            padding: const EdgeInsets.all(1),
                            backgroundColor: const Color(0xfff921b21),
                            foregroundColor:
                                const Color.fromARGB(255, 237, 241, 246)),
                        isSemanticButton: true,
                        child: const Text(
                          'Saca tu Cita Medica',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () async {
                          final url =
                              Uri.parse('https://portal.saludsis.mil.co/');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                            print('Cliked');
                          }
                        },
                      )),
                ],
              ),
              const SizedBox(
                height: 0,
              ),
              const Divider(
                endIndent: 50,
                indent: 50,
                thickness: 0.05,
                color: Color(0xfff921b21),
              ),
              const SizedBox(
                height: 0,
              ),
              const SizedBox(
                height: 30,
              ),
              const Divider(
                endIndent: 50,
                indent: 50,
                thickness: 0.25,
                color: Color(0xfff921b21),
              ),
              const SizedBox(
                height: 10,
              ),
              columna2(),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                endIndent: 50,
                indent: 50,
                thickness: .05,
                color: Color(0xfff921b21),
              ),
              const SizedBox(
                height: 10,
              ),
              columna3()
            ],
          ),
        ));
  }
}

Widget siath() {
  return Container(
    child: const Image(
        height: 250, image: AssetImage('assets/images/siathmnd.png')),
  );
}

Widget columna2() {
  return Column(
    children: [
      Container(
        margin: const EdgeInsets.only(left: 20, right: 30),
        alignment: Alignment.center,
        color: const Color.fromARGB(255, 255, 255, 255),
        child: const Text(
          'UnWebsiath es una aplicación móvil versátil desarrollada por PZPLATINUM para la plataforma Android. Diseñada para el Ejército Nacional, esta aplicación ofrece una forma conveniente de acceder a varios servicios esenciales en un solo lugar. Desde obtener su tarjeta de identificación digital hasta recibir notificaciones sobre traslados, gestionar correos electrónicos y programar citas médicas, UnWebsiath tiene como objetivo agilizar las tareas administrativas del personal militar.',
          style: TextStyle(
              fontSize: 19, decorationStyle: TextDecorationStyle.double),
          textAlign: TextAlign.justify,
        ),
      )
    ],
  );
}

Widget siath1() {
  return Container(
    color: const Color.fromARGB(255, 255, 255, 255),
    child:
        const Image(height: 250, image: AssetImage('assets/images/salud.jpg')),
  );
}

Widget columna3() {
  return Column(
    children: [
      Container(
        margin: const EdgeInsets.only(left: 20, right: 30),
        alignment: Alignment.center,
        //color: const Color.fromARGB(255, 5, 113, 201),
        child: const Text(
          'Entra a la seccion de Servicios para que tenga acceso a todos los canales Insittucionales que te ofrece la Insititucion, tambien puedes desplegar la barra lateral y encontraras mas servicios, y tambien recuerda que esta la seccion de "Doctrina" en su especial volver a lo basico',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Color(0xfff921b21),
          ),
          textAlign: TextAlign.center,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
    ],
  );
}

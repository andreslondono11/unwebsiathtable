import 'package:flutter/material.dart';
import 'package:unwebsiath/drawer/lateral.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:unwebsiath/screens/page4.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            elevation: 10.2,
            shadowColor: Colors.blueGrey,
            title: const Text(
              'SERVICIOS',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255)),
            ),
            backgroundColor: Color(0xfff921b21),
          ),
          drawer: const DrawerWigdet(),
          body: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  img1(),
                  img2(),
                ],
              ),
              linea1(),
              margen2(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  cei(),
                  const SizedBox(
                    width: 0,
                  ),
                  boton1(),
                ],
              ),
              margen1(),

              linea1(),
              margen2(),

              margen1(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  img4(),
                  img3(),
                ],
              ),
              linea1(),
              margen2(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  boton3(),
                  boton2(),
                ],
              ),
              // margen1(),
              // linea1(),
              // margen2(),
            ],
          )),
    );
  }
}

Widget img1() {
  return const Image(
    height: 200,
    image: AssetImage('assets/images/correov.png'),
  );
}

Widget linea1() {
  return const Divider(
    color: Colors.black26,
    endIndent: 50,
    thickness: .75,
    height: 10,
    indent: 50,
  );
}

Widget cei() {
  return (Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Container(
          margin: const EdgeInsets.only(right: 12, left: 120),
          child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: const Color(0xfff921b21),
                  foregroundColor: const Color.fromARGB(255, 241, 242, 242)),
              onPressed: () async {
                final url = Uri.parse('https://correo.buzonejercito.mil.co/');
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                  print('Cliked');
                }
              },
              child: const Text(
                'OF-SUB-CIV',
                style: TextStyle(fontWeight: FontWeight.bold),
              ))),
      Container(
          margin: const EdgeInsets.only(right: 12, left: 50),
          child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: const Color(0xfff921b21),
                  foregroundColor: const Color.fromARGB(255, 241, 242, 242)),
              onPressed: () async {
                final url = Uri.parse('https://correo1.buzonejercito.mil.co/');
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                  print('Cliked');
                }
              },
              child: const Text('SLP-OPS',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )))),
    ],
  ));
}

Widget img2() {
  return const Image(
    height: 200,
    image: AssetImage('assets/images/siweb.png'),
  );
}

Widget margen1() {
  return const SizedBox(
    height: 35,
  );
}

Widget margen2() {
  return const SizedBox(
    height: 10,
  );
}

Widget boton1() {
  return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(right: 150, left: 80),
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: const Color(0xfff921b21),
              foregroundColor: const Color.fromARGB(255, 241, 242, 242)),
          onPressed: () async {
            final url =
                Uri.parse('https://caocc.ejercito.mil.co:4443/SiwepDiper-web/');
            if (await canLaunchUrl(url)) {
              await launchUrl(url);
              print('Cliked');
            }
          },
          child: const Text(
            'NOTIFICIACIONES',
            style: TextStyle(fontWeight: FontWeight.bold),
          )));
}

Widget img3() {
  return const Image(
    height: 200,
    image: AssetImage('assets/images/fovid.png'),
  );
}

Widget boton2() {
  return Container(
      margin: const EdgeInsets.only(right: 40, left: 100),
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: const Color(0xfff921b21),
              foregroundColor: const Color.fromARGB(255, 241, 242, 242)),
          onPressed: () async {
            final url =
                Uri.parse('https://fovid.ejercito.mil.co:4443/Fovid-2.0/');
            if (await canLaunchUrl(url)) {
              await launchUrl(url);
              print('Cliked');
            }
          },
          child: const Text(
            'INGRESA AQUI FOLIO VIDA DIGITAL',
            style: TextStyle(fontWeight: FontWeight.bold),
          )));
}

Widget img4() {
  return const Image(
    height: 200,
    image: AssetImage('assets/images/sac.png'),
  );
}

Widget boton3() {
  return Container(
      margin: const EdgeInsets.only(right: 0, left: 50),
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: const Color(0xfff921b21),
              foregroundColor: const Color.fromARGB(255, 241, 242, 242)),
          onPressed: () async {
            final url = Uri.parse('https://www.pqr.mil.co/');
            if (await canLaunchUrl(url)) {
              await launchUrl(url);
              print('Cliked');
            }
          },
          child: const Text(
            'INGRESA  ATENCION CIUDADANO',
            style: TextStyle(fontWeight: FontWeight.bold),
          )));
}

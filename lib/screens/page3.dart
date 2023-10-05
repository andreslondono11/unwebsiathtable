import 'package:flutter/material.dart';
import 'package:unwebsiath/drawer/lateral.dart';
import 'package:webview_flutter/webview_flutter.dart';
// import 'package:unwebsiath/screens/page4.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';
// import 'package:url_launcher/url_launcher.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000))
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          if (request.url.startsWith('https://www.youtube.com/')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ),
    )
    ..loadRequest(Uri.parse(
        'https://www.mindefensa.gov.co/irj/portal/Mindefensa/contenido?NavigationTarget=navurl://4c4ab427549ea616e21697a36f505a52'));
  // final YoutubePlayerController _controller = YoutubePlayerController(
  //   initialVideoId: 'MJskcDwzgx8',
  //   flags: const YoutubePlayerFlags(
  //     loop: true,
  //     autoPlay: false,
  //     mute: false,
  //     showLiveFullscreenButton: true,
  //     forceHD: true,
  //     controlsVisibleAtStart: true,
  //     useHybridComposition: true,
  //   ),
  // );

  // final YoutubePlayerController _controller2 = YoutubePlayerController(
  //   initialVideoId: 'egGawvGw9xw',
  //   flags: const YoutubePlayerFlags(
  //     loop: true,
  //     autoPlay: false,
  //     mute: false,
  //     showLiveFullscreenButton: true,
  //     forceHD: true,
  //     controlsVisibleAtStart: true,
  //     useHybridComposition: true,
  //   ),
  // );
  // final YoutubePlayerController _controller3 = YoutubePlayerController(
  //   initialVideoId: 'zF-CJlWofeA',
  //   flags: const YoutubePlayerFlags(
  //     loop: true,
  //     autoPlay: false,
  //     mute: false,
  //     showLiveFullscreenButton: true,
  //     forceHD: true,
  //     controlsVisibleAtStart: true,
  //     useHybridComposition: true,
  //   ),
  // );

  // final YoutubePlayerController _controller1 = YoutubePlayerController(
  //   initialVideoId: 'yN-msT9Jeec',
  //   flags: const YoutubePlayerFlags(
  //     loop: true,
  //     showLiveFullscreenButton: true,
  //     autoPlay: false,
  //     mute: false,
  //   ),
  // );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xfff921b21),
            shadowColor: Colors.blueGrey,
            elevation: 10.2,
            title: const Text(
              'Bienestar',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 25,
                  color: Colors.white),
            ),
          ),
          drawer: const DrawerWigdet(),
          body: WebViewWidget(controller: controller),
        ));
  }
}
//           body: ListView(
//             children: [
//               const SizedBox(
//                 child: Image(image: AssetImage('assets/images/bienestar.png')),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               Container(
//                 margin: const EdgeInsets.only(left: 80, right: 80),
//                 child: TextButton(
//                     style: TextButton.styleFrom(
//                         padding: const EdgeInsets.only(
//                           left: 50,
//                           right: 60,
//                         ),
//                         backgroundColor: const Color(0xfff921b21),
//                         foregroundColor: Colors.white),
//                     onPressed: () async {
//                       final url = Uri.parse(
//                           'https://www.mindefensa.gov.co/irj/portal/Mindefensa/contenido?NavigationTarget=navurl://4c4ab427549ea616e21697a36f505a52');
//                       if (await canLaunchUrl(url)) {
//                         await launchUrl(url);
//                         print('Cliked');
//                       }
//                     },
//                     child: const Text('Acede Aqui',
//                         style: TextStyle(
//                           fontSize: 12,
//                           fontWeight: FontWeight.bold,
//                         ))),
//               ),
//               const Divider(
//                 color: Color(0xfff921b21),
//                 endIndent: 50,
//                 thickness: 0.09,
//                 height: 10,
//                 indent: 50,
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               const Text(
//                 'Conoce el programa de Alianzas y descuentos con más de 205 empresas en 14 categorías cómo educación, salud, cuidado personal, restaurantes, vehículos, entre otros...',
//                 style: TextStyle(fontWeight: FontWeight.w300),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               const Text(
//                   'Para el personal del Ejército Nacional (activos, retirados y pensionados) y civil del MDN.',
//                   style: TextStyle(fontWeight: FontWeight.bold)),
//               const SizedBox(
//                 height: 10,
//               ),
//               const Text(
//                   'Para disfrutar de los beneficios, presenta la cédula militar o fichero de la unidad. ',
//                   style: TextStyle(fontWeight: FontWeight.w300))
//             ],
//           ),
//         ));
//   }
// }

//     // const Divider(
//     //             color: Color(0xfff921b21),
//     //             endIndent: 50,
//     //             thickness: 0.09,
//     //             height: 10,
//     //             indent: 50,
//     //           ),
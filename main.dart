import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Proyecto Taller',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: GoogleFonts.anaheimTextTheme(),
      ),
      home: Scaffold(
        body: Row(
          children: [
            Column(
              //mainaxis alinea verticalmente
              // mainAxisAlignment: MainAxisAlignment.center,
              //crossaxis alinea horizontalmente
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                botton(Icons.book, 'Projects', () {}),
                botton(Icons.draw, 'Draft', () {}),
                botton(Icons.switch_access_shortcut_outlined, 'Shared whit me',
                    () {}),
                const Spacer(),
                botton(Icons.settings, 'Settings', () {}),
                botton(Icons.people, 'Invite members', () {}),
                botton(Icons.add, 'New Draft', () {}),
                botton(Icons.add, 'New Project', () {}),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Side Hustle',
                        style: TextStyle(
                          fontSize: 35,
                        ),
                      ),
                      SizedBox(width: 20),
                      Icon(
                        Icons.keyboard_arrow_down_rounded,
                        size: 35,
                      ),
                      SizedBox(width: 750),
                      Icon(Icons.link),
                      SizedBox(width: 20),
                      Text('Share'),
                      SizedBox(width: 20),
                      Icon(Icons.more_vert),
                      //
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      nota(),
                      const SizedBox(width: 40),
                      nota(),
                      const SizedBox(width: 40),
                      nota(),
                      const SizedBox(width: 40),
                      nota(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  nota() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[300],
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(25),
      height: 300,
      width: 200,
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 10,
                width: 10,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 15),
              const Text('Laguna del Chapulin Colorado'),
            ],
          ),
          const SizedBox(height: 25),
          const Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                    'Este proyecto busca mejorar la infraestructura local.'),
              ),
            ),
          ),
          const SizedBox(height: 35),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.grey[100]),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  child: Text(
                    'Ver detalles',
                    style: TextStyle(
                      color: Colors.blue[800],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  InkWell botton(IconData icon, String text, Function onPressed) {
    return InkWell(
      onTap: () {
        onPressed();
        print(text);
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Icon(icon),
            const SizedBox(width: 20),
            Text(text),
          ],
        ),
      ),
    );
  }
}

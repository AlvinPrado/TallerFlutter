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
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
        textTheme: GoogleFonts.latoTextTheme(),
      ),
      home: Scaffold(
        body: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customButton(Icons.dashboard, 'Dashboard', () {}),
                customButton(Icons.assignment, 'Tasks', () {}),
                customButton(Icons.share, 'Shared Items', () {}),
                const Spacer(),
                customButton(Icons.settings, 'Preferences', () {}),
                customButton(Icons.group_add, 'Team Members', () {}),
                customButton(Icons.create_new_folder, 'Create Task', () {}),
                customButton(Icons.folder, 'Create Project', () {}),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'My Chapulineada',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 20),
                      Icon(
                        Icons.keyboard_arrow_down_rounded,
                        size: 30,
                      ),
                      SizedBox(width: 800),
                      Icon(Icons.link),
                      SizedBox(width: 20),
                      Text('Share'),
                      SizedBox(width: 20),
                      Icon(Icons.more_vert),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      nota(),
                      const SizedBox(width: 25),
                      nota(),
                      const SizedBox(width: 25),
                      nota(),
                      const SizedBox(width: 25),
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

  Widget nota() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[50]!,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(20),
      height: 300,
      width: 200,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 16,
                width: 18,
                decoration: BoxDecoration(
                  color: Colors.blue[300]!,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              const SizedBox(width: 10),
              const Text(
                'Padrino',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 20),
   

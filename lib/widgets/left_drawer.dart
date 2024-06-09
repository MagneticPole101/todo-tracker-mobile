import 'package:flutter/material.dart';
import 'package:todo_tracker/screens/menu.dart';
import 'package:todo_tracker/screens/trackerlist_form.dart';


class LeftDrawer extends StatelessWidget {
    const LeftDrawer({super.key});

    @override
        Widget build(BuildContext context) {
        return Drawer(
            child: ListView(
                children: [
                    const DrawerHeader(
                        decoration: BoxDecoration(
                            color: Colors.indigo,
                        ),
                        child: Column(
                            children: [
                                Text(
                                    'Todo Tracker',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                    ),
                                ),
                                Padding(padding: EdgeInsets.all(10)),
                                Text("Catat seluruh todo listmu disini!",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white,
                                    ),
                                ),
                            ],
                        ),
                    ),
                    ListTile(
                        leading: const Icon(Icons.home_outlined),
                        title: const Text('Halaman Utama'),
                        // Bagian redirection ke MyHomePage
                        onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage(),
                            ));
                        },
                    ),
                    ListTile(
                        leading: const Icon(Icons.library_add_rounded),
                        title: const Text('Tambah Todo'),
                        // Bagian redirection ke TrackerFormPage
                        onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TrackerFormPage(),
                            ));
                        },
                    ),
                ],
            ),
        );
    }
}
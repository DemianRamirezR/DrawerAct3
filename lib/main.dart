import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Drawer en Flutter';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.cyan),
              accountName: Text(
                "Jose Demian Ramirez Ramirez",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff000000),
                ),
              ),
              accountEmail: Text(
                "a.20308051280534@cbtis128.edu.mx",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff000000),
                ),
              ),
              currentAccountPicture: FlutterLogo(),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
              ),
              title: const Text('Inicio'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.menu_book,
              ),
              title: const Text('Menu'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.phone_android,
              ),
              title: const Text('Contacto'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            AboutListTile(
              // <-- SEE HERE
              icon: Icon(
                Icons.info,
              ),
              child: Text('Acerca de...'),
              applicationName: 'Inicio insano 👻',
              applicationVersion: '1.0',
              applicationLegalese: '© 2023 syn3sth3sia',
              aboutBoxChildren: [Text("Me gusta el chocolate")],
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Act3 Drawer Ramirez'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                _key.currentState!.openDrawer(); //<-- SEE HERE
              },
              child: const Text(
                'Abrir Drawer',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

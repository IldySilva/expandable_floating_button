import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent,brightness: Brightness.dark),
        useMaterial3: true,
      ),
      home: const App(),
    );
  }
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: ExpandableFab.location,
      floatingActionButton: ExpandableFab(
        type: ExpandableFabType.up,
        openButtonBuilder: DefaultFloatingActionButtonBuilder(
            fabSize: ExpandableFabSize.regular, child: const Icon(Icons.menu)),
        closeButtonBuilder:
            DefaultFloatingActionButtonBuilder(
                fabSize: ExpandableFabSize.regular,
                child: const Icon(Icons.close)),
        children: [

          FloatingActionButton(onPressed: (){},child: const FlutterLogo(),),

          FloatingActionButton(onPressed: (){},child: const Icon(Icons.flutter_dash)),
          FloatingActionButton(onPressed: (){},child: const FlutterLogo(),),


        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "E X P A N D A B L E ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.grey.shade600),
            ),
            Text(
              "Floating Action Button",
              style: TextStyle(fontSize: 20, color: Colors.grey.shade600),
            )
          ],
        ),
      ),
    );
  }
}

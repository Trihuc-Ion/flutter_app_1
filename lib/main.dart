import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: AVGSpeedCalculatorPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class AVGSpeedCalculatorPage extends StatefulWidget {
  const AVGSpeedCalculatorPage({super.key, required this.title});
  final String title;
  
  @override
  State<AVGSpeedCalculatorPage> createState() => AVGSpeedCalculatorPageState();
}

class AVGSpeedCalculatorPageState extends State<AVGSpeedCalculatorPage>{

  final TextEditingController _distantaController = TextEditingController();
  final TextEditingController _timpController = TextEditingController();

  double? _vitezaMedie;

  void _calculeazaVitezaMedie() {
    final distanta = double.tryParse(_distantaController.text);
    final timp = double.tryParse(_timpController.text);

    if (distanta != null && timp != null && timp > 0) {
      setState(() {
        _vitezaMedie = distanta / timp;
      });
    } else {
      setState(() {
        _vitezaMedie = null;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Te rog introdu valori valide pentru distanță și timp.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title),
      backgroundColor: Color.fromARGB(174, 0, 0, 0),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _distantaController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Distanța (km)',
              ),
            ),
            TextField(
              controller: _timpController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Timpul (ore)',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculeazaVitezaMedie,
              child: const Text('Calculează Viteza Medie'),
            ),
            const SizedBox(height: 20),
            if (_vitezaMedie != null)
              Text('Viteza Medie: ${_vitezaMedie!.toStringAsFixed(2)} km/h',
                  style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}


// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.primary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text('You have pushed the button this many times:'),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }

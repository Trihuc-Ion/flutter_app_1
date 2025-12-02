import 'package:flutter/material.dart';

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
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'BMI Calculator';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.deepPurpleAccent,
          foregroundColor: Colors.white,
          shadowColor: Colors.grey,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  double h = 0;
  double w = 0;
  double result = 0.0;

  String bmi = '';
  String bmi_status = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 100, 50, 0),
            child: TextFormField(
              style: const TextStyle (fontSize: 20),
              decoration: const InputDecoration(
                hintText: 'Enter your height',
              ),
              keyboardType: TextInputType.number,
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your height';
                }
                return null;
              },
              onChanged: (value){
                setState(() {
                  h = double.parse(value)/100;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 16, 50, 0),
            child: TextFormField(
              style: const TextStyle (fontSize: 20),
              decoration: const InputDecoration(
                hintText: 'Enter your weight',
              ),
              keyboardType: TextInputType.number,
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your weight';
                }
                return null;
              },

              onChanged: (value){
                setState(() {
                  w = double.parse(value);
                });
              },
            ),
          ),
          Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          setState(() {
                            result = w/(h*h);
                            bmi = result.toStringAsFixed(1);

                            if(result < 18.5) bmi_status = 'Underweight';
                            if(result > 18.5 && result < 24.9) bmi_status = 'Normal weight';
                            if(result > 25.0 && result < 29.9) bmi_status = 'Overweight';
                            if(result > 30) bmi_status = 'Obesity';
                          });
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurpleAccent,
                      ),
                      child: const Text('Submit'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState?.reset();
                          setState(() {
                            bmi = '';
                            bmi_status = '';
                          });
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurpleAccent,
                      ),
                      child: const Text('Reset'),
                    ),
                  ),
                ],
              ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 26, 0, 0),
            child: Text( bmi.isNotEmpty ? 'Your BMI is $bmi' : '',
              style: const TextStyle (fontSize: 28),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 26, 0, 0),
            child: Text( bmi.isNotEmpty ? bmi_status : '',
              style: const TextStyle (fontSize: 28),
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
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
  double result = 1;

  String bmi = '';

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
              decoration: const InputDecoration(
                hintText: 'Enter your height',
              ),
              keyboardType: TextInputType.number,
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              onChanged: (value){
                setState(() {
                  h= double.parse(value);
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 16, 50, 0),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter your weight',
              ),
              keyboardType: TextInputType.number,
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
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
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
            child: ElevatedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState!.validate()) {
                  setState(() {
                    result = w/(h*h);
                    bmi = result.toStringAsFixed(1);
                  });
                }
              },
              child: const Text('Submit'),
            ),
          ),
          Text(bmi)
        ],
      ),
    );
  }
}



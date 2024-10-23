import 'package:flutter/material.dart';

class RadioButtonExample extends StatefulWidget {
  const RadioButtonExample({super.key});

  @override
  State<RadioButtonExample> createState() => _RadioButtonExampleState();
}

class _RadioButtonExampleState extends State<RadioButtonExample> {
  int? selectedRadioValue;

  void selectRadio(int value) {
    setState(() {
      selectedRadioValue = value;
    });
  }

  // List of countries for the radio buttons
  final List<Map<String, dynamic>> countries = [
    {'value': 1, 'label': 'India'},
    {'value': 2, 'label': 'Australia'},
    {'value': 3, 'label': 'Pakistan'},
    {'value': 4, 'label': 'Sri Lanka'},
    {'value': 5, 'label': 'Nepal'},
    {'value': 6, 'label': 'United States'},
    {'value': 7, 'label': 'China'},
    {'value': 8, 'label': 'France'},
    {'value': 9, 'label': 'Iceland'},
    {'value': 10, 'label': 'Indonesia'},
    {'value': 11, 'label': 'Iran'},
    {'value': 12, 'label': 'Iraq'},
    {'value': 13, 'label': 'Japan'},
    {'value': 14, 'label': 'America'},
    {'value': 15, 'label': 'Liberia'},
    {'value': 16, 'label': 'Norway'},
    {'value': 17, 'label': 'Colombia'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Button Example'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
              child: FlutterLogo(style: FlutterLogoStyle.stacked),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Select a Country:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              ...countries.map((country) => _buildRadioButton(country['value'], country['label'])).toList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRadioButton(int value, String label) {
    return Column(
      children: [
        Row(
          children: [

            Radio(
              value: value,
              groupValue: selectedRadioValue,
              onChanged: (newValue) {
                selectRadio(newValue!);
              },
              activeColor: Colors.black,
            ),
            Text(
              label,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        const Divider(
          thickness: 1,
          color: Colors.grey,
        ),
      ],
    );
  }
}

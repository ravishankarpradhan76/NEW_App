import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({super.key});

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  int? selectedRadioValue;

  void selectRadio(int value) {
    setState(() {
      selectedRadioValue = value;
    });
  }

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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Select a Country:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            Row(
              children: [
                Radio(
                  value: 1,
                  groupValue: selectedRadioValue,
                  onChanged: (value) {
                    selectRadio(value!);
                  },
                  activeColor: Colors.black,
                ),
                Text('India',style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),),
              ],
            ),
            const Divider(
              thickness: 1,
              color: Colors.grey,
            ),

            Row(
              children: [
                Radio(
                  value: 2,
                  groupValue: selectedRadioValue,
                  onChanged: (value) {
                    selectRadio(value!);
                  },
                  activeColor: Colors.black,
                ),
                Text('Australia',style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),),
              ],
            ),
            const Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            Row(
              children: [
                Radio(
                  value: 3,
                  groupValue: selectedRadioValue,
                  onChanged: (value) {
                    selectRadio(value!);
                  },
                  activeColor: Colors.black,
                ),
                Text('Pakistan',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
              ],
            ),
            const Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            Row(
              children: [
                Radio(
                  value: 4,
                  groupValue: selectedRadioValue,
                  onChanged: (value) {
                    selectRadio(value!);
                  },
                  activeColor: Colors.black,
                ),
                Text('Sri lanka',style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),),
              ],
            ),
            const Divider(
              thickness: 1,
              color: Colors.grey,
            ),

            Row(
              children: [
                Radio(
                  value: 5,
                  groupValue: selectedRadioValue,
                  onChanged: (value) {
                    selectRadio(value!);
                  },
                  activeColor: Colors.black,
                ),
                Text('Nepal',style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),),
              ],
            ),
            const Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            Row(
              children: [
                Radio(
                  value: 6,
                  groupValue: selectedRadioValue,
                  onChanged: (value) {
                    selectRadio(value!);
                  },
                  activeColor: Colors.black,
                ),
                Text('United State',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
              ],
            ),
            const Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            Row(
              children: [
                Radio(
                  value: 7,
                  groupValue: selectedRadioValue,
                  onChanged: (value) {
                    selectRadio(value!);
                  },
                  activeColor: Colors.black,
                ),
                Text('China',style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),),
              ],
            ),
            const Divider(
              thickness: 1,
              color: Colors.grey,
            ),

            Row(
              children: [
                Radio(
                  value: 8,
                  groupValue: selectedRadioValue,
                  onChanged: (value) {
                    selectRadio(value!);
                  },
                  activeColor: Colors.black,
                ),
                Text('France',style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),),
              ],
            ),
            const Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            Row(
              children: [
                Radio(
                  value: 8,
                  groupValue: selectedRadioValue,
                  onChanged: (value) {
                    selectRadio(value!);
                  },
                  activeColor: Colors.black,
                ),
                Text('Iceland',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';


class curriculam_reasons extends StatefulWidget {
  const curriculam_reasons({super.key});

  @override
  State<curriculam_reasons> createState() => _curriculam_reasons();

}

class _curriculam_reasons extends State<curriculam_reasons> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController datePicker = TextEditingController();
  String _selectedOption = '';
  String? selectedLevel;
  String? selectedStd;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 20.0,
        backgroundColor: const Color.fromARGB(255, 3, 63, 113),
        title: const Text(
          'Curriculam Reasons-For Not Completing',
          style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Form(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              children: <Widget>[
                 const SizedBox(height: 20),
                DropdownButtonFormField<String>(
                  value: selectedLevel,
                  decoration: InputDecoration(
                    labelText: 'Month',
                    border: OutlineInputBorder(),
                  ),
                  hint: Text('Select Month'),
                  items: [
                    'January',
                    'Feburary',
                    'March',
                    'April',
                    'May',
                    'June',
                    'July',
                    'August',
                    'September',
                    'October',
                    'Novemeber',
                    'December'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedLevel = newValue;
                    });
                  },
                ),
                const SizedBox(height: 20),
                DropdownButtonFormField<String>(
                  value: selectedLevel,
                  decoration: InputDecoration(
                    labelText: 'Level',
                    border: OutlineInputBorder(),
                  ),
                  hint: Text('Select Level'),
                  items: [
                    'Level 1',
                    'Level 2',
                    'Level 3',
                    'Level 4',
                    'Level 5',
                    'Level 6'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedLevel = newValue;
                    });
                  },
                ),
                const SizedBox(height: 20),
                DropdownButtonFormField<String>(
                  value: selectedStd,
                  decoration: InputDecoration(
                    labelText: 'Std',
                    border: OutlineInputBorder(),
                  ),
                  hint: Text('Select Std'),
                  items: [
                    'LKG',
                    'UKG',
                    'I',
                    'II',
                    'III',
                    'IV',
                    'V',
                    'VI',
                    'VII',
                    'VIII',
                    'IX',
                    'X',
                    'XI',
                    'XII'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedStd = newValue;
                    });
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Department/Subject',
                    labelStyle: TextStyle(
                      fontSize: 19,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Reason for not Completing',
                    labelStyle: TextStyle(
                      fontSize: 19,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Remedial Measures Taken',
                    labelStyle: TextStyle(
                      fontSize: 19,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Save as Draft Logic
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Form saved as draft')),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  child: const Text(
                    'Save as Draft',
                    style:
                    TextStyle(color: Colors.black), // Text color set to black
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Form Submitted')),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  child: const Text(
                    'Submit',
                    style: TextStyle(color: Colors.black), // Text color set to black
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

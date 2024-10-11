import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class violin extends StatefulWidget {
  const violin({super.key});

  @override
  State<violin> createState() => _violin();

}

class _violin extends State<violin> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController datePicker = TextEditingController();
  String _selectedOption = '';
  String? selectedLevel;
  String? selectedStd;
  String? selectedanfn;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 20.0,
        backgroundColor: const Color.fromARGB(255, 3, 63, 113),
        title: const Text(
          'NA6-CCA-Violin',
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
                TextFormField(
                  controller: datePicker,
                  decoration: const InputDecoration(
                    labelText: 'Date',
                    labelStyle: TextStyle(
                      fontSize: 19,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(),
                  ),
                  onTap: () async {
                    DateTime? datetime = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime.now(),
                    );
                    if (datetime != null) {
                      String formattedDate = DateFormat('yyyy-MM-dd').format(datetime);
                      setState(() {
                        datePicker.text = formattedDate;
                      });
                    }
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
                DropdownButtonFormField<String>(
                  value: selectedLevel,
                  decoration: InputDecoration(
                    labelText: 'AN/FN',
                    border: OutlineInputBorder(),
                  ),
                  hint: Text('Select'),
                  items: [
                    'AN',
                    'FN'
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
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Activities Planned (No.)',
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
                    labelText: 'Activities Excecuted (No.)',
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
                    labelText: 'List of Activities',
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
                    labelText: 'No of Periods Per Month',
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
                    labelText: 'Remarks',
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

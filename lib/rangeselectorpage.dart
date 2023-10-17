import 'package:flutter/material.dart';
import 'package:randomizer/randomizer_page.dart';
import 'package:randomizer/range_selector_form.dart';

class RangeSelectorPage extends StatefulWidget {
  const RangeSelectorPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _RangeSelectorPageState createState() => _RangeSelectorPageState();
}

class _RangeSelectorPageState extends State<RangeSelectorPage> {
  final formKey = GlobalKey<FormState>();
  // ignore: unused_field
  int _min = 0;
  // ignore: unused_field
  int _max = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Range Select'),
      ),
      body: RangeSelectorForm(
        formKey: formKey,
        minValueSetter: (value) => _min = value,
        maxValueSetter: (value) => _max = value,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_forward),
        onPressed: () {
          if (formKey.currentState?.validate() == true) {
            formKey.currentState?.save();
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => RandomizerPage(
                  min: _min,
                  max: _max,
                ),
              ),
            );
          }
        },
      ),
    );
  }
}

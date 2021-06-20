import 'package:counter_app/counter/business_logic/counter_logic.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class IncrementButton extends StatelessWidget {
  const IncrementButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: context.read<Counter>().increment,
      child: Icon(Icons.arrow_upward),
    );
  }
}

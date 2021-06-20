import 'package:counter_app/counter/business_logic/counter_logic.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DecrementButton extends StatelessWidget {
  const DecrementButton({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: context.watch<Counter>().count > 0 ? context.read<Counter>().decrement : null,
      child: Icon(Icons.arrow_downward),
    );
  }
}

import 'package:counter_app/counter/business_logic/counter_logic.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CountText extends StatelessWidget {
  const CountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var count = context.watch<Counter>().count;
    return Text(
      '$count',
      style: textTheme.headline1,
    );
  }
}

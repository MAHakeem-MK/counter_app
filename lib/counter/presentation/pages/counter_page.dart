import 'package:counter_app/counter/business_logic/counter_logic.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:counter_app/counter/presentation/widgets/counter_widgets.dart';

class CounterPage extends StatelessWidget {
  CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (_) => Counter(),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IncrementButton(),
              CountText(),
              DecrementButton(),
            ],
          ),
        ),
      ),
    );
  }
}

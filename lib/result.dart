import 'package:calculator_bloc_state_management/sayac_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
        title: Text("Result Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BlocBuilder<CalculatorCubit, int>(builder: (context, sayacDegeri) {
              return Text(
                "$sayacDegeri",
                style: TextStyle(fontSize: 32),
              );
            }),
            ElevatedButton(
                onPressed: () {
                  context.read<CalculatorCubit>().sayaciArttir();
                },
                child: Text("Arttir")),
            ElevatedButton(
                onPressed: () {
                  context.read<CalculatorCubit>().sayaciAzalt(2);
                },
                child: Text("Azalt"))
          ],
        ),
      ),
    );
  }
}

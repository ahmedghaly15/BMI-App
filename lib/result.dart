import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result(
      {super.key,
      required this.result,
      required this.isMale,
      required this.age});

  final double result;
  final bool isMale;
  final int age;

  String get resultPhrase {
    String resultText = "";

    if (result >= 30) {
      resultText = "Obese";
    } else if (result > 25 && result < 30) {
      resultText = "Overweight";
    } else if (result >= 18.5 && result <= 24.9) {
      resultText = "Normal";
    } else {
      resultText = "Thin";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:
              Text("Result", style: Theme.of(context).textTheme.headlineMedium),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.teal),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Gender",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.displaySmall),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(isMale ? "Male" : "Female",
                          style: Theme.of(context).textTheme.displayMedium,
                          textAlign: TextAlign.center)
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.teal),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Result",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.displaySmall),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(result.toStringAsFixed(1),
                          style: Theme.of(context).textTheme.displayMedium,
                          textAlign: TextAlign.center)
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.teal),
                  child: Column(
                    children: <Widget>[
                      Text("Healthiness",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.displaySmall),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        resultPhrase,
                        style: Theme.of(context).textTheme.displayMedium,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.teal),
                  child: Column(
                    children: <Widget>[
                      Text("Age",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.displaySmall),
                      Text("$age",
                          style: Theme.of(context).textTheme.displayMedium,
                          textAlign: TextAlign.center)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

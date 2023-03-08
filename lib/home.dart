import 'package:flutter/material.dart';
import 'result.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isMale = true;
  double height = 90;
  int weight = 50;
  int age = 12;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Body Mass Index",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                margin: const EdgeInsets.fromLTRB(20, 20, 20, 15),
                child: Row(
                  children: <Widget>[
                    extractedExpanded_1(context, "male"),
                    const SizedBox(width: 15),
                    extractedExpanded_1(context, "female")
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                  margin: const EdgeInsets.fromLTRB(20, 15, 20, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.blueGrey,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text("Height",
                            style: Theme.of(context).textTheme.displaySmall),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(height.toStringAsFixed(1),
                                style:
                                    Theme.of(context).textTheme.displayLarge),
                            const SizedBox(
                              width: 2,
                            ),
                            Text("CM",
                                style: Theme.of(context).textTheme.bodyLarge),
                          ],
                        ),
                        Slider(
                          value: height,
                          min: 50,
                          max: 220,
                          onChanged: (newValue) =>
                              setState(() => height = newValue),
                        ),
                      ],
                    ),
                  )),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Row(
                  children: <Widget>[
                    extractedExpanded_2(context, "weight"),
                    const SizedBox(width: 15),
                    extractedExpanded_2(context, "age")
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              color: Colors.teal,
              height: MediaQuery.of(context).size.height / 14,
              width: double.infinity,
              margin: const EdgeInsets.only(bottom: 15.0),
              child: TextButton(
                onPressed: () {
                  var result = weight / pow(height / 100, 2);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Result(
                        age: age,
                        isMale: isMale,
                        result: result,
                      ),
                    ),
                  );
                },
                child: const Text(
                  "Calculate",
                  style: TextStyle(
                    fontSize: 35,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  // For Male and Female Boxes
  Expanded extractedExpanded_1(BuildContext context, String type) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            isMale = (type == "male") ? true : false;
          });
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: (isMale && type == "male") || (!isMale && type == "female")
                ? Colors.teal
                : Colors.blueGrey,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(type == "male" ? Icons.male : Icons.female, size: 120),
              const SizedBox(height: 15),
              Text(type == "male" ? "Male" : "Female",
                  style: Theme.of(context).textTheme.displaySmall)
            ],
          ),
        ),
      ),
    );
  }

  // For Weight and Age Boxes
  Expanded extractedExpanded_2(BuildContext context, String type) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.blueGrey,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(type == "weight" ? "Weight" : "Age",
                style: Theme.of(context).textTheme.displaySmall),
            const SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: <Widget>[
                Text(
                  type == "weight" ? "$weight" : "$age",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                const SizedBox(
                  width: 2,
                ),
                Text(
                  type == "weight" ? "Kg" : "y",
                  style: Theme.of(context).textTheme.bodyLarge,
                )
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton(
                  heroTag: type == "wieght" ? "wieght--" : "age--",
                  onPressed: () =>
                      setState(() => type == "weight" ? weight-- : age--),
                  mini: true,
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                FloatingActionButton(
                  heroTag: type == "weight" ? "weight++" : "age++",
                  onPressed: () =>
                      setState(() => type == "weight" ? weight++ : age++),
                  mini: true,
                  child: const Icon(Icons.add),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

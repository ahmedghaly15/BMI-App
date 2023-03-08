import 'package:flutter/material.dart';
import 'home.dart';

class Info extends StatefulWidget {
  const Info({super.key});

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Info",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "information you need to know:",
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(15),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.teal),
                child: Column(
                  children: <Widget>[
                    Text(
                        "- If your result is bigger than or equal to 30, unfortunately you are obese."
                        " You need to do some exercies or go to gym.",
                        textAlign: TextAlign.justify,
                        style: Theme.of(context).textTheme.bodyMedium),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                        "- If your result is between 25 & 30, you are overweight. "
                        "You need to do some exercies or go to gym.",
                        textAlign: TextAlign.justify,
                        style: Theme.of(context).textTheme.bodyMedium),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                        "- If your result is bigger than or equal to 18.5 or smaller than or equal to 24.9,"
                        " you are normal.",
                        textAlign: TextAlign.justify,
                        style: Theme.of(context).textTheme.bodyMedium),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                        "- If your result is less than 18.5, you are thin. "
                        "You need to care about your health more and go to gym.",
                        textAlign: TextAlign.justify,
                        style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                ),
                child: Text("Go check",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineMedium),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

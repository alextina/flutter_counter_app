import 'package:flutter/material.dart';
import 'package:hello_world_app/presentation/widgets/custom_button.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Counter Functions',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
              )),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    clickCounter = 0;
                  });
                },
                icon: Icon(Icons.refresh_rounded),
                color: Colors.white,
                iconSize: 30,
              ),
            )
          ],
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$clickCounter',
                style: TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
              ),
              Text(
                'click${clickCounter == 1 ? '' : 's'}',
                style: TextStyle(fontSize: 25),
              )
            ],
          ),
        ),
        floatingActionButton: Padding(
          padding: EdgeInsets.only(bottom: 20, left: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: CustomButton(
                  icon: Icons.exposure_minus_1,
                  onPressed: () {
                    if (clickCounter == 0) return;
                    setState(() {
                      clickCounter--;
                    });
                  },
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: CustomButton(
                icon: Icons.plus_one,
                onPressed: () {
                  setState(() {
                    clickCounter++;
                  });
                },
              )),
            ],
          ),
        ));
  }
}

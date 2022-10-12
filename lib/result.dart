import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:bmi_calculator/input_page.dart';
import 'formula.dart';

class Result extends StatefulWidget {
  int height;
  int weight;
  int age;

  int test() {
    if (5 > 3) {
      return (5);
    }
    return 0;
  }

  Result({required this.weight, required this.height, required this.age});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  Logic logic = Logic();
  double bmiResult = 0;
  String comm = "";
  @override
  void initState() {
    bmiResult = logic.calculateBMI(widget.height, widget.weight);
    if (bmiResult <= 18.5) {
      comm = "Underweight";
    } else if (bmiResult > 18.5 && bmiResult <= 24.9) {
      comm = "Normal Weight";
    } else if (bmiResult >= 25 && bmiResult <= 29.9) {
      comm = "Overweight";
    } else if (bmiResult >= 30) {
      comm = "Obesity";
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("BMI CALCULATOR"),
      ),
      body: Container(
        color: Color.fromARGB(255, 100, 171, 228),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 20,
              width: double.infinity,
            ),
            SfRadialGauge(axes: <RadialAxis>[
              RadialAxis(minimum: 0, maximum: 60, ranges: <GaugeRange>[
                GaugeRange(startValue: 0, endValue: 20, color: Colors.green),
                GaugeRange(startValue: 20, endValue: 40, color: Colors.orange),
                GaugeRange(startValue: 40, endValue: 60, color: Colors.red)
              ], pointers: <GaugePointer>[
                NeedlePointer(value: bmiResult)
              ], annotations: <GaugeAnnotation>[
                GaugeAnnotation(
                    widget: Container(
                        child: Text('${bmiResult.toStringAsFixed(1)}',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold))),
                    angle: 90,
                    positionFactor: 0.5)
              ])
            ]),
            Text("$comm",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal))
          ],
        ),
      ),
    );
  }
}

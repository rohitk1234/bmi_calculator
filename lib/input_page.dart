import 'package:bmi_calculator/result.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/result.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int genselected = 0;
  int select_height = 140;
  int select_weight = 50;
  int select_age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 100, 171, 228),
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("BMI CALCULATOR"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    genselected = 1;
                  });
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: 170,
                  width: 170,
                  decoration: BoxDecoration(
                      color: genselected == 1 ? Colors.grey : Colors.blueAccent,
                      borderRadius: BorderRadius.circular(14)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        FontAwesomeIcons.mars,
                        size: 80,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text(
                          "Male",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    genselected = 2;
                  });
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: 170,
                  width: 170,
                  decoration: BoxDecoration(
                      color: genselected == 2 ? Colors.grey : Colors.blueAccent,
                      borderRadius: BorderRadius.circular(14)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        FontAwesomeIcons.venus,
                        size: 80,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text(
                          "Female",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 170,
            width: 370,
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(14)),
            child: Column(
              children: [
                Text(
                  "Height",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 22,
                      color: Colors.white),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.ideographic,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(select_height.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 50,
                              color: Colors.white)),
                    ),
                    Text("cm",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 22,
                            color: Colors.white))
                  ],
                ),
                Slider(
                    activeColor: Colors.lightBlueAccent,
                    inactiveColor: Colors.white,
                    value: select_height.toDouble(),
                    min: 40.0,
                    max: 300.0,
                    onChanged: (value) {
                      setState(() {
                        select_height = value.toInt();
                      });
                    })
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                height: 170,
                width: 170,
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(14)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Weight",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 22,
                          color: Colors.white),
                    ),
                    Text("$select_weight",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 50,
                            color: Colors.white)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              select_weight++;
                            });
                          },
                          child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(FontAwesomeIcons.plus)),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              select_weight--;
                            });
                          },
                          child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(FontAwesomeIcons.minus)),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 170,
                width: 170,
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(14)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Age",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 22,
                          color: Colors.white),
                    ),
                    Text("$select_age",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 50,
                            color: Colors.white)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              select_age++;
                            });
                          },
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(FontAwesomeIcons.plus),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              select_age--;
                            });
                          },
                          child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(FontAwesomeIcons.minus)),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Result(
                          weight: select_weight,
                          height: select_height,
                          age: select_age)),
                );
              },
              child: Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10),
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))),
                child: Center(
                  child: Text(
                    "CALCULATE",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

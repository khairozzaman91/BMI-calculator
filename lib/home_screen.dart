import 'package:expendedwidget/result_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color bgColor = const Color(0xff111428);
  Color cardColor = const Color(0xff272A4B);

  bool isMale = true;
  int weight = 60;
  int age = 25;
  int height = 172;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: const Text(
          "BMI Calculator",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: cardColor,
      ),
      body: Column(
        children: [
          Expanded(
              flex: 10,
              child: Row(
                children: [
                  Expanded(
                      flex: 5,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Card(
                          color: isMale == true ? Colors.teal : cardColor,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.male,
                                size: 45,
                              ),
                              Text(
                                "Male",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      )),
                  Expanded(
                      flex: 5,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Card(
                          color: isMale == false ? Colors.teal : cardColor,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.female,
                                size: 45,
                              ),
                              Text(
                                "FeMale",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      )),
                ],
              )),
          Expanded(
              flex: 10,
              child: Card(
                color: cardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Height",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          "$height",
                          style: const TextStyle(
                              fontSize: 18, color: Colors.white),
                        ),
                        const SizedBox(
                          width: 1,
                        ),
                        const Text(
                          "cm",
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ],
                    ),
                    Slider(
                        thumbColor: Colors.white,
                        activeColor: Colors.teal,
                        inactiveColor: Colors.grey,
                        min: 130,
                        max: 210,
                        value: height.toDouble(),
                        onChanged: (value) {
                          setState(() {
                            height = value.toInt();
                          });
                        })
                  ],
                ),
              )),
          Expanded(
              flex: 10,
              child: Row(
                children: [
                  Expanded(
                      flex: 5,
                      child: Card(
                        color: cardColor,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Weight",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white)),
                            const SizedBox(
                              height: 10,
                            ),
                            Text("$weight",
                                style: const TextStyle(
                                    fontSize: 20, color: Colors.white)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                    backgroundColor: Colors.white12,
                                    mini: true,
                                    onPressed: () {
                                      if (weight > 1) {
                                        setState(() {
                                          weight--;
                                        });
                                      }
                                    },
                                    child: const Icon(
                                      Icons.remove,
                                    )),
                                const SizedBox(
                                  width: 20,
                                ),
                                FloatingActionButton(
                                    backgroundColor: Colors.white12,
                                    mini: true,
                                    onPressed: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                    child: const Icon(
                                      Icons.add,
                                    )),
                              ],
                            )
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 5,
                      child: Card(
                        color: cardColor,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Age",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white)),
                            const SizedBox(
                              height: 10,
                            ),
                            Text("$age",
                                style: const TextStyle(
                                    fontSize: 20, color: Colors.white)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                    backgroundColor: Colors.white12,
                                    mini: true,
                                    onPressed: () {
                                      if (age > 1) {
                                        setState(() {
                                          age--;
                                        });
                                      }
                                    },
                                    child: const Icon(
                                      Icons.remove,
                                    )),
                                const SizedBox(
                                  width: 20,
                                ),
                                FloatingActionButton(
                                    backgroundColor: Colors.white12,
                                    mini: true,
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    child: const Icon(
                                      Icons.add,
                                    )),
                              ],
                            )
                          ],
                        ),
                      )),
                ],
              )),

          MaterialButton(

            onPressed: (){
              double h = height / 100;


              double heightSquare = h*h;
              double result = weight / heightSquare;

              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) =>const ResultPage())
              );

            },
            minWidth: double.infinity,
            height: 60,
            color: Colors.blueGrey,
            child: const Text("CALCULATE", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.normal),),
          )
        ],
      ),
    );
  }
}

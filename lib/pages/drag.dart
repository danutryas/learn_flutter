import 'package:flutter/material.dart';

class MyDraggableComponent extends StatefulWidget {
  const MyDraggableComponent({super.key});

  @override
  State<MyDraggableComponent> createState() => _MyDraggableComponentState();
}

class _MyDraggableComponentState extends State<MyDraggableComponent> {
  Color color1 = Colors.red;
  Color color2 = Colors.green;
  Color color3 = Colors.blue;
  Color targetColor = Colors.grey;
  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30.0),
      child: Column(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Column(
              children: <Widget>[
                const Text("List Color"),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Draggable<Color>(
                        data: color1,
                        feedback: SizedBox(
                          width: 50,
                          height: 50,
                          child: Material(
                            color: color1.withOpacity(0.5),
                            shape: const StadiumBorder(),
                            elevation: 3,
                          ),
                        ),
                        childWhenDragging: const SizedBox(
                          width: 50,
                          height: 50,
                          child: Material(
                            color: Colors.grey,
                            shape: StadiumBorder(),
                            elevation: 0,
                          ),
                        ),
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: Material(
                            color: color1,
                            shape: const StadiumBorder(),
                            elevation: 3,
                          ),
                        ),
                      ),
                      Draggable<Color>(
                        data: color2,
                        feedback: SizedBox(
                          width: 50,
                          height: 50,
                          child: Material(
                            color: color2.withOpacity(0.5),
                            shape: const StadiumBorder(),
                            elevation: 3,
                          ),
                        ),
                        childWhenDragging: const SizedBox(
                          width: 50,
                          height: 50,
                          child: Material(
                            color: Colors.grey,
                            shape: StadiumBorder(),
                            elevation: 0,
                          ),
                        ),
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: Material(
                            color: color2,
                            shape: const StadiumBorder(),
                            elevation: 3,
                          ),
                        ),
                      ),
                      Draggable<Color>(
                        data: color3,
                        feedback: SizedBox(
                          width: 50,
                          height: 50,
                          child: Material(
                            color: color3.withOpacity(0.5),
                            shape: const StadiumBorder(),
                            elevation: 3,
                          ),
                        ),
                        childWhenDragging: const SizedBox(
                          width: 50,
                          height: 50,
                          child: Material(
                            color: Colors.grey,
                            shape: StadiumBorder(),
                            elevation: 0,
                          ),
                        ),
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: Material(
                            color: color3,
                            shape: const StadiumBorder(),
                            elevation: 3,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 2,
            child: Column(
              children: <Widget>[
                const Text(" Place Color Down Here "),
                Container(
                  padding: const EdgeInsets.all(5.0),
                  child: DragTarget<Color>(
                    onWillAccept: (value) => true,
                    onAccept: (value) {
                      isAccepted = true;
                      targetColor = value;
                    },
                    builder: (context, candidateData, rejectedData) {
                      return (isAccepted)
                          ? SizedBox(
                              width: 100,
                              height: 100,
                              child: Material(
                                color: targetColor,
                                shape: const StadiumBorder(),
                                elevation: 3,
                              ),
                            )
                          : const SizedBox(
                              width: 100,
                              height: 100,
                              child: Material(
                                color: Colors.grey,
                                shape: StadiumBorder(),
                              ),
                            );
                    },
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isAccepted = false;
                      targetColor = Colors.grey;
                    });
                  },
                  child: const Text("Remove Color"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

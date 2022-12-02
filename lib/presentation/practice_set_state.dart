import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class InputFieald extends StatefulWidget {
  InputFieald({Key? key}) : super(key: key);

  @override
  State<InputFieald> createState() => _InputFiealdState();
}
//принимать значение с инпута и отображать внизу

class _InputFiealdState extends State<InputFieald> {
  TextEditingController controller = TextEditingController();
  List<String> ggg = [""];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: 200,
              height: 200,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: 100,
                    child: TextField(
                      controller: controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  ElevatedButton(onPressed: () {}, child: Text('sdff'))
                ],
              ),
            ),
            for (String i in ggg) ...[
              MyWidget(text: i),
            ]
          ],
        ),
      ),
    )));
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: Text(widget.text),
    );
  }
}

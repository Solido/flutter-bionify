import 'package:bionify/bionify.dart';
import 'package:flutter/material.dart';

void main() => runApp(const BionifyApp());

const source =
    '''All human beings are born free and equal in dignity and rights. They are endowed with reason and conscience and should act towards one another in a spirit of brotherhood. ''';

class BionifyApp extends StatelessWidget {
  const BionifyApp({super.key});

  // This widget is the root of your application.
  @override
  build(context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: Center(
            child: SizedBox(
          width: 600,
          child: Row(
            children: [
              const Flexible(child: Text(source, style: TextStyle(fontSize: 22))),
              const SizedBox(width: 24),
              Flexible(
                child: Bionify(
                    markStyle: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w900,
                        color: Color.lerp(Colors.lightBlue, Colors.black, .55)),
                    basicStyle: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w200,
                        color: Color.lerp(Colors.lightBlue, Colors.black, .45)),
                    content: source),
              ),
            ],
          ),
        )),
      ),
    );
  }
}

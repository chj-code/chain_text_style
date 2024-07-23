import 'package:chain_text_style/chain_text_style.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChainTS Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'ChainTS Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Wrap(
          direction: Axis.vertical,
          spacing: 10,
          children: <Widget>[
            /// Default TextStyle
            const Text(
              'text',
              style: TextStyle(
                fontSize: 14,
                color: Colors.red,
                fontWeight: FontWeight.w500,
                height: 1.5,
                wordSpacing: 1.5,
              ),
            ),

            /// Recommend Example1：Colors.xx.fs(xx).xx.xx.st
            Text('text1', style: Colors.orange.fs14.st),
            Text('text1', style: Colors.black.fs14.fw5.st),
            Text('text1', style: Colors.red.fs14.fw5.fh(1.5).fws(1.5).st),

            /// Example2：ChainTS.c(xx).xx.xx.st
            Text(
              'text2',
              style: ChainTS.c(Colors.red).fs(14).fw5.fh(1.5).fws(1.5).st,
            ),

            /// Example3: ChainTS.s(xx).xx.xx.st
            Text(
              'text3',
              style: ChainTS.s(14).fc(Colors.red).fw5.fh(1.5).fws(1.5).st,
            ),

            /// Example4：ChainTS().xx.xx.st
            Text(
              'text4',
              style: ChainTS().fs(14).fw5.fws(1.5).fh(1.5).fc(Colors.red).st,
            ),
          ],
        ),
      ),
    );
  }
}

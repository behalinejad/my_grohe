import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:my_grohe/ui/my_curve_painter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).size.height / 3),
        child: AppBar(
          title: Text('OVERVEIW'),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add_circle_outline_outlined),
            ),
          ],
          flexibleSpace: Stack(
            fit: StackFit.expand,
            children: [
             Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.blue, Colors.lightBlue])),
              child: Padding(
                padding:  EdgeInsets.only(top: 50),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Icon(
                        LucideIcons.checkCircle,
                        color: Colors.white,
                        size: 70,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                        width:MediaQuery.of(context).size.width/3 ,
                        child: Text(
                          'Hello Timo , stay hydrated to perform better ',
                          style: TextStyle(

                              fontWeight: FontWeight.w100, color: Colors.white),
                          textDirection: TextDirection.ltr,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

              // The wave shadows in the AppBar
              CustomPaint(
                foregroundPainter: CurvePainter(0,MediaQuery.of(context).size.height / 10,
                    MediaQuery.of(context).size.width/5,MediaQuery.of(context).size.height/10,
                    MediaQuery.of(context).size.width, MediaQuery.of(context).size.height/2.5),
              ),

              CustomPaint(
                foregroundPainter: CurvePainter(0,MediaQuery.of(context).size.height/4,
                    MediaQuery.of(context).size.width/5,MediaQuery.of(context).size.height/10,
                    MediaQuery.of(context).size.width, MediaQuery.of(context).size.height/3.2),
              ),

              CustomPaint(
                foregroundPainter: CurvePainter(MediaQuery.of(context).size.width/8,MediaQuery.of(context).size.height/2.5,
                    MediaQuery.of(context).size.width/2,MediaQuery.of(context).size.height/10,
                    MediaQuery.of(context).size.width, MediaQuery.of(context).size.height/4),
              ),

          ],
          ),
          elevation: 10,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

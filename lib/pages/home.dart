import 'package:flutter/material.dart';
import 'package:i18n_extension/i18n_widget.dart';
import 'package:in18_teste_app/translations/main.i18n.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;


  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text("My Home app".i18n),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:'.i18n,
            ),
            Text(

              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Spacer(),
            MaterialButton(
              color: Colors.blue,
              child: Text(
                "Change Language".i18n,
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
              onPressed: _onPressed,
            ),
            Text(
              "Locale: ".i18n + "${I18n.locale}",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
            Spacer(flex: 2),
            /*Text(locale.toString())*/
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
  void _onPressed() =>
      I18n.of(context).locale = (I18n.localeStr == "en_us") ||
          (I18n.locale.toString() == "en_US")
          ? Locale("pt", "BR")
          :  Locale("en", "US");
}
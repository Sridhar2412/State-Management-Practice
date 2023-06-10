import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:notification/core/services/notification_services.dart';

// class SecondScreenPage extends StatelessWidget {
//   const SecondScreenPage({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Training'),
//     );
//   }
// }
@RoutePage()
class SecondScreenPage extends StatefulWidget {
  const SecondScreenPage({super.key, required this.title});
  final String title;

  @override
  State<SecondScreenPage> createState() => _SecondScreenPageState();
}

class _SecondScreenPageState extends State<SecondScreenPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  NotificationServices notificationServices = NotificationServices();
  @override
  void initState() {
    super.initState();
    notificationServices.initializeNotification();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // ElevatedButton(
            //     onPressed: () {
            //       print("hello");
            //       notificationServices.sendNotification("News", "Sridhar here");
            //     },
            //     child: const Text("Send")),
            ElevatedButton(onPressed: () {}, child: const Text("Schedule")),
            // ElevatedButton(onPressed: () {}, child: const Text("Stop")),
            // Text(
            //   '$_counter',
            //   style: Theme.of(context).textTheme.headlineMedium,
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

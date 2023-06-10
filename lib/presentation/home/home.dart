import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:notification/core/services/notification_services.dart';
import 'package:shared_preferences/shared_preferences.dart';

@RoutePage()
class MyAppPage extends StatelessWidget {
  const MyAppPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // final appRouter = AppRouter();

    return MaterialApp(
      title: 'Flutter Demo',
      // routerConfig: appRouter.config(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Training'),
    );
  }
}

class Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    var firstStart = Offset(size.width / 5, size.height);

// third point of quadratic bezier curve
    var firstEnd = Offset(size.width / 2.25, size.height - 50.0);

// fourth point of quadratic bezier curve
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart =
        Offset(size.width - (size.width / 3.24), size.height - 105);

// third point of quadratic bezier curve
    var secondEnd = Offset(size.width, size.height - 10);

// fourth point of quadratic bezier curve
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
    path.lineTo(size.width, 0);
    path.close();
    // path.lineTo(0, size.height);
    // path.lineTo(size.width, size.height);
    // path.quadraticBezierTo(0, size.height, 0, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    var firstStart = Offset(size.width / 5, size.height);

// third point of quadratic bezier curve
    var firstEnd = Offset(size.width / 2.25, size.height - 50.0);

// fourth point of quadratic bezier curve
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart =
        Offset(size.width - (size.width / 3.24), size.height - 105);

// third point of quadratic bezier curve
    var secondEnd = Offset(size.width, size.height - 10);

// fourth point of quadratic bezier curve
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
    path.lineTo(size.width, 0);
    path.close();
    // path.lineTo(0, size.height);
    // path.lineTo(size.width, size.height);
    // path.quadraticBezierTo(0, size.height, 0, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

@RoutePage()
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  TextEditingController nameController = TextEditingController();
  final String KEYNAME = "name";
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  var newName = 'No Value';
  void getValue() async {
    var prefs = await SharedPreferences.getInstance();
    var getName = prefs.getString(KEYNAME);
    newName = getName ?? "No name";
    setState(() {});
  }

  NotificationServices notificationServices = NotificationServices();
  @override
  void initState() {
    getValue();
    super.initState();
    notificationServices.initializeNotification();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Stack(
        children: [
          ClipPath(
            clipper: Clipper(),
            child: Container(
              height: 200,
              // width: 200,
              color: Colors.amber,
            ),
          ),
          ClipPath(
            clipper: Clipper(),
            child: Container(
              height: 180,
              // width: 200,
              color: Colors.deepOrange,
            ),
          ),
        ],
      ),

      //  Consumer(
      //   builder: (context, ref, child) {
      //     final newVal = ref.watch(nameProvider);
      //     return Center(
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: <Widget>[
      //           TextFormField(
      //             controller: nameController,
      //             keyboardType: TextInputType.text,
      //             onChanged: (value) {},
      //             decoration: InputDecoration(
      //               border: OutlineInputBorder(
      //                   borderRadius: BorderRadius.circular(20)),
      //               hintText: "Name",
      //             ),
      //           ),
      //           // ElevatedButton(
      //           //     onPressed: () {
      //           //       // print("hello");
      //           //       notificationServices.sendNotification(
      //           //           "News", "Sridhar here");
      //           //     },
      //           //     child: const Text("Send")),
      //           // ElevatedButton(onPressed: () {}, child: const Text("Schedule")),
      //           ElevatedButton(
      //               onPressed: () async {
      //                 ref
      //                     .read(nameProvider.notifier)
      //                     .setName(nameController.text);
      //                 final prefs = await SharedPreferences.getInstance();
      //                 prefs.setString(KEYNAME, nameController.text);
      //               },
      //               child: const Text("Save")),
      //           Text(newName),
      //           // Text(
      //           //   '$_counter',
      //           //   style: Theme.of(context).textTheme.headlineMedium,
      //           // ),
      //         ],
      //       ),
      //     );
      //   },
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

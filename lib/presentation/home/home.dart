import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notification/core/services/notification_services.dart';
import 'package:notification/presentation/home/providers/provider.dart';
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
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Consumer(
        builder: (context, ref, child) {
          final newVal = ref.watch(nameProvider);
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // TextFormField(
                //   controller: nameController,
                //   keyboardType: TextInputType.text,
                //   onChanged: (value) {},
                //   decoration: InputDecoration(
                //     border: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(20)),
                //     hintText: "Name",
                //   ),
                // ),
                ElevatedButton(
                    onPressed: () {
                      // print("hello");
                      notificationServices.sendNotification(
                          "News", "Sridhar here");
                    },
                    child: const Text("Send")),
                // ElevatedButton(onPressed: () {}, child: const Text("Schedule")),
                // ElevatedButton(
                //     onPressed: () async {
                //       ref
                //           .read(nameProvider.notifier)
                //           .setName(nameController.text);
                //       final prefs = await SharedPreferences.getInstance();
                //       prefs.setString(KEYNAME, nameController.text);
                //     },
                //     child: const Text("Save")),
                // Text(newName),
                // Text(
                //   '$_counter',
                //   style: Theme.of(context).textTheme.headlineMedium,
                // ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

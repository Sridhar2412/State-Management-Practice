import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:structure/presentation/home/providers/product_notifier.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  ConsumerState<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(productNotifierProvider.notifier).getProduct();
    });
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
          final state = ref.watch(productNotifierProvider);

          return Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // const Text(
                //   'You have pushed the button this many times:',
                // ),
                // Text(
                //   '$_counter',
                //   style: Theme.of(context).textTheme.headlineMedium,
                // ),

                SizedBox(
                  height: 100,
                  child: ListView.builder(
                      itemCount: state.products.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Text(state.products[index].title);
                      }),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

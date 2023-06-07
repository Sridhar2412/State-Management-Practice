import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main.g.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

@riverpod
class Increment extends _$Increment {
  @override
  int build() {
    return 0;
  }

  Stream<int> getCounterStream() async* {
    int i = 0;
    while (true) {
      await Future.delayed(const Duration(milliseconds: 500));
      yield i++;
    }
  }

  void increment() {
    state = state + 1;
  }
}

// abstract class WebsocketClient {
//   Stream<int> getCounterStream();
// }

// class FakeWebsocketClient implements WebsocketClient {
//   @override
//   Stream<int> getCounterStream() async* {
//     int i = 0;
//     while (true) {
//       await Future.delayed(const Duration(milliseconds: 500));
//       yield i++;
//     }
//   }
// }
// final websocketClientProvider = Provider<WebsocketClient>(
//   (ref) {
//     return FakeWebsocketClient();
//   },
// );
// final counterProvider = StreamProvider<int>((ref) {
//   final wsClient = ref.watch(websocketClientProvider);
//   return wsClient.getCounterStream();
// });

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key});

  @override
  ConsumerState<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {
  @override
  void initState() {
    super.initState();
    // products = RestClient(Dio(BaseOptions(baseUrl: 'https://dummyjson.com/')))
    //     .getPosts();
  }

  bool tap = false;

  @override
  Widget build(BuildContext context) {
    final newName = TextEditingController();
    // final state = ref.watch(counterProvider).value;
    final state = ref.watch(incrementProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Trainings"),
        backgroundColor: Colors.red,
      ),
      // backgroundColor: Colors.blue,
      body: Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
          return SingleChildScrollView(
              child: Center(
                  child: Text(
            state.toString(),
            style: const TextStyle(fontSize: 40),
          )));

          //   Column(
          //     children: [
          //       // Center(
          //       //   child: ListView.builder(
          //       //     itemBuilder: (context, index) {
          //       //       return Padding(
          //       //         padding: const EdgeInsets.all(8.0),
          //       //         child: Container(
          //       //           color: Colors.white,
          //       //           child: Padding(
          //       //             padding: const EdgeInsets.all(8.0),
          //       //             child: Column(
          //       //               children: [
          //       //                 ListTile(
          //       //                   title: Text(incrementProvider.toString()),
          //       //                   tileColor: Colors.white,
          //       //                 ),
          //       //                 Row(
          //       //                   mainAxisAlignment:
          //       //                       MainAxisAlignment.spaceBetween,
          //       //                   children: [
          //       //                     ElevatedButton(
          //       //                         onPressed: () {
          //       //                           showDialog(
          //       //                               context: context,
          //       //                               builder: (BuildContext context) {
          //       //                                 return AlertDialog(
          //       //                                   title:
          //       //                                       const Text("Update Name"),
          //       //                                   content: Form(
          //       //                                     child: TextFormField(
          //       //                                         controller: newName,
          //       //                                         keyboardType:
          //       //                                             TextInputType.text,
          //       //                                         decoration:
          //       //                                             const InputDecoration(
          //       //                                                 hintText:
          //       //                                                     "Name"),
          //       //                                         onChanged: (value) {
          //       //                                           // ref
          //       //                                           //     .read(
          //       //                                           //         userStateProvider
          //       //                                           //             .notifier)
          //       //                                           //     .updateUser(
          //       //                                           //         index, value);
          //       //                                           //  ref.read(viewProvider.notifier).state=value;
          //       //                                         }),
          //       //                                   ),
          //       //                                   actions: [
          //       //                                     ElevatedButton(
          //       //                                         onPressed: () {
          //       //                                           ref
          //       //                                               .read(
          //       //                                                   userStateProvider
          //       //                                                       .notifier)
          //       //                                               .updateUser(index,
          //       //                                                   newName.text);
          //       //                                         },
          //       //                                         child: const Text(
          //       //                                             "Update"))
          //       //                                   ],
          //       //                                 );
          //       //                               });
          //       //                         },
          //       //                         child: const Text("Upadate")),
          //       //                     ElevatedButton(
          //       //                         onPressed: () {
          //       //                           ref
          //       //                               .read(userStateProvider.notifier)
          //       //                               .delete(index);
          //       //                         },
          //       //                         child: const Text("Delete"))
          //       //                   ],
          //       //                 )
          //       //               ],
          //       //             ),
          //       //           ),
          //       //         ),
          //       //       );
          //       //     },
          //       //     itemCount: 1,
          //       //     padding: const EdgeInsets.symmetric(vertical: 5),
          //       //     physics: const NeverScrollableScrollPhysics(),
          //       //     shrinkWrap: true,
          //       //   ),
          //       // ),
          //     ],
          //   ),
          // );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(incrementProvider.notifier).increment();
 
          // showDialog(
          //     context: context,
          //     builder: (BuildContext context) {
          //       return AlertDialog(
          //         title: const Text("Add Name"),
          //         // barrierDismissible: true, d
          //         content: Form(
          //           child: TextFormField(
          //               controller: newName,
          //               keyboardType: TextInputType.text,
          //               decoration: const InputDecoration(hintText: "Name"),
          //               onChanged: (value) {
          //                 // ref
          //                 //     .read(
          //                 //         userStateProvider
          //                 //             .notifier)
          //                 //     .updateUser(
          //                 //         index, value);
          //                 //  ref.read(viewProvider.notifier).state=value;
          //               }),
          //         ),
          //         actions: [
          //           ElevatedButton(
          //               onPressed: () {
          //                 ref
          //                     .read(userStateProvider.notifier)
          //                     .add(newName.text);

          //                 // ref.read(viewProvider.notifier).state=value;
          //               },
          //               child: const Text("Add"))
          //         ],
          //       );
          //     });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

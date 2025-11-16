import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logging_appenders/logging_appenders.dart';
import 'package:msgserve_client/msgserve_client.dart';

void main() {
  PrintAppender.setupLogging();
  final bloc = MsgServeBloc(
    opts: MsgServeOpts(
      endpointUrl: '',
      disableConfigFetch: true,
      initialConfig: MsgServeConfig(
        updatedAt: DateTime(2025, 1, 2),
        campaigns: [
          MsgServeCampaign(
            id: ApiUuid.secure(),
            key: 'example',
            textDialog: MsgServeTextDialog(
              title: 'Lorem ipsum',
              body: 'Lorem ipsum asdf asdf asdf asdf asdfa dsaf',
              actions: [
                MsgServeActionWithLabel(
                  key: 'openUrl',
                  url: 'https://austrianapps.com',
                  label: 'An der Umfrage teilnehmen',
                ),
              ],
            ),
            // interstitial: MsgServeInterstitialArtifact(
            //   key: 'interstitial',
            //   url: 'https://austrianapps.com',
            //   graphics: [
            //     MsgServeInterstitialGraphic(
            //       url:
            //           'https://service.austrianapps.com/app/oeamtc-fs-82df/msgserve/oeamtc_interstitial_bg.png',
            //       fill: MsgServeFill.cover,
            //     ),
            //   ],
            // ),
            filter: 'true',
            // trigger: 'event.name == "increment" && event.count > 2',
          ),
        ],
      ),
    ),
  );
  runApp(
    ProviderScope(
      overrides: [
        msgServeProvider.overrideWithValue(bloc),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final msgServe = ref.watch(msgServeProvider);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends HookConsumerWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = useState(0);
    final msgServeBloc = ref.watch(msgServeProvider);
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(title),
      ),
      body: MsgServeInterstitial(
        label: 'counter',
        child: Column(
          children: [
            MsgserveMaterialBanner(
              label: 'main',
            ),
            Expanded(
              child: Center(
                // Center is a layout widget. It takes a single child and positions it
                // in the middle of the parent.
                child: Column(
                  // Column is also a layout widget. It takes a list of children and
                  // arranges them vertically. By default, it sizes itself to fit its
                  // children horizontally, and tries to be as tall as its parent.
                  //
                  // Invoke "debug painting" (press "p" in the console, choose the
                  // "Toggle Debug Paint" action from the Flutter Inspector in Android
                  // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
                  // to see the wireframe for each widget.
                  //
                  // Column has various properties to control how it sizes itself and
                  // how it positions its children. Here we use mainAxisAlignment to
                  // center the children vertically; the main axis here is the vertical
                  // axis because Columns are vertical (the cross axis would be
                  // horizontal).
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'You have pushed the button this many times:',
                    ),
                    Text(
                      '${count.value}',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count.value += 1;
          msgServeBloc.appEvent({'name': 'increment', 'count': count.value});
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

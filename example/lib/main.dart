import 'package:express_widget_example/feature/animation_page.dart';
import 'package:express_widget_example/feature/button_page.dart';
import 'package:express_widget_example/feature/checkbox_page.dart';
import 'package:express_widget_example/feature/dialog_page.dart';
import 'package:express_widget_example/feature/express_shimmer_page.dart';
import 'package:express_widget_example/feature/input_field_page.dart';
import 'package:express_widget_example/feature/loading_page.dart';
import 'package:express_widget_example/feature/refresh_indicator_page.dart';
import 'package:express_widget_example/theme/dark_theme.dart';
import 'package:express_widget_example/theme/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.light,
      darkTheme: darkTheme,
      theme: lightTheme,
      home: const MyHomePage(title: 'Express Widget Testing'),
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
        title: Text(widget.title),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => const ButtonPage()));
                },
                title: const Text("Button"),
                trailing: const Icon(Icons.chevron_right_outlined),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => const RefreshIndicatorPage()));
                },
                title: const Text("Refresh indicator"),
                trailing: const Icon(Icons.chevron_right_outlined),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => const ShimmerPage()));
                },
                title: const Text("Skeleton"),
                trailing: const Icon(Icons.chevron_right_outlined),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => const LoadingPage()));
                },
                title: const Text("Progress circular"),
                trailing: const Icon(Icons.chevron_right_outlined),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => const InputFieldPage()));
                },
                title: const Text("Input field"),
                trailing: const Icon(Icons.chevron_right_outlined),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => const DialogPage()));
                },
                title: const Text("Dialog page"),
                trailing: const Icon(Icons.chevron_right_outlined),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => const IosActionMenuApp()));
                },
                title: const Text("Animation page"),
                trailing: const Icon(Icons.chevron_right_outlined),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => const CheckBoxPage()));
                },
                title: const Text("Check box page"),
                trailing: const Icon(Icons.chevron_right_outlined),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

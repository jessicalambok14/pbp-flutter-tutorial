import 'package:flutter/material.dart';
import 'package:pbp_flutter_tutorial/form.dart';

void main() {
	runApp(const MyApp());
}

class MyApp extends StatelessWidget {
	const MyApp({super.key});

	// This widget is the root of your application.
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: 'Flutter Demo',
			theme: ThemeData(
				primarySwatch: Colors.blue,
			),
			home: const MyHomePage(),
		);
	}
}

class MyHomePage extends StatefulWidget {
	const MyHomePage({super.key});

	final String title = 'Flutter Demo Home Page';

	@override
	State<MyHomePage> createState() => _MyHomePageState();
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
		// This method is rerun every time setState is called, for instance as done
		// by the _incrementCounter method above.
		//
		// The Flutter framework has been optimized to make rerunning build methods
		// fast, so that you can just rebuild anything that needs updating rather
		// than having to individually change instances of widgets.
		return Scaffold(
			appBar: AppBar(
				title: Text(widget.title),
			),
			// Menambahkan drawer menu
			drawer: Drawer(
				child: Column(
					children: [
						// Menambahkan clickable menu
						ListTile(
							title: const Text('Counter'),
							onTap: () {
								// Route menu ke halaman utama
								Navigator.pushReplacement(
									context,
									MaterialPageRoute(builder: (context) => const MyHomePage()),
								);
							},
						),
						ListTile(
							title: const Text('Form'),
							onTap: () {
								// Route menu ke halaman form
								Navigator.pushReplacement(
									context,
									MaterialPageRoute(builder: (context) => const MyFormPage()),
								);
							},
						),
					],
				),
			),
			
			body: Center(
				child: Column(
					mainAxisAlignment: MainAxisAlignment.center,
					children: <Widget>[
						const Text(
							'You have clicked the button this many times',
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
				child: const Icon(Icons.add),
			), // This trailing comma makes auto-formatting nicer for build methods.
		);
	}
}

import 'package:flutter/material.dart';

import 'screens/create_qr.dart';
import 'screens/scan_qr.dart';

class HomePage extends StatefulWidget
{
	const HomePage({Key? key, required this.title}) : super(key: key);

	final String title;

	@override
	State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
{
	@override 
	Widget build(BuildContext context)
	{
		return Scaffold(
			appBar: AppBar(title: Text(widget.title), centerTitle: true),
			body: Center(
				child: Column(
					mainAxisAlignment: MainAxisAlignment.center,
					crossAxisAlignment: CrossAxisAlignment.center,
					children: <Widget>[
						ElevatedButton(
							child: const Text('Create QR code'),
							onPressed: () 
							{ 
								Navigator.of(context).push(
									MaterialPageRoute(builder: (ctx) => const CreateQR())
								);
							},
						), 
						ElevatedButton(
							child: const Text('Scan QR code'),
							onPressed: () 
							{ 
								Navigator.of(context).push(
									MaterialPageRoute(builder: (ctx) => const ScanQR())
								);
							},
						), 
					],
				),
			),
		);
	}
}
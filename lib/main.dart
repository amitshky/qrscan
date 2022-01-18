import 'package:flutter/material.dart';

import 'home.dart';
import 'style.dart';

void main() => runApp(const App());

class App extends StatelessWidget
{
	const App({Key? key}) : super(key: key);

	@override
	Widget build(BuildContext context)
	{
		return MaterialApp(
			title: 'Flutter App',
			theme: ThemeData(primarySwatch: appColor),
			home: const HomePage(title: 'QR Code Scanner'),
		);
	}
}


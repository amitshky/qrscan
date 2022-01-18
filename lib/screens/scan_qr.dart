import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

import '../style.dart';

class ScanQR extends StatefulWidget 
{
	const ScanQR({Key? key}) : super(key: key);

	@override
	_ScanQRState createState() => _ScanQRState();
}

class _ScanQRState extends State<ScanQR> 
{
	String qrData = 'Not Scanned';

	@override
	Widget build(BuildContext context) 
	{
		//double height = MediaQuery.of(context).size.height;
		double width = MediaQuery.of(context).size.width;

		return Scaffold(
			appBar: AppBar(title: const Text('Scan QR Code')),
			body: Column(
				mainAxisAlignment: MainAxisAlignment.spaceEvenly,
				children: <Widget>[
					Text(qrData, style: const TextStyle(color: appColor, fontSize: 30)),
					ElevatedButton(
						child: const Text('Scan QR Code'),
						onPressed: scanQR, 
					),
					SizedBox(width: width),
				],
			),
		);
	}

	Future<void> scanQR() async
	{
		try
		{
			FlutterBarcodeScanner.scanBarcode(appColorHex, 'Cancel', true, ScanMode.QR)
				.then((value) => setState(() => qrData = value));
		}
		catch(e)
		{
			setState(() => qrData = 'Unable to scan the QR code.');
		}
	}
}
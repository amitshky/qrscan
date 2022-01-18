import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';

import '../style.dart';

class CreateQR extends StatefulWidget
{
	const CreateQR({Key? key}) : super(key: key);

	@override
	State<CreateQR> createState() => _CreateQRState();
}

class _CreateQRState extends State<CreateQR> 
{
	String qrData = 'Data';

	@override
	Widget build(BuildContext context)
	{
		double width = MediaQuery.of(context).size.width;

		return Scaffold(
			appBar: AppBar(title: const Text('Create QR Code')),
			body: Column(
				mainAxisAlignment: MainAxisAlignment.spaceEvenly,
				crossAxisAlignment: CrossAxisAlignment.center,
				children: <Widget>[
					BarcodeWidget(
						data: qrData, 
						color: Colors.black,
						height: 150,
						width:  150,
						barcode: Barcode.qrCode(),
					),
					SizedBox(
						width: width * 0.8,
						child: TextField(
							onChanged: (val) { setState(() => qrData = val); },
							decoration: const InputDecoration(
								hintText: 'Enter data',
								border: OutlineInputBorder(
									borderSide: BorderSide(color: appColor, width: 2),
								),
							),
						),
					),
					SizedBox(width: width),
				],
			)
		);
	}
}
import 'package:flutter/material.dart';
import 'package:demostore/widget/bigtext.dart';

class HomePage extends StatelessWidget {
	static String tag = 'home-page';

	@override
	Widget build(BuildContext context) {

		final picture = Hero(
			tag: 'hero',
			child: Padding(
				padding: EdgeInsets.all(16.0),
				child: CircleAvatar(
					radius: 72.0,
					backgroundColor: Colors.transparent,
					backgroundImage: AssetImage('assets/images/ufo.png'),
					),
				),
			);

		final welcome = Padding(
			padding: EdgeInsets.all(8.0),
			child: new BigText('Welcome User'),
			);

		final lorem = Padding(
			padding: EdgeInsets.all(8.0),
			child: Text(
				'Lorem Ipsum Dolor Sing Amet',
				style: TextStyle(fontSize: 16.0, color: Colors.white),
				),
			);

		final body = Container(
			width: MediaQuery.of(context).size.width,
			padding: EdgeInsets.all(30.0),
			decoration: BoxDecoration(
				gradient: LinearGradient(
					begin: Alignment.topCenter,
					end: Alignment.bottomCenter,
					colors: [Colors.lightBlueAccent, Colors.blue]
					),
				),
			child: Column(
					children: <Widget>[
						picture, welcome, lorem
					],
				),
			);

		return Scaffold(
				body: body,
			);

	}
}

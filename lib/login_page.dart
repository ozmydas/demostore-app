import 'package:flutter/material.dart';
import 'package:demostore/home_page.dart';

class LoginPage extends StatefulWidget {
	static String tag = 'login-page';

	@override
	_LoginPageState createState() => new  _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
	@override
	Widget build(BuildContext context) {
		
		final logo = Hero(
			tag: 'hero',
			child: CircleAvatar(
				backgroundColor: Colors.transparent,
				radius: 48.0,
				child: Image.asset('assets/images/shopbag.png'),
				),
			);

		final email = TextFormField(
			keyboardType: TextInputType.emailAddress,
			autofocus: false,
			initialValue: 'tes@gmail.com',
			decoration: InputDecoration(
				hintText: 'email',
				contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
				border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
				),
			);

		final password = TextFormField(
			autofocus: false,
			initialValue: 'some password',
			decoration: InputDecoration(
				hintText: 'password',
				contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
				border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
				),
			);

		final loginButton = Padding(
			padding: EdgeInsets.symmetric(vertical: 16.0),
			child: RaisedButton(
				textColor: Colors.white,
				color: Colors.lightBlueAccent,
				child: Text('Log In', style: TextStyle(color: Colors.white)),
				shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
				onPressed: () => Navigator.of(context).pushNamed(HomePage.tag),
				),
			);

		final forgotLabel = FlatButton(
			child: Text('Forgot Password?', style: TextStyle(color: Colors.black54)),
			onPressed: (){},
			);

		return Scaffold(
			backgroundColor: Colors.white,
			body: Center(
				child: ListView(
					shrinkWrap: true,
					padding: EdgeInsets.only(left: 30.0, right: 30.0),
					children: <Widget>[
					logo,
					SizedBox(height: 48.0),
					email,
					SizedBox(height: 8.0),
					password,
					SizedBox(height: 24.0),
					loginButton,
					forgotLabel
					]
					),
				),
			);

	}
}
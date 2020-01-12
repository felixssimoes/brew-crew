import 'package:brew_crew/screens/authenticate/register.dart';
import 'package:brew_crew/screens/authenticate/sign_in.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool _showSignIn = true;

  void _toggleView() {
    setState(() => _showSignIn = !_showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if (_showSignIn) {
      return SignIn(toggleView: _toggleView);
    }

    return Register(toggleView: _toggleView);
  }
}



import 'package:flutter/material.dart';
import 'package:github_working/xasanboy/view/pages/tasdiqalash_oyna.dart';

class PinCheckScreen extends StatefulWidget {
  const PinCheckScreen({super.key});

  @override
  _PinCheckScreenState createState() => _PinCheckScreenState();
}

class _PinCheckScreenState extends State<PinCheckScreen> {
  List<String> enteredPin = [];
  String message = "Let’s  setup your PIN";

  final String correctPin = "8888";

  void _onKeyTap(String value) {
    setState(() {
      if (enteredPin.length < 4) {
        enteredPin.add(value);
      }
    });
  }

  void _onBackspace() {
    setState(() {
      if (enteredPin.isNotEmpty) {
        enteredPin.removeLast();
      }
    });
  }

  void _onClear() {
    setState(() {
      enteredPin.clear();
    });
  }

  void _checkPin() {
    if (enteredPin.length == 4) {
      String pin = enteredPin.join();
      if (pin == correctPin) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SuccessScreen()),
        );
      } else {
        setState(() {
          message = "Ok. Re type your PIN again.";
          enteredPin.clear();
        });
      }
    }
  }

  Widget _buildPinIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(4, (index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: index < enteredPin.length ? Colors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.white, width: 2),
          ),
        );
      }),
    );
  }

  Widget _buildKeypadButton(String label, {VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap ?? () => _onKeyTap(label),
      child: Container(
        alignment: Alignment.center,
        child: Text(
          label,
          style: TextStyle(fontSize: 32, color: Colors.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (enteredPin.length == 4) _checkPin();
    });

    return Scaffold(
      backgroundColor: Color(0xFF8A42F0),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 40),
            Center(
              child: Text(
                message,
                style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 40),
            _buildPinIndicator(),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                mainAxisSpacing: 30,
                crossAxisSpacing: 30,
                children: [
                  for (var i = 1; i <= 9; i++) _buildKeypadButton('$i'),
                  GestureDetector(
                    onTap: _onClear,
                    child: Icon(Icons.clear, size: 36, color: Colors.white),
                  ),
                  _buildKeypadButton('0'),
                  GestureDetector(
                    onTap: _onBackspace,
                    child: Icon(Icons.backspace, size: 36, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
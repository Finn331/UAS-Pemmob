import 'package:flutter/material.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({Key? key}) : super(key: key);

  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  final _otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            controller: _otpController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Enter your OTP",
            ),
            obscureText: true,
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              _verifyOtp();
            },
            child: Text("Verifikasi"),
          ),
        ],
      ),
    );
  }

  void _verifyOtp() {
    if (_otpController.text == "1234") {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("OTP Berhasil Terverifikasi")),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Kode OTP Salah!")),
      );
    }
  }

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }
}

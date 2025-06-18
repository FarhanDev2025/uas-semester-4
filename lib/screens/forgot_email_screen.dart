import 'package:app_jualan/theme/theme.dart';
import 'package:app_jualan/widgets/custom_text_field.dart';
import 'package:app_jualan/widgets/gradient_button.dart';
import 'package:flutter/material.dart';

class ForgotEmailScreen extends StatefulWidget {
  const ForgotEmailScreen({super.key});

  @override
  State<ForgotEmailScreen> createState() => _ForgotEmailScreenState();
}

class _ForgotEmailScreenState extends State<ForgotEmailScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _recoveryStarted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back, color: AppTheme.textPrimary),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Forgot Email?",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              SizedBox(height: 8),

              Text(
                "Enter your  phone  number to recover your email address",
                style: TextStyle(color: AppTheme.textSecondary, fontSize: 16),
              ),
              SizedBox(height: 48),
              if (!_recoveryStarted)
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      CustomTextField(
                        label: "phone number",
                        prefixIcon: Icons.phone_outlined,
                        keyboardType: TextInputType.phone,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your phone number';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 24),
                      GradientButton(
                        text: "Recover Email",
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            setState(() {
                              _recoveryStarted = true;
                            });
                            // handle the email recovery logic
                          }
                        },
                      ),
                      SizedBox(height: 24),
                      Center(
                        child: TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text(
                            "Back to login",
                            style: TextStyle(
                              color: AppTheme.primaryColor,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              else
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: AppTheme.succes.withOpacity(0.1),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.check_circle_outline,
                          size: 40,
                          color: AppTheme.succes,
                        ),
                      ),
                      SizedBox(height: 24),
                      Text(
                        "Recovery SMS sent",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 24),
                      Text(
                        "We have sent your email addres to your phone number. please check your Messages",
                        style: TextStyle(
                          color: AppTheme.textSecondary,
                          fontSize: 16,
                          height: 1.5,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 32),
                      GradientButton(
                        text: "Open Messaging App",
                        onPressed: () {
                          // optional if you want to open your messages app from here,
                          // you can remove this this, if you don't needed,
                        },
                      ),
                      SizedBox(height: 16),
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text(
                          "Back to login",
                          style: TextStyle(
                            color: AppTheme.primaryColor,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

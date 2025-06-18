import 'package:app_jualan/theme/theme.dart';
import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final List<Color> gradient;
  final double? width;
  final double height;
  final bool isloading;
  const GradientButton({super.key, 
    required this.text,
    required this.onPressed,
    this.gradient = AppTheme.primaryGradient,
    this.width,
    this.height = 56,
    this.isloading = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ??  double.infinity,
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradient,
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: gradient.first.withOpacity(0.3),
            blurRadius: 20,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: ElevatedButton(onPressed: isloading ? null : onPressed, 
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        padding: EdgeInsets.zero,
      ),
      child: Center(
        child: isloading ? SizedBox(
          height: 24,
          width: 24,
          child: CircularProgressIndicator(
            color: Colors.white,
            strokeWidth: 2,
          ),
        ) : Text(text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.5,
        ),)
      )),
    );
  }
}

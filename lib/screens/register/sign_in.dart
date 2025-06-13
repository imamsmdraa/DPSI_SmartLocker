import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isWide = size.width > 600;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF6DD6AE), Color(0xFF16423C)],
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildHeader(),
                const SizedBox(height: 24),
                isWide ? _buildWideIntro() : _buildMobileIntro(),
                const SizedBox(height: 24),
                _buildLoginForm(isWide),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        Image.asset('assets/images/logo.png', height: 32),
        const SizedBox(width: 8),
        Text(
          'Smart Locker',
          style: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildWideIntro() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 300,
          child: _introText(),
        ),
        const SizedBox(width: 24),
        _introImage(),
      ],
    );
  }

  Widget _buildMobileIntro() {
    return Column(
      children: [
        _introImage(),
        const SizedBox(height: 16),
        _introText(),
      ],
    );
  }

  Widget _introText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Sign In',
          style: GoogleFonts.inter(
            fontSize: 36,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          'to your Account',
          style: GoogleFonts.inter(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'Enter your email and password to log in',
          style: GoogleFonts.inter(
            fontSize: 11,
            fontWeight: FontWeight.w500,
            height: 1.4,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _introImage() {
    return Image.asset(
      'assets/images/verify.png',
      width: 235,
      height: 391,
    );
  }

  Widget _buildLoginForm(bool isWide) {
    return Container(
      width: isWide ? 1000 : double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        children: [
          _authTabButtons(),
          const SizedBox(height: 16),
          _inputFormFields(),
          const SizedBox(height: 16),
          _loginButton(),
          const SizedBox(height: 16),
          _orDivider(),
          const SizedBox(height: 16),
          _socialButton(
            icon: 'assets/images/google.png',
            label: 'Continue with Google',
          ),
          const SizedBox(height: 12),
          _socialButton(
            icon: 'assets/images/facebook.png',
            label: 'Continue with Facebook',
          ),
          const SizedBox(height: 16),
          _signUpText(),
        ],
      ),
    );
  }

  Widget _authTabButtons() {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xFF6A9C89), Color(0xFF6A9C89)],
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            alignment: Alignment.center,
            child: Text(
              'Log in',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              color: const Color(0x4F51544F),
              borderRadius: BorderRadius.circular(12),
            ),
            alignment: Alignment.center,
            child: Text(
              'Register',
              style: GoogleFonts.inter(fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ],
    );
  }

  Widget _inputFormFields() {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            labelText: 'Email',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        const SizedBox(height: 16),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Password',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            suffix: Text(
              'Forgot Password ?',
              style: GoogleFonts.inter(fontSize: 12),
            ),
          ),
        ),
      ],
    );
  }

  Widget _loginButton() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF6A9C89), Color(0xFF16423C)],
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      alignment: Alignment.center,
      child: Text(
        'Log in',
        style: GoogleFonts.inter(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _orDivider() {
    return Row(
      children: const [
        Expanded(child: Divider()),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Text('Or'),
        ),
        Expanded(child: Divider()),
      ],
    );
  }

  Widget _signUpText() {
    return Text.rich(
      TextSpan(
        text: "Don't have an account? ",
        style: GoogleFonts.inter(),
        children: [
          TextSpan(
            text: 'Sign Up',
            style: GoogleFonts.inter(
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }

  Widget _socialButton({required String icon, required String label}) {
    return Container(
      height: 46,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 0.77, color: Colors.grey.shade300),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 18.37, vertical: 7.65),
      child: Row(
        children: [
          Image.asset(icon, height: 24),
          const SizedBox(width: 8),
          Text(
            label,
            style: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

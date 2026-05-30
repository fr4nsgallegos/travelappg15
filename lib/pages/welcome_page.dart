import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:travellappg15/widgets/welcome_widget.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: GFCarousel(
          height: size.height,
          hasPagination: true,
          enlargeMainPage: true,
          items: [WelcomeWidget(), WelcomeWidget(), WelcomeWidget()],
        ),
      ),
    );
  }
}

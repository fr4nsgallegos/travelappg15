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
          items: [
            WelcomeWidget(
              title: "Viaja",
              description:
                  "Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.",
              bgColor: Colors.red,
              asset: "avion",
              size: size,
            ),
            WelcomeWidget(
              title: "Imprime tus tickets",
              description:
                  "On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their d",
              asset: "print",
              bgColor: Colors.orange,
              size: size,
            ),
            WelcomeWidget(
              title: "Agenda tus viajes",
              description:
                  "he standard chunk of Lorem Ipsum used since 1966 is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.",
              asset: "agregar",
              bgColor: Colors.cyan,
              size: size,
            ),
          ],
        ),
      ),
    );
  }
}

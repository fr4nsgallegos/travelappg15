import 'package:flutter/material.dart';

class CustomExpansionTile extends StatefulWidget {
  final String title;
  final List<Widget> children;
  CustomExpansionTile({super.key, required this.title, required this.children});

  @override
  State<CustomExpansionTile> createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile>
    with SingleTickerProviderStateMixin {
  // SingleTickerProviderStateMixin -> permite usar animationController

  // Animaciones y controladores
  late final AnimationController _controller;
  late final Animation<double> _fadeAnimation;
  late final Animation<Offset> _slideAnimation;

  bool _expanded = false; // ayuda a saber si esta o no expandido

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // AnimationController va a controlar el valor de la animación
    // vsync = this -> ajusta el singleticketprovider para optimizar frames
    _controller = AnimationController(
      vsync: this,
      duration: Duration(microseconds: 400),
    );

    // CurveAnimation aplica una curva sobre el controlador, de modo que se le de una animación en concreto al mostrar la información
    // Hace que elc onteido apareza o desapareca de manera suave
    _fadeAnimation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);

    // Con slideAnimation animamos la posición con un Tween
    // Se aplica 0, para dar mas soltura al movimiento
    // Hace que el contenido se deslice ligeramente hacia arriba
    _slideAnimation = Tween<Offset>(
      begin: Offset(0, -0.05),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  _handleTap() {
    _expanded = !_expanded;
    setState(() {});
    // Si el expanded es true -> reproducimos la animación hacia adelanta.
    // Caso contrraio hacia atrás

    if (_expanded) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // header
        ListTile(
          title: Text(widget.title),
          trailing: AnimatedRotation(
            turns: _expanded ? 0.5 : 0.0,
            duration: Duration(microseconds: 500),
            child: Icon(Icons.expand_more),
          ),
          onTap: _handleTap,
        ),

        // Contenido animado
        ClipRRect(
          child: AnimatedBuilder(
            animation: _controller,
            child: FadeTransition(
              opacity: _fadeAnimation,
              child: SlideTransition(
                position: _slideAnimation,
                child: Column(children: widget.children),
              ),
            ),
            builder: (BuildContext context, Widget? child) {
              return Align(heightFactor: _controller.value, child: child);
            },
          ),
        ),
      ],
    );
  }
}

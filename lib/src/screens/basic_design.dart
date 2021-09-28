import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            //Imagen de cabecera
            Image(image: AssetImage('assets/images/michiFeliz.jpg')),
            //Contenido de la imagen
            Title(),
            //Botones de accion
            BottomSection(),
            //Descripción
            Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book"))
          ],
        ),
      ),
    );
  }
}

class BottomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomBottom(
          icon: Icons.monetization_on,
          text: "Donar",
        ),
        CustomBottom(
          icon: Icons.home,
          text: "Adoptar",
        ),
        CustomBottom(
          icon: Icons.share,
          text: "Compartir",
        )
      ],
    );
  }
}

class CustomBottom extends StatelessWidget {
  const CustomBottom({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          this.icon,
          color: Colors.orangeAccent,
        ),
        Text(
          this.text,
          style: TextStyle(color: Colors.orange),
        )
      ],
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Este es el michi feliz",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Michi común",
                style: TextStyle(color: Colors.black26),
              ),
            ],
          ),
          Expanded(child: Container()),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text("41"),
        ],
      ),
    );
  }
}

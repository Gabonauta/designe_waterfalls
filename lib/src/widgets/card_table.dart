import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _SigleCard(
            color: Colors.blue,
            icon: Icons.airplanemode_active,
            text: 'Aviones',
          ),
          _SigleCard(
            color: Colors.red,
            icon: Icons.wallet_giftcard,
            text: 'Mayores',
          ),
        ]),
        TableRow(children: [
          _SigleCard(
            color: Colors.brown,
            icon: Icons.pin_drop,
            text: 'Menores',
          ),
          _SigleCard(
            color: Colors.orange,
            icon: Icons.airplanemode_off,
            text: 'Partes',
          ),
        ]),
        TableRow(children: [
          _SigleCard(
            color: Colors.green,
            icon: Icons.radio,
            text: 'Radares',
          ),
          _SigleCard(
            color: Colors.purple,
            icon: Icons.car_rental,
            text: 'Artillería',
          ),
        ])
      ],
    );
  }
}

class _SigleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SigleCard(
      {Key? key, required this.icon, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _BackgroundCard(
        widget: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: this.color,
          child: Icon(
            this.icon,
            size: 35,
          ),
          radius: 25,
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          this.text,
          style: TextStyle(color: this.color, fontSize: 18),
        )
      ],
    ));
  }
}

class _BackgroundCard extends StatelessWidget {
  final Widget widget;

  const _BackgroundCard({Key? key, required this.widget}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: this.widget,
          ),
        ),
      ),
    );
  }
}

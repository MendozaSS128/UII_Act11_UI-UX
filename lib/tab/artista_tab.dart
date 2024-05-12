import 'package:flutter/material.dart';

import '../util/artista_title.dart';

class ArtistaTap extends StatelessWidget {
  List artistasLista = [
    ["NewJeans", "#476", Colors.blue, "assets/image/artista11.jpg"],
    ["Sabrina Carpenter", "#41", Colors.red, "assets/image/artista2.jpg"],
    ["The Weeknd", "#2", Colors.purple, "assets/image/artista3.jpg"],
    ["Bad Bunny", "#19", Colors.brown, "assets/image/artista4.jpg"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: artistasLista.length,
        padding: EdgeInsets.all(12),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1.5,
        ),
        itemBuilder: (context, index) {
          return ArtistaTile(
            artistaNombre: artistasLista[index][0],
            artistaAlbums: artistasLista[index][1],
            artistaColor: artistasLista[index][2],
            imageName: artistasLista[index][3],
          );
        });
  }
}
